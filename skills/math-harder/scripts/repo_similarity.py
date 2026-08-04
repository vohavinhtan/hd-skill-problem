#!/usr/bin/env python3
"""Rank frontier problems by lexical and phrase similarity to a candidate draft."""

from __future__ import annotations

import argparse
import math
import re
from collections import Counter
from pathlib import Path


def statement(path: Path) -> str:
    text = path.read_text(encoding="utf-8", errors="ignore").lower()
    return text.split("## domain classification", 1)[0]


def features(text: str) -> Counter[str]:
    words = re.findall(r"[a-z]{2,}|\\[a-z]+|\d+", text)
    out: Counter[str] = Counter(words)
    out.update(f"{left}::{right}" for left, right in zip(words, words[1:]))
    return out


def weighted(
    counts: Counter[str], document_frequency: Counter[str], n_docs: int
) -> dict[str, float]:
    return {
        token: count * (1.0 + math.log((n_docs + 1) / (document_frequency[token] + 1)))
        for token, count in counts.items()
    }


def cosine(left: dict[str, float], right: dict[str, float]) -> float:
    dot = sum(value * right.get(token, 0.0) for token, value in left.items())
    norm_left = math.sqrt(sum(value * value for value in left.values()))
    norm_right = math.sqrt(sum(value * value for value in right.values()))
    return dot / (norm_left * norm_right) if norm_left and norm_right else 0.0


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--candidate", required=True, type=Path)
    parser.add_argument("--exclude", type=Path)
    parser.add_argument("--root", type=Path, default=Path("workspace/frontier-problem"))
    parser.add_argument("--top", type=int, default=12)
    args = parser.parse_args()

    candidate = args.candidate.resolve()
    excluded = args.exclude.resolve() if args.exclude else None
    corpus = [
        path
        for path in args.root.glob("problem*/problem.md")
        if path.resolve() != excluded
    ]
    counts = {path: features(statement(path)) for path in corpus}
    counts[candidate] = features(statement(candidate))

    document_frequency: Counter[str] = Counter()
    for tokens in counts.values():
        document_frequency.update(tokens.keys())

    vectors = {
        path: weighted(tokens, document_frequency, len(counts))
        for path, tokens in counts.items()
    }
    ranked = sorted(
        ((cosine(vectors[candidate], vectors[path]), path) for path in corpus),
        reverse=True,
    )

    print("score\tproblem")
    for score, path in ranked[: args.top]:
        print(f"{score:.4f}\t{path.parent.name}")
    print("\nTriage only: open the actual top matches and compare semantic skeletons.")


if __name__ == "__main__":
    main()
