#!/usr/bin/env python3
"""Versioned shelf for deferred frontier math problems."""

from __future__ import annotations

import argparse
import hashlib
import json
import re
import shutil
import sys
from datetime import datetime, timezone
from pathlib import Path


REPO_ROOT = Path(__file__).resolve().parents[3]
SHELF_ROOT = REPO_ROOT / "workspace" / "revise-shelf"
INDEX_FILE = SHELF_ROOT / "index.json"
TAXONOMY_FILE = REPO_ROOT / "skills" / "_shared" / "taxonomy_slots.md"
REQUIRED_FILES = ("problem.md", "solution.md")


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def table_value(text: str, field: str) -> str:
    match = re.search(
        rf"^\|\s*(?:\*\*)?{re.escape(field)}(?:\*\*)?\s*\|\s*(.*?)\s*\|$",
        text,
        re.MULTILINE,
    )
    return match.group(1).strip() if match else ""


def problem_number(folder_name: str) -> str:
    match = re.match(r"problem(\d+)-", folder_name)
    return match.group(1) if match else ""


def taxonomy_snapshot() -> str:
    if not TAXONOMY_FILE.exists():
        return ""
    text = TAXONOMY_FILE.read_text(encoding="utf-8")
    match = re.search(r"Last updated from user-provided portal snapshot:\s*([0-9-]+)", text)
    return match.group(1) if match else ""


def slot_record(domain: str, subdomain: str) -> dict[str, str]:
    result = {"remaining_slots": "", "slot_status": ""}
    if not TAXONOMY_FILE.exists():
        return result
    for line in TAXONOMY_FILE.read_text(encoding="utf-8").splitlines():
        if not line.startswith("|"):
            continue
        cells = [cell.strip() for cell in line.strip().strip("|").split("|")]
        if len(cells) >= 4 and cells[0] == domain and cells[1] == subdomain:
            result["remaining_slots"] = cells[2]
            result["slot_status"] = cells[3]
            break
    return result


def resolve_source(raw: str) -> Path:
    source = Path(raw).expanduser().resolve()
    if source.is_file():
        source = source.parent
    if not source.is_dir():
        raise ValueError(f"Source folder does not exist: {source}")
    missing = [name for name in REQUIRED_FILES if not (source / name).is_file()]
    if missing:
        raise ValueError(f"Source is missing: {', '.join(missing)}")
    return source


def load_manifests() -> list[dict]:
    if not SHELF_ROOT.exists():
        return []
    manifests = []
    for path in sorted(SHELF_ROOT.glob("*/manifest.json")):
        try:
            manifests.append(json.loads(path.read_text(encoding="utf-8")))
        except (OSError, json.JSONDecodeError) as exc:
            raise ValueError(f"Invalid manifest {path}: {exc}") from exc
    return manifests


def rebuild_index() -> None:
    SHELF_ROOT.mkdir(parents=True, exist_ok=True)
    records = sorted(load_manifests(), key=lambda item: item["stored_at_utc"], reverse=True)
    payload = {"schema_version": 1, "snapshots": records}
    temporary = INDEX_FILE.with_suffix(".json.tmp")
    temporary.write_text(json.dumps(payload, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    temporary.replace(INDEX_FILE)


def unique_shelf_id(folder_name: str, timestamp: str) -> str:
    stem = f"{folder_name}--{timestamp}"
    candidate = stem
    suffix = 2
    while (SHELF_ROOT / candidate).exists():
        candidate = f"{stem}-{suffix}"
        suffix += 1
    return candidate


def park(args: argparse.Namespace) -> int:
    source = resolve_source(args.source)
    problem_text = (source / "problem.md").read_text(encoding="utf-8")
    domain = table_value(problem_text, "Domain")
    subdomain = table_value(problem_text, "Sub-domain")
    problem_type = table_value(problem_text, "Problem Type")
    answer_type = table_value(problem_text, "Answer Type")
    now = datetime.now(timezone.utc)
    timestamp = now.strftime("%Y%m%dT%H%M%SZ")
    shelf_id = unique_shelf_id(source.name, timestamp)
    destination = SHELF_ROOT / shelf_id
    temporary = SHELF_ROOT / f".{shelf_id}.tmp"
    SHELF_ROOT.mkdir(parents=True, exist_ok=True)
    temporary.mkdir()
    try:
        for name in REQUIRED_FILES:
            shutil.copy2(source / name, temporary / name)
        slot = slot_record(domain, subdomain)
        manifest = {
            "schema_version": 1,
            "id": shelf_id,
            "stored_at_utc": now.isoformat().replace("+00:00", "Z"),
            "source_folder": str(source.relative_to(REPO_ROOT))
            if source.is_relative_to(REPO_ROOT)
            else str(source),
            "folder_name": source.name,
            "problem_number": problem_number(source.name),
            "domain": domain,
            "subdomain": subdomain,
            "problem_type": problem_type,
            "answer_type": answer_type,
            "taxonomy_snapshot": taxonomy_snapshot(),
            "remaining_slots": slot["remaining_slots"],
            "slot_status": slot["slot_status"],
            "reason": args.reason,
            "sha256": {name: sha256(temporary / name) for name in REQUIRED_FILES},
        }
        (temporary / "manifest.json").write_text(
            json.dumps(manifest, indent=2, ensure_ascii=False) + "\n",
            encoding="utf-8",
        )
        temporary.replace(destination)
    except Exception:
        shutil.rmtree(temporary, ignore_errors=True)
        raise
    rebuild_index()
    print(json.dumps(manifest, indent=2, ensure_ascii=False))
    return 0


def filtered_manifests(taxonomy: str) -> list[dict]:
    records = load_manifests()
    if taxonomy:
        needle = taxonomy.casefold()
        records = [
            item
            for item in records
            if needle in f"{item.get('domain', '')} / {item.get('subdomain', '')}".casefold()
        ]
    return sorted(records, key=lambda item: item["stored_at_utc"], reverse=True)


def list_snapshots(args: argparse.Namespace) -> int:
    records = filtered_manifests(args.taxonomy)
    if not records:
        print("No shelved snapshots found.")
        return 0
    for item in records:
        print(
            f"{item['id']}\t{item.get('domain', '')} / {item.get('subdomain', '')}"
            f"\t{item.get('slot_status', '')}:{item.get('remaining_slots', '')}"
            f"\t{item.get('reason', '')}"
        )
    return 0


def manifest_for(shelf_id: str) -> tuple[Path, dict]:
    folder = (SHELF_ROOT / shelf_id).resolve()
    if folder.parent != SHELF_ROOT.resolve() or not folder.is_dir():
        raise ValueError(f"Unknown shelf ID: {shelf_id}")
    manifest_path = folder / "manifest.json"
    if not manifest_path.is_file():
        raise ValueError(f"Missing manifest for shelf ID: {shelf_id}")
    return folder, json.loads(manifest_path.read_text(encoding="utf-8"))


def show(args: argparse.Namespace) -> int:
    _, manifest = manifest_for(args.shelf_id)
    print(json.dumps(manifest, indent=2, ensure_ascii=False))
    return 0


def verify_snapshot(folder: Path, manifest: dict) -> None:
    for name in REQUIRED_FILES:
        path = folder / name
        if not path.is_file():
            raise ValueError(f"Snapshot is missing {name}")
        expected = manifest.get("sha256", {}).get(name)
        actual = sha256(path)
        if not expected or actual != expected:
            raise ValueError(f"Checksum mismatch for {name}")


def restore(args: argparse.Namespace) -> int:
    folder, manifest = manifest_for(args.shelf_id)
    verify_snapshot(folder, manifest)
    target = Path(args.target).expanduser().resolve()
    if target.exists() and any(target.iterdir()) and not args.force:
        raise ValueError(f"Target is nonempty; refusing to overwrite: {target}")
    target.mkdir(parents=True, exist_ok=True)
    for name in REQUIRED_FILES:
        shutil.copy2(folder / name, target / name)
    print(f"Restored {args.shelf_id} to {target}")
    return 0


def parser() -> argparse.ArgumentParser:
    root = argparse.ArgumentParser(description=__doc__)
    commands = root.add_subparsers(dest="command", required=True)

    park_parser = commands.add_parser("park", help="Copy an active problem to the shelf")
    park_parser.add_argument("source")
    park_parser.add_argument("--reason", default="deferred for a later revise task")
    park_parser.set_defaults(handler=park)

    list_parser = commands.add_parser("list", help="List shelved snapshots")
    list_parser.add_argument("--taxonomy", default="")
    list_parser.set_defaults(handler=list_snapshots)

    show_parser = commands.add_parser("show", help="Show one snapshot manifest")
    show_parser.add_argument("shelf_id")
    show_parser.set_defaults(handler=show)

    restore_parser = commands.add_parser("restore", help="Restore a snapshot")
    restore_parser.add_argument("shelf_id")
    restore_parser.add_argument("--target", required=True)
    restore_parser.add_argument("--force", action="store_true")
    restore_parser.set_defaults(handler=restore)
    return root


def main() -> int:
    args = parser().parse_args()
    try:
        return args.handler(args)
    except (OSError, ValueError, json.JSONDecodeError) as exc:
        print(f"error: {exc}", file=sys.stderr)
        return 2


if __name__ == "__main__":
    raise SystemExit(main())
