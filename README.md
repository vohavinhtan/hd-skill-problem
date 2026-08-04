# Rotura_Skill

Bộ kỹ năng xử lý bài toán toán học gồm 11 kỹ năng, bao gồm tạo đề bài, giải toán, tăng độ khó, kiểm tra chất lượng, chuẩn hóa đề bài, đánh giá phản hồi, định dạng lời giải, và viết lại văn bản theo phong cách con người. Thư mục `skills/` là source of truth duy nhất; mọi provider phải đồng bộ từ đây.

---

> **Disclaimer**: Đây là trải nghiệm cá nhân của người viết trong quá trình sử dụng và xây dựng các kỹ năng này. Nội dung có thể đúng hoặc chưa chính xác hoàn toàn. Nếu bạn có góp ý, cải tiến, hoặc phát hiện vấn đề, tạo Pull Request. Mọi đóng góp đều được hoan nghênh.

---

## Tổng quan

Repo này cung cấp các prompt (system instructions) cho 11 kỹ năng:

| # | Tên kỹ năng | Slash command | Mô tả |
|---|---|---|---|
| 1 | **Math Clone** | `/math-clone` | Tạo đề bài toán mới theo phong cách Project Rotura |
| 2 | **Math Solve** | `/math-solve` | Giải toán có vòng lặp kiểm tra bắt buộc và phát hiện black-box |
| 3 | **Math Harder** | `/math-harder` | Tăng độ khó đề bài khi model giải quá dễ |
| 4 | **Math Change Answer Type** | `/math-change-answer-type` | Đổi Answer Type của đề bài sang dạng bonus/mở |
| 5 | **Math Change Problem Type** | `/math-change-problem-type` | Thiết kế lại đề bài sang Domain/Problem Type có capacity tốt hơn |
| 6 | **Math Check** | `/math-check` | Audit toàn diện đề bài và lời giải theo tiêu chí chất lượng |
| 7 | **Normalize Problem** | `/normalize-problem` | Chuẩn hóa đề bài LaTeX và phân loại lĩnh vực |
| 8 | **Evaluate Responses** | `/evaluate-responses` | Đánh giá phản hồi của mô hình với đáp án đúng |
| 9 | **Format Solution** | `/format-solution` | Định dạng lời giải theo mẫu nộp bài |
| 10 | **Normalize All** | `/normalize-all` | Chạy normalize-problem + format-solution + một lượt math-rewrite tập trung |
| 11 | **Math Rewrite** | `/math-rewrite` | Viết lại văn bản để tránh bị nhận diện là AI |

---

## Cấu trúc thư mục

```
Rotura_Skill/
├── .claude/
│   └── commands/              # Generated symlinks từ skills/*/SKILL.md
│       ├── math-clone.md
│       ├── math-solve.md
│       ├── math-harder.md
│       ├── math-change-answer-type.md
│       ├── math-change-problem-type.md
│       ├── math-check.md
│       ├── normalize-problem.md
│       ├── normalize-all.md
│       ├── evaluate-responses.md
│       ├── format-solution.md
│       └── math-rewrite.md
├── skills/                    # Source of truth duy nhất cho mọi provider
│   ├── _shared/
│   │   ├── blocked_words.md
│   │   ├── style_guide.md
│   │   ├── taxonomy_slots.md       # Source of truth cho taxonomy/capacity còn lại
│   │   └── frontier_workspace.md   # Source of truth cho workspace/frontier-problem
│   ├── math-clone/SKILL.md
│   ├── math-solve/SKILL.md
│   ├── math-harder/SKILL.md
│   ├── math-change-answer-type/SKILL.md
│   ├── math-change-problem-type/SKILL.md
│   ├── math-check/SKILL.md
│   ├── normalize-problem/SKILL.md
│   ├── normalize-all/SKILL.md
│   ├── evaluate-responses/SKILL.md
│   ├── format-solution/SKILL.md
│   └── math-rewrite/SKILL.md
├── workspace/
│   └── frontier-problem/
│       └── problem01-taxonomy-slug/
│           ├── problem.md         # Đề active do math-clone/harder/change ghi
│           └── solution.md        # Lời giải active do math-solve ghi
├── scripts/
│   └── sync-provider-skills.sh    # Đồng bộ mọi provider từ skills/
└── rotura-problem-example/        # Ví dụ tham khảo từ Project Rotura
```

## Đồng bộ provider

Sau khi thêm hoặc sửa bất kỳ `skills/*/SKILL.md` nào, chạy:

```bash
./scripts/sync-provider-skills.sh
```

Script này sẽ:

- rebuild `.claude/commands/` thành symlink về `skills/*/SKILL.md`
- rebuild `.codex/skills/<tên>` và `~/.codex/skills/<tên>` thành symlink trỏ về cả thư mục `skills/<tên>/` — **đây mới là cơ chế Codex CLI thật sự đọc** (đã kiểm chứng với codex-cli 0.142.5: string `.codex/prompts` không hề tồn tại trong binary Codex, còn `$CODEX_HOME/skills/<skill-name>/SKILL.md` là đúng như skill `skill-installer` có sẵn của Codex mô tả)
- vẫn rebuild thêm `.codex/prompts/` (symlink) và `~/.codex/prompts/` (copy) để tương thích ngược với bản Codex cũ hơn hoặc tool khác — nhưng đừng chỉ dựa vào cái này, Codex bản hiện tại không đọc nó
- **Codex không tự động nạp lại `$CODEX_HOME/skills`** — sau khi chạy script, phải khởi động lại Codex (phiên mới) thì skill mới/sửa mới xuất hiện

Không chỉnh tay các file dưới `.claude/commands/`, `.codex/prompts/`, `.codex/skills/`, `~/.codex/prompts/`, hoặc `~/.codex/skills/`. Chỉ sửa trong `skills/`, chạy lại script, rồi khởi động lại Codex.

---

## Quy trình làm việc (Workflow)

Các kỹ năng được thiết kế để phối hợp với nhau theo thứ tự sau:

```
math-clone
    ↓
math-harder            [tùy chọn, nếu model giải quá dễ]
math-change-answer-type   [tùy chọn, đổi dạng đáp án]
math-change-problem-type  [tùy chọn, đổi domain/problem type]
    ↓
math-solve
    ↓
math-check             [tùy chọn, audit chất lượng trước khi nộp]
    ↓
normalize-all          [hoặc normalize-problem + format-solution riêng]
    ↓
evaluate-responses     [tùy chọn, nếu cần đánh giá model responses]
    ↓
math-rewrite           (chạy dual-pass audit)
```

**NOTE**: Đối với bài toán có sẵn đáp án, chỉ cần chạy từ skill `normalize-problem` (hoặc `normalize-all`).

### Thứ tự triển khai

1. **math-clone**: Tạo đề bài mới. Kỹ năng đọc taxonomy/capacity hiện tại, audit các folder problem hiện có, rồi ghi vào `workspace/frontier-problem/problemNN-taxonomy-slug/problem.md`.
2. **math-harder** *(tùy chọn)*: Nếu model giải được quá dễ, dùng kỹ năng này để tăng độ khó cấu trúc của đề bài.
3. **math-change-answer-type** *(tùy chọn)*: Đổi dạng đáp án sang loại bonus/mở mà không thay đổi độ khó.
4. **math-change-problem-type** *(tùy chọn)*: Thiết kế lại đề bài sang domain hoặc problem type có capacity tốt hơn.
5. **math-solve**: Giải đề bài bằng phiên assistant hiện tại. Đọc `problem.md`, ghi lời giải vào `solution.md` trong cùng folder `problemNN-taxonomy-slug`.
6. **math-check** *(tùy chọn)*: Audit toàn diện đề bài và lời giải trước khi tiến hành chuẩn hóa. Không sửa file, chỉ báo cáo.
7. **normalize-all**: Chạy normalize-problem + format-solution + một lượt math-rewrite tập trung. Đọc và cập nhật trực tiếp `problem.md` và `solution.md` trong folder active.
8. **evaluate-responses** *(tùy chọn)*: Đánh giá phản hồi của mô hình. Đọc `problem.md` và `solution.md`, nhận response qua chat/argument, trả báo cáo trong chat.
9. **math-rewrite**: Viết lại phần văn xuôi để tránh bị nhận diện là AI, có dual-pass audit bắt buộc.

### Phối hợp giữa các kỹ năng

- **normalize-all** chạy `normalize-problem` + `format-solution` + một lượt `math-rewrite` tập trung trong cùng một lệnh. Lượt rewrite này vẫn phải làm dual-pass audit nội bộ theo đúng `math-rewrite`.
- Sau khi **normalize-problem** hoàn thành độc lập, kỹ năng tự động chạy **math-rewrite** trên Domain Explanation.
- Sau khi **format-solution** hoàn thành độc lập, kỹ năng tự động chạy **math-rewrite** trên phần prose của các bước lời giải.

### Lưu ý quy trình

- **math-rewrite** phải chạy dual-pass audit trên cùng một đoạn văn bản. Pass đầu loại bỏ các tín hiệu AI rõ ràng; pass thứ hai kiểm tra xem lần sửa đầu có tạo ra tín hiệu mới không.
- **Generation window** sở hữu folder active `workspace/frontier-problem/problemNN-taxonomy-slug/`: chạy `/math-clone`, `/math-harder`, `/math-change-*`, `/math-solve`.
- **Normalization window** đọc và cập nhật trực tiếp `problem.md` và `solution.md` trong cùng folder active. Không cần copy file giữa các folder.
- Nếu không truyền path, skill mặc định chọn folder `problemNN-*` có số lớn nhất.
- Không dùng các folder cũ kiểu clone-problem hoặc input/output trong frontier workflow.

---

## Hướng dẫn từng kỹ năng

### 1) Math Clone

- **Slash command**: `/math-clone`
- **Input**: Tên domain/sub-domain từ `skills/_shared/taxonomy_slots.md` (truyền qua argument hoặc chọn từ danh sách khi được hỏi)
- **Output**: `workspace/frontier-problem/problemNN-taxonomy-slug/problem.md`
- **Mục tiêu**:
  - Tạo đề bài toán **hoàn toàn mới** theo phong cách và độ khó của bộ EK_Rotura_Main_ABYAN.
  - Đề bài phải thuộc taxonomy/capacity hiện tại trong `skills/_shared/taxonomy_slots.md`.
  - Khi có nhiều slot fit thật, ưu tiên slot còn ít capacity nhất vì thường có giá trị hơn và dễ stump model hơn.
  - Đề bài phải có đáp án dạng closed-form, không phải bài trắc nghiệm, không phải bài chứng minh.
  - **Phase 1b (bắt buộc)**: Trước khi thiết kế, kỹ năng audit các `workspace/frontier-problem/problemNN-*/problem.md` hiện có, lập bảng (sub-domain, core object, mechanism, technique), và đảm bảo đề mới khác cấu trúc khi có thể.
  - Phải vượt qua stress-test gồm 6 tiêu chí trước khi lưu file.
- **Taxonomy/capacity**: cập nhật tập trung trong `skills/_shared/taxonomy_slots.md`.
- **Problem Types (bonus)**: Solve for unknowns, Construction under constraints, Optimization, Exhaustive enumeration, Canonicalization or normalization, Transformation between representations, Parameter identification, Other.
- **Answer Types (bonus)**: Polynomial or rational function, Vector, Matrix, Set or multiset of objects, Sequence or series representation, Canonical form, Constructed mathematical object, Geometric object or description, Other.

---

### 2) Math Solve

- **Slash command**: `/math-solve [đề bài hoặc đường dẫn file]`
- **Input**: Đề bài inline, ảnh, hoặc mặc định folder `problemNN-*` mới nhất
- **Output**: `solution.md` trong cùng folder active
- **Mục tiêu**:
  - Giải toán theo quy trình 5 pha: Hiểu đề → Phân tích → Giải → Kiểm tra → Trình bày.
  - **Phase 3b (bắt buộc)**: Sau khi soạn thảo lời giải, quét toàn bộ các bước để phát hiện black-box reasoning theo 3 mức độ:
    - **Level 1** (Acceptable Compression): bỏ qua thao tác đại số thông thường, không cần sửa.
    - **Level 2** (Hidden Nontrivial Step): thiếu lập luận quan trọng — phải mở rộng trước khi tiếp tục.
    - **Level 3** (Critical Black Box): bước cốt lõi không có chứng minh — quay lại Phase 2/3 và xây dựng lại.
  - **Bắt buộc** áp dụng ít nhất 2 phương pháp kiểm tra độc lập (sanity check, boundary test, numerical check bằng Python...).
  - Nếu kiểm tra thất bại hoặc còn Level 2/3 black-box, **quay lại từ đầu**. Không chấp nhận đáp án chưa được xác minh.
  - Dừng lại sau 3 vòng lặp thất bại và báo cáo không giải được.
- **Output bao gồm**: phần `## Black-Box Audit` liệt kê kết quả kiểm tra từng bước.

---

### 3) Math Harder

- **Slash command**: `/math-harder [số thứ tự bài toán]`
- **Input**: `problem.md` trong folder active
- **Output**: Ghi đè `problem.md` trong folder active với phiên bản đã tăng độ khó
- **Mục tiêu**:
  - Chẩn đoán tại sao model giải được dễ (xác định điểm yếu cấu trúc của đề).
  - Áp dụng kỹ thuật hardening nhắm trúng điểm yếu đó: làm sâu thêm dependency graph, chặn hướng tiếp cận đã thành công.
  - Tăng độ khó qua cấu trúc toán học, **không** qua thêm biến số, thêm yêu cầu output, hay câu chữ phức tạp hơn.
- **Lưu ý**: Ghi đè file gốc — nên commit hoặc backup trước khi chạy nếu muốn giữ phiên bản cũ.

---

### 4) Math Change Answer Type

- **Slash command**: `/math-change-answer-type [số thứ tự bài toán]`
- **Input**: `problem.md` trong folder active
- **Output**: Ghi đè `problem.md` trong folder active với Answer Type mới
- **Mục tiêu**:
  - Chuyển đổi dạng đáp án yêu cầu sang loại bonus hoặc đang mở (chưa bão hòa) mà **không** thay đổi độ khó hay bộ máy toán học của đề.
  - Độ sâu toán học đã đủ — kỹ năng chỉ định hình lại loại output được yêu cầu.
- **Khi nào dùng**: Khi đáp án hiện tại là scalar đơn thuần hoặc Answer Type đó đã bão hòa trong taxonomy.

---

### 5) Math Change Problem Type

- **Slash command**: `/math-change-problem-type [số thứ tự bài toán]`
- **Input**: `problem.md` trong folder active
- **Output**: Ghi đè `problem.md` trong folder active với domain/problem type mới
- **Mục tiêu**:
  - Thiết kế lại đề bài nhắm vào Domain/Sub-domain hoặc Problem Type có capacity tốt hơn.
  - Đọc `skills/_shared/taxonomy_slots.md`, bỏ qua slot closed/full/0, và ưu tiên slot fit thật có remaining capacity thấp nhất.
  - Giữ nguyên khái niệm toán học, cơ chế, và độ khó gốc càng nhiều càng tốt.
  - Chỉ thay đổi những gì cần thiết để đạt slot tốt hơn.
- **Khi nào dùng**: Khi domain hoặc problem type hiện tại đã bão hòa hoặc đóng (closed).

---

### 6) Math Check

- **Slash command**: `/math-check [số thứ tự bài toán]`
- **Input**: `problem.md` và optional `solution.md` trong folder active
- **Output**: Báo cáo trong chat (không sửa file nào)
- **Mục tiêu**:
  - Audit toàn diện theo tiêu chí: logic đề bài, độ chắc chắn lời giải, tính nhất quán LaTeX, độ chính xác phân loại, và black-box reasoning.
  - Báo cáo kết quả theo severity (Critical / Warning / Info).
- **Lưu ý**: Kỹ năng này **chỉ đọc và báo cáo**, không tự động sửa bất kỳ file nào. Người dùng quyết định cần fix gì.

---

### 7) Normalize Problem

- **Slash command**: `/normalize-problem`
- **Input**: `problem.md` trong folder active
- **Output**: cập nhật trực tiếp `problem.md` trong folder active
- **Mục tiêu**:
  - Chuẩn hóa LaTeX (chỉ dùng `$...$` inline và `$$...$$` display, không dùng `\(...\)` hay `\[...\]`).
  - Thay ký tự Unicode toán học bằng lệnh LaTeX tương ứng.
  - Phân loại **Domain/Sub-domain** theo taxonomy/capacity hiện tại trong `skills/_shared/taxonomy_slots.md`.
  - Viết đoạn Domain Explanation theo khuôn 3 câu.
- **Sau khi xong**: Kỹ năng tự động chạy **math-rewrite** trên Domain Explanation.

---

### 8) Evaluate Responses

- **Slash command**: `/evaluate-responses`
- **Input**:
  - `problem.md` trong folder active
  - `solution.md` trong folder active
  - response paste trong chat hoặc `$ARGUMENTS`
- **Output**: báo cáo trong chat, không ghi file
- **Mục tiêu**:
  - Đánh giá từng response **từng cái một**, không đọc cả hai response cùng lúc.
  - Kiểm tra đáp án cuối có trùng/tương đương đáp án đúng không.
  - Rà soát từng bước suy luận, chỉ rõ lỗi hoặc bước thiếu.
  - Kiểm tra định dạng LaTeX và phát hiện các bước chứng minh không hợp lệ.

---

### 9) Format Solution

- **Slash command**: `/format-solution`
- **Input**: `solution.md` trong folder active
- **Output**: cập nhật trực tiếp `solution.md` trong folder active
- **Mục tiêu**:
  - Chuẩn hóa cú pháp LaTeX, **không** thay đổi nội dung toán học.
  - Chia bước theo `Step N: <mô tả>`, bước cuối kết thúc bằng `Final Answer: $\boxed{<answer>}$`.
  - Mỗi bước phải **tự chứa**: không được tham chiếu bước khác bằng số hoặc vị trí ("from Step 2", "as shown above", "computed above", "derived below"...). Nếu có, phải viết lại toàn bộ câu đó bằng cách nêu lại giá trị/sự kiện cần thiết ngay tại chỗ.
  - Thêm mục **Answer** và **Classification** (Problem Type + Answer Type) theo mẫu.
  - Chạy checklist tự kiểm tra 24 điểm trước khi lưu file.
- **Sau khi xong**: Kỹ năng tự động chạy **math-rewrite** trên phần prose của các bước.

---

### 10) Normalize All

- **Slash command**: `/normalize-all`
- **Input**: `problem.md` và `solution.md` trong folder active
- **Output**: cập nhật trực tiếp `problem.md` và `solution.md` trong folder active (đã rewrite)
- **Mục tiêu**:
  - Chạy **normalize-problem** + **format-solution** + một lượt **math-rewrite** tập trung trên cùng một thư mục.
  - Tránh gọi math-rewrite rời rạc ở nhiều nơi, nhưng vẫn giữ dual-pass audit bên trong math-rewrite.
- **Khi nào dùng**: Dùng thay thế cho việc gọi riêng lẻ normalize-problem và format-solution khi muốn hoàn thành cả hai cùng lúc.

---

### 11) Math Rewrite

- **Slash command**: `/math-rewrite`
- **Input** (theo thứ tự ưu tiên):
  1. Text được chọn trong IDE
  2. Text/argument truyền trực tiếp qua lệnh
  3. Đường dẫn tới `solution.md` trong folder active
  4. Text người dùng paste vào chat
- **Output**: Văn bản đã viết lại, hiển thị trong chat dưới dạng copy-paste ready
- **Quy tắc ghi file**: Kỹ năng **được phép tự động cập nhật file** `solution.md` trong folder active sau khi viết lại. Với mọi input khác (text paste, IDE selection), chỉ trả về văn bản trong chat, không được chỉnh sửa file nào khác.
- **Mục tiêu**:
  - Viết lại văn bản để tránh bị các công cụ phát hiện AI nhận diện.
  - Tự động chuyển sang **LaTeX-aware mode** khi input chứa LaTeX, không thay đổi bất kỳ nội dung toán học nào.
  - Chạy dual-pass audit sau khi viết lại để đảm bảo không tạo ra tín hiệu AI mới.
- **Shared references bắt buộc**:
  - `skills/_shared/blocked_words.md`
  - `skills/_shared/style_guide.md`
- **Hạn chế mới**:
  - **Bare `{}`** bị cấm trong LaTeX output. Nếu muốn hiển thị cặp ngoặc rỗng, dùng `\{\}`; nếu `{}` chỉ là alignment spacer trước `&`, bỏ `{}` và chuyển `&` ra trước dấu quan hệ.
  - **Bold pairs** (`**...**`) bị cấm trong toàn bộ prose output — tự động xóa marker và giữ plain text.
  - **Cross-step references** bị cấm — không được viết "from Step N", "as shown above", "computed above", "derived below" hay bất kỳ tham chiếu nào đến bước khác. Phải viết lại câu đó bằng cách nêu lại giá trị cần thiết ngay tại chỗ.
  - **Multi-environment display blocks** phải tách: một `$$...$$` block không được chứa nhiều hơn một `\begin{cases}` hay compound environment — phải tách thành nhiều block riêng.
- **Lưu ý quan trọng**: Phải chạy **dual-pass audit** trên cùng một đoạn văn bản. Pass 1 loại bỏ tín hiệu AI rõ ràng; pass 2 kiểm tra xem lần sửa đầu có vô tình tạo ra mẫu AI mới không.

---

## Lưu ý chung

- Mỗi kỹ năng có file mô tả chi tiết trong `skills/{tên-kỹ-năng}/SKILL.md`.
- Các kỹ năng từ **normalize-problem**, **evaluate-responses**, **format-solution** mặc định dùng folder `problemNN-*` mới nhất trong `workspace/frontier-problem/`.
- Dùng đúng định dạng output theo mẫu trong từng SKILL.md để tránh sai lệch khi phối hợp giữa các kỹ năng.
- **math-harder**, **math-change-answer-type**, **math-change-problem-type** đều ghi đè `problem.md` trong folder active — nên commit hoặc backup trước khi chạy nếu muốn giữ lịch sử.
