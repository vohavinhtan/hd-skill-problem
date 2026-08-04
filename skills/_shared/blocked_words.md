# Shared Blocked Words for math-rewrite

Use this file together with `skills/math-rewrite/SKILL.md`. These words are blocked only in prose output. They do not apply inside `$...$` or `$$...$$` math blocks, file paths, variable names, code identifiers, quoted source text, or fixed template labels.

## Tier 1 - Auto-replace in English

Replace these whenever they appear in rewrite output:

| Blocked word | Preferred replacements |
|---|---|
| robust | solid, reliable |
| comprehensive | thorough, full |
| leverage | use, rely on |
| utilize | use |
| enhance | improve, add |
| optimal | best, efficient |
| crucial | important, key |
| essential | needed, required |
| streamline | simplify |
| facilitate | allow, enable |
| seamless | smooth |
| innovative | new, novel |
| fundamental | core, basic |
| delve | look into, examine |
| harness | use, apply |
| pivotal | important, key |
| significant | meaningful, large, important |
| notable | worth noting, clear |
| underscore | show, point to |
| demonstrate | show |
| realm | area, field |
| landscape | area, setting |
| tailored | fit, adjusted |
| intricate | detailed, involved |
| meticulous | careful |

## Tier 1 - Auto-replace in Vietnamese

Replace these in Vietnamese prose unless the phrase is part of a fixed title or taxonomy label:

| Từ bị chặn | Cách thay |
|---|---|
| mạnh mẽ | chắc, ổn, đáng tin |
| toàn diện | đầy đủ, kỹ |
| tận dụng | dùng |
| sử dụng đòn bẩy | dùng |
| nâng cao | cải thiện, tăng |
| tối ưu | tốt nhất, hiệu quả |
| quan trọng | chính, đáng chú ý |
| thiết yếu | cần, bắt buộc |
| hợp lý hóa | đơn giản hóa |
| tạo điều kiện | cho phép, giúp |
| liền mạch | mượt, trơn tru |
| đổi mới | mới |
| cốt lõi | chính, cơ bản |
| đào sâu | xem xét, phân tích |

## Tier 2 - Flag and rewrite if the sentence sounds templated

These are not always wrong, but they often mark AI-ish prose. Rewrite the sentence if one appears in a generic or filler way:

- overall
- in summary
- in conclusion
- it is important to
- it is worth noting
- additionally
- furthermore
- moreover
- consequently
- thus
- hence
- specifically
- arguably
- potentially
- somewhat
- slightly
- clearly
- obviously
- notable
- significant

## Scan Rule

Run the blocked-word scan twice:

1. After the first rewrite, replace Tier 1 terms and rewrite Tier 2 filler.
2. After the cleanup pass, scan again to catch terms introduced by the rewrite itself.
