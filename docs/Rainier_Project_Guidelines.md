# Rainier – University Math Guidelines (Bản tổng hợp đầy đủ)

> **Nguồn:** Snorkel — *[EXTERNAL] Rainier Project Guidelines*
> **Phiên bản:** V1.0 — Cập nhật lần cuối: 23/06/2026
> **Tài liệu này tổng hợp toàn bộ nội dung của file PDF gốc (78 trang), bao gồm cả văn bản và thông tin trích xuất từ hình ảnh (ảnh chụp giao diện, các bài toán mẫu, bảng LaTeX).**

---

## Mục lục

1. [Tổng quan (Overview)](#1-tổng-quan-overview)
2. [Cách bắt đầu (How to Get Started)](#2-cách-bắt-đầu-how-to-get-started)
3. [Hướng dẫn nộp bài (Submission Guidelines)](#3-hướng-dẫn-nộp-bài-submission-guidelines)
   - [Mô tả nhiệm vụ](#31-mô-tả-nhiệm-vụ-task-description)
   - [13 Lĩnh vực (Domains)](#32-13-lĩnh-vực-available-domains)
   - [Yêu cầu chất lượng](#33-yêu-cầu-chất-lượng-quality-requirements)
   - [Yêu cầu về đáp án](#34-yêu-cầu-về-đáp-án-answer-requirements)
   - [Yêu cầu về lời giải](#35-yêu-cầu-về-lời-giải-solution-requirements)
   - [Mẹo cho bài chất lượng cao](#36-mẹo-cho-bài-chất-lượng-cao-pro-tips)
   - [Trợ giúp LaTeX](#37-trợ-giúp-latex-latex-help)
4. [Hướng dẫn nộp bài chi tiết (Detailed Submission Instructions)](#4-hướng-dẫn-nộp-bài-chi-tiết)
5. [Cập nhật quy trình review (Review Process Updates)](#5-cập-nhật-quy-trình-review)
6. [Phân loại Problem Type & Answer Type](#6-phân-loại-problem-type--answer-type)
7. [Mô tả chi tiết 13 Domain và Sub-domain](#7-mô-tả-chi-tiết-13-domain-và-sub-domain)
8. [Các bài toán mẫu được chấp nhận (Accepted Examples)](#8-các-bài-toán-mẫu-được-chấp-nhận)
9. [Phụ lục LaTeX (LaTeX Formatting Appendix)](#9-phụ-lục-latex)
10. [Quy tắc ứng xử (Code of Conduct)](#10-quy-tắc-ứng-xử-code-of-conduct)

---

## 1. Tổng quan (Overview)

Chào mừng đến với **Rainier Math Project!** Mục tiêu là xây dựng một **bộ dữ liệu các bài toán mới có khả năng "đánh bại" mô hình (model-stumping)** trên **13 lĩnh vực toán học**.

**Quick Links** trong tài liệu gốc: How to Get Started, Submission Overview/Workflow, Review Overview, Full Review Workflow, Error Categories, Problem Type Bonus Categories, Answer Type Bonus Categories, Domain Description, Accepted Examples, Rate Card, LaTeX Formatting Appendix, Code of Conduct.

---

## 2. Cách bắt đầu (How to Get Started)

1. Truy cập **Expert Platform**.
2. Sau khi đăng nhập, vào **My Projects**.
3. Tìm kiếm **"Rainier"** và xác định 2 project sau:
   - **EK_Rainier_Production_BTYAD / Rainier Submission**
   - **EK_Rainier_Production_BTYAD / Rainier Review**
4. Nhấn nút **"Start"** màu xanh để bắt đầu.

> *(Hình minh họa: hai thẻ "Rainier Submission" và "Rainier Review", đều thuộc Project `EK_Rainier_Production_BTYAD`, mỗi thẻ có nút "Start" màu xanh.)*

---

## 3. Hướng dẫn nộp bài (Submission Guidelines)

### 3.1. Mô tả nhiệm vụ (Task Description)

Mỗi nhiệm vụ là tạo một bài toán **gốc, chỉ dùng văn bản (text-only), định dạng LaTeX**, được chạy qua **các mô hình AI frontier để xác định độ khó**. Mỗi bài gồm các thành phần:

- **Problem (Đề bài):** Một bài toán rõ ràng, đơn lẻ, tự chứa (self-contained), chỉ văn bản, **viết bằng LaTeX**, dùng để đánh giá khả năng suy luận của mô hình. Bài toán phải có **đường lời giải mở (open solution path)** nhưng **không gian đáp án đóng (closed answer space)**.
  - ⚠️ **KHÔNG** hỏi nhiều câu hỏi độc lập rồi ghép lại. **Một bài toán là MỘT câu hỏi.**
- **Answer (Đáp án):** Đáp án cuối cùng đúng cho bài toán.
- **Domain Classification and Explanation (Phân loại lĩnh vực + giải thích):** Bài toán phải thuộc 1 trong **13 lĩnh vực và sub-domain tương ứng**, kèm **lý do (justification)** vì sao lựa chọn đó là phù hợp nhất.
- **Step-by-Step Solution (Lời giải từng bước):** Lời giải chi tiết do chuyên gia viết (cũng bằng LaTeX). Đáp án cuối phải nằm trong môi trường **boxed của LaTeX** ở bước cuối.
- **Problem Type, Answer Type, and Concepts:** Chọn mô tả phù hợp nhất từ danh sách cho trước.

> 🚨 **KHÔNG SỬ DỤNG LLM ĐỂ TẠO BẤT KỲ PHẦN NÀO CỦA BÀI NỘP. BẰNG CHỨNG VỀ ĐIỀU NÀY SẼ DẪN ĐẾN TỪ CHỐI THẲNG (OUTRIGHT REJECTION) VÀ LOẠI KHỎI DỰ ÁN!**

### 3.2. 13 Lĩnh vực (Available Domains)

Có **13 Domain** để lựa chọn. Mỗi bài toán phải được gán cho Domain và Sub-domain **mô tả tốt nhất** bài toán. Domain phải phản ánh **chủ đề trung tâm của bài toán**, không chỉ là ký hiệu được dùng, định dạng đáp án, hay kỹ thuật có thể xuất hiện trong một lời giải.

1. **Algebra, Functions, and Trigonometry** (Đại số, Hàm số và Lượng giác)
2. **Euclidean, Coordinate, and Transformational Geometry** (Hình học Euclid, Tọa độ và Biến đổi)
3. **Calculus** (Giải tích)
4. **Linear Algebra** (Đại số tuyến tính)
5. **Abstract Algebra** (Đại số trừu tượng)
6. **Number Theory** (Lý thuyết số)
7. **Discrete Mathematics and Combinatorics** (Toán rời rạc và Tổ hợp)
8. **Probability and Statistics** (Xác suất và Thống kê)
9. **Differential Equations and Dynamical Systems** (Phương trình vi phân và Hệ động lực)
10. **Analysis** (Giải tích thực/phức)
11. **Topology and Geometry** (Tô-pô và Hình học)
12. **Optimization and Numerical Mathematics** (Tối ưu hóa và Toán số)
13. **Logic, Set Theory, and Foundations** (Logic, Lý thuyết tập hợp và Nền tảng)

### 3.3. Yêu cầu chất lượng (Quality Requirements)

Để được coi là bài chất lượng cao đủ điều kiện **Chấp nhận (Acceptance)**, bài toán phải đáp ứng **TẤT CẢ** các điều sau:

- **Original (Gốc):** Tất cả thành phần phải do **chuyên gia con người viết** (không được dùng nội dung do LLM tạo), và mọi thành phần trong mỗi mẫu phải là gốc.
- **Appropriate Math Domains:** Dùng khái niệm toán học nằm trong các lĩnh vực được cho phép.
- **Challenging (Đủ khó):** Đánh bại ít nhất một mô hình AI frontier **đa số thời gian (majority of the time)**.
- **Requires reasoning:** Bài toán phải yêu cầu **suy luận từng bước**, không phải đọc thuộc lòng sự kiện/định lý. Lời giải phải có **ít nhất 3 bước**.
- **Well-formed:** Tất cả thành phần đúng ngữ pháp/cú pháp, không lỗi chính tả hay lỗi định dạng LaTeX.
- **Unique answer exists (Đáp án duy nhất):** Bài toán chỉ có **một lời giải duy nhất**, nhưng có thể có nhiều dạng tương đương hợp lệ.
  - ⚠️ **"Does not exist" hoặc DNE KHÔNG phải là đáp án hợp lệ trong dự án này.**
- **Clear answer format:** Đề bài phải nêu rõ định dạng đáp án. Nếu đáp án có tham số hoặc biểu diễn theo biến khác, phải nêu rõ.
- **Reliably verifiable:** Đáp án và các bước lời giải PHẢI kiểm chứng được.
- **Self-contained:** Ngoài kiến thức toán học kỳ vọng, bài phải chứa tất cả ngữ cảnh cần thiết. **Bảng biểu, tài liệu tham chiếu cần để giải phải được đưa vào trong bài.**
- **No shortcutting:** Không có gợi ý/lối tắt khiến bài "tầm thường".
- **No guessable answers:** Không dễ đoán (ví dụ yes/no hoặc trắc nghiệm).
- **No proofs:** **KHÔNG** dùng dạng "show that", "prove", "verify".
- **Problem makes sense:** Bài phải hợp lý trong ngữ cảnh lĩnh vực đã chọn.
- **Hand-Solveable (Giải được bằng tay):** Phải giải được bằng tay, không cần máy tính/máy tính bỏ túi. **Không được phép:**
  - Làm việc với số lớn hơn $10^{15}$ hoặc nhỏ hơn $10^{-10}$.
  - Yêu cầu tính toán bất khả thi/vô lý bằng tay (ví dụ tính $\sin(5)$ hoặc $e^{-3}$).
  - Triển khai thuật toán lặp hoặc viết code để có đáp án.
- **Không dựa vào chủ đề quá tối nghĩa/ngách**, ví dụ: Gromoll-Meyer spheres, Rolfsen tables, Alexander polynomials.
- **Lưu ý:** **Câu đố chữ (Word puzzles) KHÔNG được phép**, kể cả khi giải được bằng lý thuyết tập hợp.

### 3.4. Yêu cầu về đáp án (Answer Requirements)

- Để đủ điều kiện chấp nhận, **đáp án phải đúng**.
- Đáp án **không được dùng ký hiệu chưa được giới thiệu trong đề bài**. Nếu không sẽ vi phạm yêu cầu self-contained.

### 3.5. Yêu cầu về lời giải (Solution Requirements)

Lời giải từng bước phải đáp ứng:

- **Correctness:** Mọi thành phần hợp lệ về mặt toán học và dẫn đến đáp án cuối.
- **Valid Individual Steps:** Kiểm tra từng bước **độc lập với đáp án**, tự tính lại các đẳng thức và giá trị số hiển thị. **Đáp án cuối đúng KHÔNG chứng nhận các bước là đúng!**
- **All Claims are Supported:** Với mọi tuyên bố không tầm thường (đặc biệt sau "clearly", "note that", "it follows"), xác nhận lập luận có mặt. Kiểm tra định lý được trích dẫn thực sự áp dụng được, quy nạp được chứng minh (không chỉ khớp mẫu), và phân chia trường hợp bao phủ mọi trường hợp kể cả biên/dấu/suy biến.
- **Accurate and Consistent Formatting:** Đúng ngữ pháp/cú pháp, không lỗi chính tả/LaTeX. Mọi biểu thức, biến, phương trình định dạng nhất quán xuyên suốt.
- **Project Conventions (Quy ước dự án):**
  - Mỗi bước phải bắt đầu bằng `"Step #"`.
  - Bước cuối phải kết thúc bằng `"Final Answer: $\boxed{...}$"`.
  - Đáp án trong "Answer Box" phải khớp với đáp án cuối trong bước cuối.

### 3.6. Mẹo cho bài chất lượng cao (Pro Tips)

- Đảm bảo tuân thủ các yêu cầu định dạng trên.
- **Kiểm tra kỹ (Double-check)** rằng các câu hỏi khác biệt với nhau và không lấy từ các bộ dữ liệu/cuộc thi đã có.
- Dùng ngữ pháp tốt, kiểm tra chính tả.
- Đảm bảo **Lời giải không có bước-trong-bước (steps within a step)**, hay **các micro-step tầm thường**.
  - Lời giải nên được chia nhỏ vừa phải, chỉ bao gồm các **bước đáng kể/quan trọng (significant or substantial steps)**. Không cần các bước không quan trọng.
  - Tham khảo **good example steps** trong tab Examples.

### 3.7. Trợ giúp LaTeX (LaTeX Help)

Tài nguyên hữu ích:

- **Overleaf:** hỗ trợ command completion + xem song song source và preview.
- **Codecogs:** trình soạn phương trình bằng cách click vào ký hiệu, cho ra mã LaTeX (cần copy mã và bọc trong `$...$` hoặc `$$...$$`).
- **Detextify:** vẽ tay ký hiệu, trả về mã LaTeX (cho người mới bắt đầu).
- **Dainiak:** trình kiểm tra style LaTeX nhanh.
- **TeX Studio:** môi trường soạn thảo tích hợp để tạo tài liệu LaTeX.

Bốn video YouTube giới thiệu LaTeX: *What is LaTeX?*, *Your first LaTeX document*, *Basic mathematics in LaTeX*, *Intermediate mathematics in LaTeX*.

---

## 4. Hướng dẫn nộp bài chi tiết (Detailed Submission Instructions)

### 4.1. Bắt đầu (To Start)

Trong **Rainier Submission**:

- Bắt đầu bằng cách kiểm tra bài toán đối với **hai mô hình "hard" cấp frontier** (cố tình khó để đánh bại). Các mô hình này có thể mất vài phút để tạo phản hồi.
- **Nhấn mũi tên xanh** để chạy câu hỏi qua mô hình và đảm bảo **CẢ HAI mô hình đều liên tục trả lời SAI**.
- Nhập bài toán LaTeX vào ô có dòng *"Enter your prompt here."*

> *(Hình: giao diện "Rainier Submission" với UID mẫu `74ddea68-11f9-4717-a4a7-d4fab532001c`. Có ghi chú: "Note: Các kết quả này để tham khảo khi viết bài và KHÔNG phải kiểm tra độ khó chính thức. Có thể một mô hình trả lời đúng một lần, nhưng hãy chắc bài đánh bại cả hai mô hình liên tục. Nếu nhận 'No Response', vui lòng chạy lại; nếu liên tục gặp lỗi, báo Snorkel team." Bên dưới là ô "Please write your problem here to test it against AI models (These are thinking models and may take a few minutes to run)".)*

> ⚠️ **LƯU Ý:** "No Response was generated by the model" **KHÔNG** tương đương với việc mô hình trả lời sai. Nếu gặp tình huống này, hãy chạy lại các mô hình. Nếu liên tục gặp lỗi này, liên hệ Snorkel Team qua **Slack**.

> *(Hình: hai khung "Response 1" và "Response 2" cùng hiển thị "No response was generated by the model.")*

### 4.2. Nộp câu hỏi (Submitting the Question)

Khi đã chắc chắn bài toán **liên tục đánh bại các mô hình**, hoàn thành phần còn lại ở phía bên phải màn hình.

- Copy & paste bài toán vào ô dưới tiêu đề **"Math Problem (Prompt)"** ở phía bên phải UI.
  - *(Hình: ô "Math Problem (Prompt)" với hai tab "Write" và "LaTeX Preview", nội dung mẫu "This is my math problem".)*
- Chọn **domain và sub-domain** phù hợp cho câu hỏi (danh sách 13 domain như mục 3.2).

> 🚨 **Note on Domain Quotas (Hạn ngạch lĩnh vực):** Mỗi domain và sub-domain đều có **hạn ngạch (quota)**, và sẽ **ngừng nhận bài mới** khi đạt hạn ngạch. Bài nộp với domain chọn sai có thể bị **từ chối thẳng nếu quota của category đúng đã đầy**.

- Điền **Domain Explanation field**: giải thích ngắn gọn, rõ ràng vì sao domain và subdomain này là lựa chọn tốt nhất và vì sao tốt hơn lựa chọn tốt-nhì. Cấu trúc đề xuất:

  > *This problem involves \<mô tả các yếu tố toán học chính của bài\>,*
  > *which are part of \<domain và sub-domain\>.*
  > *The problem also involves \<mô tả các yếu tố toán học bổ sung\>,*
  > *which are part of \<domain khác\>.*
  > *However, \<giải thích vì sao chúng không cốt lõi hoặc kém nâng cao hơn\>.*

  **Ví dụ:** *"This problem involves a finite symmetric difference evolution whose exact solution is encoded by polynomial generating functions, which is part of Discrete Mathematics and Combinatorics and Generating functions. The problem also involves finite quotient rings and cyclic update operators, which are part of Abstract Algebra. However, those algebraic tools only support the generating function calculation that determines the exact residue profile, so they are not the main subject of the problem."*

### 4.3. Lời giải (Worked Solution)

- Cung cấp lời giải từng bước, mỗi bước tạo bước tiến **đáng kể** tới đáp án cuối; tránh chia thành nhiều micro-step tầm thường.
  - Bước cuối phải dùng định dạng box LaTeX và kết thúc với **`"Final Answer: $\boxed{<đáp án>}$"`**.
- ⚠️ Đảm bảo mỗi bước có thể được Reviewer kiểm chứng **độc lập với đáp án** — tự tính lại các đẳng thức và giá trị số hiển thị trước khi nộp. **Đáp án cuối đúng không chứng nhận các bước!**
  - Với mọi tuyên bố không tầm thường (sau "clearly", "note that", "it follows"), **xác nhận lập luận có mặt**. Kiểm tra định lý áp dụng được, quy nạp được chứng minh (không khớp mẫu), phân chia trường hợp bao phủ mọi trường hợp kể cả biên/dấu/suy biến.
- Cung cấp **tất cả các bước suy luận cần thiết** trong ô "Worked Solution":
  - Có thể bao gồm: phép thế quan trọng, áp dụng định lý quan trọng, phân chia trường hợp cần thiết, hoặc kết hợp các kết quả trước đó.
  - Tối thiểu **ít nhất 3 bước**.
  - Mỗi bước tạo tiến bộ đáng kể, không chia nhỏ thành các phần nhỏ/tầm thường.
  - Không bao gồm các bước không quan trọng.
  - Mỗi Step chỉ là **một bước (one step)** — không có bước-trong-bước, sub-step, micro-step tầm thường.

> 🚨 **KHÔNG DÙNG LLM ĐỂ TẠO BẤT KỲ PHẦN NÀO CỦA CÁC BƯỚC LỜI GIẢI. BẰNG CHỨNG VỀ ĐIỀU NÀY SẼ DẪN ĐẾN TỪ CHỐI THẲNG!**

- **Bắt buộc** đánh số mỗi bước theo định dạng: *Step 1, Step 2, Step 3,...*
- Tất cả các bước phải được đánh số theo trình tự rõ ràng.
- Nếu tham chiếu một bước trước (ví dụ ở Step 4 nhắc lại điều gì đó từ Step 2), phải ghi rõ là "Step 2".

> *(Hình: giao diện "Step-by-Step Solution" với hướng dẫn, mỗi bước có tab "Write"/"LaTeX Preview" và ô "Step #:", đánh số 1, 2, 3...)*

### 4.4. Phần đáp án (Answer Section)

- Điền đáp án cuối vào bài toán (và **KHÔNG** dùng `\boxed` trong ô này! nhưng có bọc đáp án trong `$...$`).
- Sau khi xong, chạy nút **In-App Evaluation** để xác thực bài nộp.
- Bỏ qua phần "(optional)" trong tiêu đề; xác thực bài nộp là **bắt buộc đối với dự án này**!

> *(Hình: ô "Answer" với hướng dẫn "The final answer to the problem. (Do not use \boxed for this, but do wrap your answer in $...$)", và nút "In-App Evaluation (optional) — Check Accuracy of LaTeX".)*

- Xem tab **Accepted Examples** để tham khảo ví dụ tốt.

### 4.5. Phần Problem, Answer, and Concepts

- Chọn phân loại Problem Type và Answer Type phù hợp nhất dựa trên mô tả Answer Types và Problem Types.
- Liệt kê các **concepts, techniques, hoặc knowledge** cần để giải bài. Phải gồm **ít nhất một và không quá năm**. Nếu nhiều hơn năm, liệt kê **năm cái quan trọng nhất**.

  **Ví dụ** các concept cho một bài giải tích:
  - *Critical points*
  - *First-derivative sign changes*
  - *Local maxima/minima*
  - *Endpoint comparison*
  - *Polynomial differentiation*

> *(Hình: nút mở rộng "Problem Type, Answer Type, and Concepts".)*

### 4.6. Định tuyến bài nộp (Submission Routing)

Chọn nơi bài nộp sẽ đi sau khi submit:

- Chọn **"Quality Review"** khi tin rằng bài đáp ứng tiêu chuẩn chất lượng dự án, vượt qua các kiểm tra tự động, và sẵn sàng cho review bởi người.
- Hoặc chọn tùy chọn **"Automated Checks Only"** để kiểm tra bài đang làm dở đối với các kiểm tra tự động về **độ khó và tính nguyên bản (difficulty and originality)**. Đây là chỉ báo bài đã sẵn sàng cho quality review hay chưa.

> *(Hình: nút mở rộng "Submission Routing".)*

### 4.7. Phản hồi tự động về độ khó và chất lượng (Automated Difficulty and Quality Feedback)

Nếu chọn **"Automated Checks Only"**, bạn sẽ thấy kết quả của các kiểm tra tự động trong khi vẫn đang làm bài, bao gồm:

- Bài nộp có độ khó chấp nhận được hay không.
- Kết quả đầy đủ về cách các mô hình giải bài.
- Bài toán và lời giải có đúng và đầy đủ không.
- Các bước lời giải có đúng không và có lỗ hổng logic hay lỗi toán học không.
- Domain đã chọn và lý do có phù hợp không.

> *(Hình: nút mở rộng "Automated Difficulty and Quality Feedback".)*

> *(Hình ví dụ một kiểm tra — "Automated Difficulty Feedback (optional)": "Result: 🟢 Your submission is sufficiently difficult. Model 1 Success Rate: 0%. Model 2 Success Rate: 0%. Note: Bất kỳ chỉnh sửa hay sửa đổi nào với Problem hoặc Answer có thể làm thay đổi độ khó. WARNING: Bài toán của bạn có thể có đáp án sai. Mô hình được test liên tục cho ra đáp án: 0.16".)*

### 4.8. Final Checks (Kiểm tra cuối) & Submission

**Final Checklist** — Xác nhận các điều sau:
- ✅ Chỉ có **một và chỉ một đáp án đúng**.
- ✅ Đã **kiểm tra chính tả và ngữ pháp**.
- ✅ Đã **độc lập kiểm chứng độ chính xác của các bước lời giải**.
- ✅ Câu hỏi **không đạo văn (not plagiarized)**.
- ✅ **Không dùng LLM** để tạo bất kỳ phần nào của bài nộp.
- ✅ Đã dùng **định dạng LaTeX phù hợp**.

**Submission:** Khi tất cả các trường hoàn tất, nhấn **Submit**.

---

## 5. Cập nhật quy trình review (Review Process Updates: PLEASE READ)

Với những ai từng làm các dự án toán Snorkel trước đây, quy trình review đã thay đổi để làm rõ workflow, đảm bảo mọi kỳ vọng rõ ràng và review chất lượng cao nhất.

### #1. Tập trung vào các bước lời giải (Double-Down on Solution Steps)
Các bước lời giải thường là lý do lớn nhất khiến bài không đạt và bị trả về sửa. Reviewer phải:
- Kiểm tra từng bước **độc lập với đáp án** và tự tính lại các đẳng thức/giá trị số hiển thị. **Đáp án cuối đúng không chứng nhận các bước!**
- Với mọi tuyên bố không tầm thường (sau "clearly", "note that", "it follows"), xác nhận lập luận có mặt. Kiểm tra định lý áp dụng được, quy nạp được chứng minh (không khớp mẫu), phân chia trường hợp bao phủ mọi trường hợp kể cả biên/dấu/suy biến.

### #2. Chọn "Error Categories" mới
Để cải thiện tính nhất quán của phản hồi review, đã triển khai **Error Categories mới** cho phép chọn nhãn cụ thể cho lỗi được phát hiện. Reviewer phải chọn các category này và đảm bảo phản hồi sửa đổi khớp với cái đã chọn.
- Xem **Error Category Definitions**.
- Reviewer **PHẢI** cung cấp gợi ý cụ thể, khả thi để sửa lỗi đã xác định. Phản hồi kiểu *"make the problem more self-contained"* **sẽ không được chấp nhận**.
- Mỗi khi Reviewer để lại phản hồi, câu hỏi nên là: **Nếu Original Author xử lý mọi thứ tôi đã ghi trong revision notes, liệu có thể chấp nhận khi nộp lại không?** Nếu không, **cần bổ sung thêm**!
- Xem **Good v Bad Feedback** để biết thêm.

### #3. Kiểm tra Phản hồi Tự động Bắt buộc (Mandatory Automated Feedback Check)
Reviewer giờ phải xem qua toàn bộ kiểm tra phản hồi tự động trên bài nộp **trong một review task**. Mục đích là cung cấp thêm thông tin/ngữ cảnh về bài nộp, cũng như cách kiểm tra tự động hoạt động, để cải thiện hiểu biết về workflow review.
- Khi chọn **"Accept"** cho Review Decision, Reviewer được hỏi thêm: **Are All Automated Checks Accurate?** (Mọi kiểm tra tự động có chính xác không?)
- Reviewer ghi chú liệu có kiểm tra tự động nào **không chính xác** (gồm cả false positives), và chỉ ra vì sao task vẫn **có thể được Accept**.
- Xem chi tiết trong tab **Step-by-Step System Walkthrough**.

> *(Hình: "Review Decision" với 3 lựa chọn radio — Accept / Needs Revision / Reject. Bên dưới: "Are All Automated Checks Accurate?" với hướng dẫn xem lại kết quả hộp "Automated Feedback" màu xanh và mục "Automated Difficulty and Quality Feedback", lựa chọn Yes / No.)*

### #4. Phản hồi Hiệu suất Reviewer minh bạch (Transparent Reviewer Performance Feedback)
Reviewer được cung cấp hệ thống phản hồi hiệu suất minh bạch, gồm **Weekly "Summaries"**: lỗi bị bỏ sót, vùng không nhất quán, vùng cần cải thiện, vùng mạnh, và phân tích hiệu suất đầy đủ. Hiệu suất được nhóm thành các trạng thái:

- **Trial Period (Thời gian thử việc):**
  - Sau khi vượt qua Reviewer Assessment, bắt đầu với **"Trial Period" 3-5 ngày**, có **giới hạn review hàng ngày bị điều tiết (throttled)** để chuyển tiếp mượt mà.
- **Unlimited (No Throttle):**
  - Sau Trial Period, khi đã liên tục tạo review chất lượng cao và hiểu rõ workflow, được cấp trạng thái **"Unlimited"** — có thể hoàn thành tối đa **40 review/ngày**.
- **At Risk (Throttled):**
  - Qua Weekly Summaries, Reviewer thấy được **% bài đã review bị phát hiện có lỗi** so với tổng số review. Nếu Reviewer đạt **hơn 10% lỗi** trên tất cả review (bao gồm **BẤT KỲ** lỗi nào lọt qua, kể cả lỗi nhỏ như LaTeX) → vi phạm (**violation**), bị đặt vào trạng thái **"At Risk"**.
  - Vi phạm này gồm **giảm đáng kể giới hạn hàng ngày**, kèm thông điệp coaching cá nhân với ví dụ cụ thể về lỗi. Trạng thái này được gỡ khi Reviewer thể hiện cải thiện liên tục.
  - Nếu tỷ lệ lỗi **tiếp tục tăng trong trạng thái "At Risk"** và không cải thiện → có thể dẫn đến **gỡ quyền review trong Rainier**.

> **Note:** Vi phạm cũng có thể xảy ra nếu phản hồi sửa đổi bị phát hiện là chung chung, mơ hồ, vô ích, hoặc không khớp với kỳ vọng.

---

## 6. Phân loại Problem Type & Answer Type

### 6.1. Problem Types ("ask" của bài toán)

"Ask" của bài toán nên thuộc một trong các nhóm dưới đây (danh sách không bao quát toàn bộ):

| # | Problem Type | Mô tả |
|---|---|---|
| 1 | **Exact computation** | Hỏi một giá trị số chính xác hoặc đối tượng toán học chính xác suy ra từ thông tin cho trước |
| 2 | **Symbolic derivation** | Hỏi một biểu thức dạng đóng, đồng nhất thức, hệ thức truy hồi, biến đổi, hoặc dạng tiệm cận thu được qua suy luận ký hiệu |
| 3 | **Numerical approximation** | Hỏi một đáp án số tính đến độ chính xác, sai số, hoặc giới hạn lỗi xác định |

#### Problem Type Bonus Categories (Nhóm thưởng)

| # | Problem Type | Mô tả |
|---|---|---|
| 4 | **Solve for unknowns** | Hỏi một hoặc nhiều giá trị/đối tượng thỏa phương trình, hệ, hoặc điều kiện toán học cho trước |
| 5 | **Construction under constraints** | Hỏi đối tượng toán học duy nhất thỏa một tập ràng buộc cấu trúc/định lượng |
| 6 | **Optimization** | Hỏi giá trị tối ưu, điểm tối ưu, hoặc cả hai dưới mục tiêu và tập ràng buộc cho trước |
| 7 | **Exhaustive enumeration** | Hỏi tập hợp đầy đủ của tất cả lời giải/trường hợp/đối tượng hợp lệ thỏa tiêu chí |
| 8 | **Canonicalization or normalization** | Hỏi viết lại đối tượng về dạng chuẩn/rút gọn/canonical xác định |
| 9 | **Transformation between representations** | Hỏi chuyển đổi đối tượng từ một biểu diễn sang biểu diễn tương đương khác |
| 10 | **Parameter identification** | Hỏi tham số/hệ số/đại lượng ẩn được suy ra từ phương trình, điều kiện, hoặc cấu trúc quan sát |
| 11 | **Other** | Mô tả một loại ngoài các loại trên |

### 6.2. Answer Types (kiểu đáp án kỳ vọng)

Kiểu đáp án kỳ vọng nên thuộc một trong các nhóm dưới đây (danh sách không bao quát toàn bộ):

| # | Answer Type | Mô tả |
|---|---|---|
| 1 | **Exact scalar** | Một đại lượng số chính xác đơn (số nguyên, hữu tỉ, số đại số, hoặc hằng dạng đóng) |
| 2 | **Numerical scalar approximation** | Một đại lượng số đơn kỳ vọng đến độ chính xác xác định. Mọi dung sai phải nêu trong đề bài |
| 3 | **Exact symbolic expression** | Biểu thức ký hiệu dạng đóng biểu diễn đáp án cuối đúng đến tương đương toán học |

#### Answer Type Bonus Categories (Nhóm thưởng)

| # | Answer Type | Mô tả |
|---|---|---|
| 4 | **Polynomial or rational function** | Đa thức, hàm hữu tỉ, hoặc biểu thức đại số liên quan trả về dạng ký hiệu |
| 5 | **Equation or inequality** | Phương trình, bất phương trình, hệ, truy hồi, đồng dư, hoặc ràng buộc viết tường minh làm đáp án |
| 6 | **Interval or region description** | Khoảng, hợp các khoảng, miền xác định, miền giá trị, miền khả thi, miền nghiệm, hoặc tập mô tả bằng bất phương trình/điều kiện ký hiệu |
| 7 | **Vector** | Một vector hữu hạn chiều trả về dưới dạng tọa độ, thành phần, hoặc biểu diễn tường minh tương đương |
| 8 | **Matrix** | Ma trận trả về tường minh, thường với các phần tử dạng chính xác hoặc số như chỉ định |
| 9 | **Tuple or ordered list** | Tập hợp hữu hạn có thứ tự gồm giá trị, đối tượng, nhãn, hoặc tọa độ mà thứ tự quan trọng |
| 10 | **Set or multiset of objects** | Tập hợp hữu hạn đầy đủ các đầu ra hợp lệ, thứ tự không quan trọng, bội số có thể quan trọng hoặc không |
| 11 | **Sequence or series representation** | Dãy, truy hồi, quy tắc cắt cụt hữu hạn, hoặc biểu diễn dạng chuỗi của đối tượng mục tiêu |
| 12 | **Function or mapping** | Hàm số, phép biến đổi, đồng cấu, hoán vị, toán tử, quy tắc, hoặc ánh xạ chỉ định tường minh bằng công thức, bảng, ảnh của phần tử, hoặc tác động lên cơ sở |
| 13 | **Canonical form** | Đối tượng toán học biểu diễn ở dạng chuẩn/chuẩn hóa xác định (dạng chéo, dạng Jordan, dạng bậc thang rút gọn theo hàng) |
| 14 | **Other** | Mô tả một loại ngoài các loại trên |

---

## 7. Mô tả chi tiết 13 Domain và Sub-domain

> ⚠️ **Lưu ý:** Domain và Sub-domain sẽ **liên tục đóng** khi dự án tiến triển — chúng sẽ không thể nộp bài khi đạt số mục tiêu cho lựa chọn cụ thể đó. Cập nhật các lần đóng gần nhất bằng cách kiểm tra **Workflow Resources Canvas** và cuộn xuống **"Closed Topics"**.

### 1. Algebra, Functions, and Trigonometry
Cấu trúc đại số, thao tác ký hiệu, hàm sơ cấp, phương trình, bất phương trình, đồ thị, tính toán lượng giác. **Loại trừ** đại số dựa trên chứng minh, cấu trúc đại số trừu tượng, và bài có khái niệm chính là giải tích, hình học, hoặc xấp xỉ số.
- **Algebraic expressions and manipulation** — Đơn giản hóa, phân tích, khai triển, hữu tỉ hóa, viết lại biểu thức đại số.
- **Equations and inequalities** — Giải phương trình/bất phương trình tuyến tính, bậc hai, đa thức, hữu tỉ, căn, mũ, log, trị tuyệt đối, lượng giác.
- **Functions and graphs** — Miền xác định, miền giá trị, hợp hàm, hàm ngược, biến đổi, giao điểm, tiệm cận, đặc điểm đồ thị.
- **Polynomial and rational functions** — Phân tích nghiệm, thừa số, bội, hành vi cuối, tiệm cận, cấu trúc hàm hữu tỉ.
- **Exponential and logarithmic functions** — Tăng trưởng/suy giảm mũ, đồng nhất thức log, phương trình log.
- **Trigonometry** — Tính biểu thức lượng giác, dùng đồng nhất thức, giải phương trình lượng giác, phân tích đồ thị lượng giác.
- **Sequences and elementary recurrence relations** — Dãy số học, hình học, định nghĩa đệ quy đơn giản.
- **Systems of equations** — Giải hệ tuyến tính/phi tuyến, gồm hệ phụ thuộc tham số.
- **Elementary mathematical modeling** — Biểu diễn tình huống định lượng bằng hàm đại số, mũ, log, lượng giác.

### 2. Euclidean, Coordinate, and Transformational Geometry
Hình học cổ điển, hình học dựa trên tọa độ, đo lường hình học, và biến đổi. **Loại trừ** tô-pô trừu tượng, lý thuyết đa tạp, hình học tổng hợp dựa trên chứng minh, và bài có khái niệm chính là giải tích hoặc đại số tuyến tính.
- **Euclidean geometry** — Tính và phân loại tính chất của góc, tam giác, đường tròn, đa giác, đồng dạng, tương đồng, quan hệ mét cổ điển.
- **Coordinate and analytic geometry** — Khoảng cách, hệ số góc, trung điểm, đường thẳng, đường tròn, conic, phương trình đối tượng hình học trong hệ tọa độ; nghiên cứu đường cong, conic, giao điểm, tiếp tuyến, pháp tuyến, quỹ tích bằng phương pháp đại số.
- **Solid geometry** — Thể tích, diện tích bề mặt, mặt cắt, quan hệ không gian giữa các vật thể 3D.
- **Transformational geometry** — Phép tịnh tiến, quay, phản chiếu, vị tự, đối xứng, hợp các biến đổi.
- **Trigonometric geometry** — Lượng giác tam giác vuông, định lý sin, định lý cosin, công thức diện tích lượng giác.
- **Computational geometry** — Bài hình hữu hạn về điểm, đường, đa giác, bao lồi, sơ đồ Voronoi, thuật toán hình học.

### 3. Calculus
Giới hạn, vi phân, tích phân, chuỗi vô hạn, và phân tích hàm dựa trên giải tích. **Loại trừ** giải tích dựa trên chứng minh, câu hỏi lý thuyết độ đo trừu tượng, và phương trình vi phân là đối tượng nghiên cứu chính.
- **Limits and continuity** — Tính giới hạn, giới hạn một phía, giới hạn vô hạn, tiệm cận, tính chất liên tục.
- **Differentiation** — Tính đạo hàm, đạo hàm cấp cao, đạo hàm ẩn, đạo hàm logarit, đạo hàm dùng quy tắc chuẩn.
- **Applications of derivatives** — Tối ưu hóa, tốc độ liên quan, đơn điệu, lồi lõm, tiếp tuyến, xấp xỉ tuyến tính, cực trị.
- **Integration** — Nguyên hàm, tích phân xác định, tích phân suy rộng, tích phân dùng kỹ thuật chuẩn.
- **Applications of integration** — Diện tích, thể tích, độ dài cung, giá trị trung bình, công, khối lượng, mật độ xác suất, đại lượng tích lũy.
- **Infinite sequences and series** — Phân tích hội tụ, chuỗi lũy thừa, chuỗi Taylor, bán kính hội tụ, xấp xỉ chuỗi.
- **Multivariable calculus** — Đạo hàm riêng, gradient, đạo hàm có hướng, tích phân bội, cực trị có điều kiện, đổi biến.
- **Vector calculus** — Trường vector, tích phân đường, tích phân mặt, divergence, curl, định lý Green, định lý Stokes, định lý divergence.

### 4. Linear Algebra
Vector, ma trận, không gian vector hữu hạn chiều, biến đổi tuyến tính, và tính toán phổ. **Loại trừ** lý thuyết module trừu tượng, giải tích hàm, và phân loại cấu trúc dựa trên chứng minh trừ khi đáp án là tính toán/phân loại kiểm tra trực tiếp được.
- **Vectors and vector spaces** — Tổ hợp tuyến tính, span, độc lập, cơ sở, chiều, tọa độ.
- **Matrices and matrix operations** — Số học ma trận, ma trận nghịch đảo, chuyển vị, hạng, phép toán ma trận khối.
- **Systems of linear equations** — Giải hệ bằng phép rút gọn hàng, khử Gauss, kiểm tra nhất quán, dạng nghiệm tham số hóa.
- **Linear transformations** — Hạt nhân, ảnh, biểu diễn ma trận, đại lượng rank-nullity, biểu diễn đổi cơ sở.
- **Determinants** — Tính định thức, dùng để kiểm tra khả nghịch, tỷ lệ thể tích, đồng nhất thức ma trận.
- **Eigenvalues and eigenvectors** — Đa thức đặc trưng, giá trị riêng, không gian riêng, chéo hóa, dữ liệu phổ.
- **Inner product spaces** — Trực giao, phép chiếu, cơ sở Gram-Schmidt, nghiệm bình phương tối thiểu, chuẩn, góc.
- **Matrix decompositions and canonical forms** — LU, QR, SVD, phân tích phổ, dạng Jordan, dạng chuẩn liên quan.
- **Numerical linear algebra** — Phương pháp tính cho hệ tuyến tính, bài giá trị riêng, điều kiện, ổn định, xấp xỉ quy mô lớn.
- **Tensor and multilinear algebra** — Tích tensor, dạng song tuyến, ánh xạ đa tuyến, biểu diễn tọa độ.

### 5. Abstract Algebra
Cấu trúc đại số như nhóm, vành, trường, module, biểu diễn. **Loại trừ** đề chứng minh dài; bài nên hỏi tính toán, phân loại cấu trúc cụ thể, ví dụ tường minh, hoặc đầu ra đại số hữu hạn.
- **Group theory** — Nhóm, nhóm con, nhóm cyclic, nhóm hoán vị, lớp kề, nhóm thương, đồng cấu, tác động nhóm.
- **Ring theory** — Vành, ideal, vành thương, đơn vị, ước của 0, vành đa thức, đồng cấu vành.
- **Field theory** — Trường, mở rộng trường, trường hữu hạn, tính bất khả quy, phần tử đại số, bậc mở rộng.
- **Module theory** — Module trên vành, module con, module thương, module tự do, đồng cấu module.
- **Galois theory** — Tính/xác định trường phân rã, nhóm Galois, tự đẳng cấu, dữ liệu đại số liên quan tính giải được.
- **Representation theory** — Biểu diễn nhóm, đặc trưng, không gian bất biến, phân tích thành bất khả quy.
- **Universal algebra and algebraic structures** — Nửa nhóm, monoid, lattice, đại số Boole, hệ đại số liên quan.
- **Computational algebra** — Cơ sở Gröbner, rút gọn đa thức ký hiệu, cấu trúc đại số hữu hạn, đầu ra đại số thuật toán.
- **Commutative algebra** — Phân tích sơ cấp, địa phương hóa, lý thuyết chiều, hoàn thành, hàm và chuỗi Hilbert-Samuel.
- **Homological Algebra** — Hàm tử Ext và Tor, phức xích, hàm tử dẫn xuất, phép phân giải.

### 6. Number Theory
Cấu trúc số nguyên, tính chia hết, số học modular, ràng buộc Diophantine, và hàm số học. **Loại trừ** lý thuyết số dựa trên chứng minh trừ khi đáp án là giá trị/phân loại/ví dụ/phản ví dụ/tập hữu hạn kiểm tra trực tiếp được.
- **Elementary number theory** — Tính chia hết, số nguyên tố, ƯCLN, BCNN, thuật toán Euclid, phân tích thừa số nguyên tố.
- **Modular arithmetic and congruences** — Giải đồng dư, nghịch đảo modular, định lý thặng dư Trung Hoa, lũy thừa modular.
- **Diophantine equations** — Tìm/phân loại nghiệm nguyên của phương trình tuyến tính, bậc hai, đa thức, mũ.
- **Multiplicative functions** — Hàm phi Euler, hàm ước, hàm Möbius, hàm số học liên quan.
- **Quadratic residues and reciprocity** — Ký hiệu Legendre, ký hiệu Jacobi, lớp thặng dư, đồng dư bậc hai.
- **Analytic number theory** — Tính/ước lượng hàm đếm số nguyên tố, giá trị hàm zeta, chuỗi Dirichlet, hành vi tiệm cận số học.
- **Algebraic number theory** — Trường số, vành số nguyên, ideal, chuẩn, vết, nhóm lớp, đơn vị.
- **Computational number theory** — Kiểm tra nguyên tố, thuật toán phân tích, thuật toán modular, tính toán số học mật mã.

### 7. Discrete Mathematics and Combinatorics
Cấu trúc hữu hạn hoặc đếm được, đếm, đồ thị, quan hệ, hệ rời rạc. **Loại trừ** lập luận tổ hợp chỉ-chứng-minh trừ khi đáp án là một số đếm, cấu trúc, phân loại, ví dụ, phản ví dụ, hoặc đối tượng hữu hạn.
- **Basic counting principles** — Hoán vị, tổ hợp, bao hàm-loại trừ, nguyên lý chuồng bồ câu, đếm có ràng buộc.
- **Enumerative combinatorics** — Đếm đối tượng có cấu trúc, tính phân hoạch, đánh giá đồng nhất thức tổ hợp.
- **Generating functions** — Hàm sinh thường/mũ, trích xuất hệ số, phương pháp giải truy hồi.
- **Graph theory** — Đường đi, chu trình, cây, liên thông, tô màu, ghép cặp, luồng, tính phẳng, bất biến đồ thị.
- **Extremal combinatorics** — Tìm kích thước lớn nhất/nhỏ nhất của đối tượng rời rạc dưới ràng buộc.
- **Probabilistic combinatorics** — Phân tích cấu trúc rời rạc ngẫu nhiên và bài đếm dựa trên xác suất.
- **Design theory and finite geometry** — Thiết kế khối, cấu trúc tỷ lệ hữu hạn, hình vuông Latin, cấu hình tổ hợp.
- **Discrete structures** — Quan hệ, quan hệ tương đương, thứ tự bộ phận, automata hữu hạn.
- **Matroid theory** — Hệ độc lập, hàm hạng, mạch, cơ sở, matroid biểu diễn được.

### 8. Probability and Statistics
Bất định, biến ngẫu nhiên, phân phối, suy luận thống kê, suy luận dựa trên dữ liệu. **Loại trừ** diễn giải dữ liệu mở, phê bình thống kê dạng tiểu luận, và lý thuyết xác suất dựa trên chứng minh trừ khi đáp án cuối kiểm chứng trực tiếp được.
- **Probability foundations** — Sự kiện, không gian mẫu, xác suất có điều kiện, độc lập, quy tắc Bayes, tiên đề xác suất.
- **Random variables and distributions** — Phân phối rời rạc/liên tục, hàm phân phối tích lũy, mật độ, moment, biến đổi.
- **Joint distributions and dependence** — Biên, có điều kiện, hiệp phương sai, tương quan, độc lập, đại lượng phân phối đa biến.
- **Expectation and variance** — Kỳ vọng, phương sai, hiệp phương sai, hàm sinh moment, đồng nhất thức kỳ vọng.
- **Stochastic processes** — Xích Markov, quá trình Poisson, martingale, bước ngẫu nhiên, chuyển động Brown, hệ ngẫu nhiên theo thời gian.
- **Limit theorems** — Luật số lớn, định lý giới hạn trung tâm, hội tụ theo xác suất/phân phối/trung bình.
- **Statistical inference** — Ước lượng, khoảng tin cậy, kiểm định giả thuyết, p-value, phân phối mẫu.
- **Bayesian statistics** — Prior, likelihood, posterior, cập nhật liên hợp, tóm tắt posterior, quy tắc quyết định Bayes.
- **Regression and statistical modeling** — Hồi quy tuyến tính, mô hình tuyến tính tổng quát, phần dư, độ phù hợp, dự báo.
- **Experimental design and causal inference** — Cấu trúc ngẫu nhiên hóa, gây nhiễu, hiệu ứng điều trị, phân khối, estimand nhân quả.

### 9. Differential Equations and Dynamical Systems
Phương trình của sự thay đổi, tiến hóa theo thời gian, ổn định, hành vi định tính/số của hệ động lực. **Loại trừ** lý thuyết tồn tại dựa trên chứng minh trừ khi đáp án là phân loại, nghiệm, giá trị tham số, hoặc đại lượng tính được kiểm chứng được.
- **First-order ordinary differential equations** — Giải phương trình tách biến, tuyến tính, exact, autonomous, Bernoulli.
- **Higher-order ordinary differential equations** — Giải ODE tuyến tính, phương trình hệ số hằng, biến thiên tham số, hệ số bất định.
- **Systems of differential equations** — Hệ tuyến tính, phase portrait, ma trận mũ, động lực ghép cặp.
- **Partial differential equations** — Giải/phân loại phương trình nhiệt, sóng, Laplace, transport, và các phương trình đạo hàm riêng khác.
- **Boundary value problems** — Giải phương trình vi phân với ràng buộc biên, điều kiện giá trị riêng, cấu trúc Sturm-Liouville.
- **Initial value problems** — Tính nghiệm tường minh, nghiệm xấp xỉ, giá trị nghiệm từ dữ liệu ban đầu.
- **Dynamical systems** — Ánh xạ lặp, dòng, điểm bất động, quỹ đạo tuần hoàn, không gian pha, hành vi dài hạn.
- **Stability theory** — Phân loại ổn định cân bằng, tuyến tính hóa, hành vi Lyapunov, độ nhạy với nhiễu.
- **Bifurcation theory** — Xác định thay đổi định tính phụ thuộc tham số trong cân bằng, chu kỳ, hành vi hệ.
- **Numerical differential equations** — Phương pháp Euler, Runge-Kutta, sai phân hữu hạn, phần tử hữu hạn, kiểm tra ổn định cho lược đồ.

### 10. Analysis
Tính chất chặt chẽ của hàm số, giới hạn, không gian, hội tụ, tích phân, và toán tử. **Loại trừ** đề dựa trên chứng minh; bài nên tập trung vào phân loại, tính toán, ví dụ, phản ví dụ, hoặc kiểm tra giả thiết của định lý có tên.
- **Real analysis** — Dãy, giới hạn, liên tục, khả vi, tích phân Riemann, hội tụ đều, hành vi hàm giá trị thực.
- **Metric spaces** — Phân loại tập mở/đóng, compact, đầy đủ, liên thông, hội tụ, liên tục trong không gian mét.
- **Measure theory** — Sigma-đại số, hàm đo được, độ đo, tích phân Lebesgue, định lý hội tụ, độ đo tích.
- **Functional analysis** — Không gian định chuẩn, không gian Banach, không gian Hilbert, toán tử tuyến tính bị chặn, không gian đối ngẫu, toán tử compact.
- **Complex analysis** — Hàm giải tích, thặng dư, tích phân đường, chuỗi Laurent, ánh xạ bảo giác, điểm kỳ dị.
- **Fourier analysis** — Chuỗi Fourier, biến đổi Fourier, tích chập, biểu diễn miền tần số, khai triển trực giao.
- **Harmonic analysis** — Phân tích hàm, hàm cực đại, tích phân kỳ dị, phân tích trên nhóm hoặc không gian.
- **Asymptotic analysis** — Quan hệ Big-O, khai triển tiệm cận, xấp xỉ giới hạn, xấp xỉ nhiễu loạn, hành vi tham số cực trị.
- **Calculus of variations** — Phiếm hàm, phương trình Euler-Lagrange, hàm cực trị, đại lượng tối ưu hóa biến phân.

### 11. Topology and Geometry
Không gian trừu tượng, đa tạp, độ cong, bất biến tô-pô, và cấu trúc hình học nâng cao. **Loại trừ** hình học Euclid sơ cấp là chủ đề chính và tô-pô dựa trên chứng minh trừ khi đáp án là bất biến, phân loại, cấu trúc, hoặc ví dụ kiểm tra trực tiếp được.
- **Point-set topology** — Không gian tô-pô, tập mở, cơ sở, liên tục, compact, liên thông, tiên đề tách.
- **Algebraic topology** — Tính/xác định nhóm đồng luân, nhóm cơ bản, đồng điều, đối đồng điều, không gian phủ, bất biến tô-pô.
- **Differential topology** — Đa tạp trơn, không gian tiếp tuyến, tính transversal, nhúng, immersion, lý thuyết bậc.
- **Differential geometry** — Tính chất đường cong, mặt, đa tạp, độ cong, liên thông, geodesic, tensor hình học.
- **Riemannian geometry** — Metric Riemann, khoảng cách geodesic, tensor độ cong, độ cong tiết diện, thể tích Riemann.
- **Symplectic and contact geometry** — Dạng symplectic, hệ Hamilton, cấu trúc contact, biến đổi canonical.
- **Geometric topology** — Đa tạp, nút, link, nhóm lớp ánh xạ, cấu trúc tô-pô chiều thấp.
- **Convex geometry** — Tập lồi, polytope, hàm tựa, kết quả tách, vật thể lồi.
- **Algebraic geometry** — Đa tạp, lược đồ, ideal, vành tọa độ, cấu xạ, ước, hình học đại số tính toán.

### 12. Optimization and Numerical Mathematics
Tối ưu hóa, xấp xỉ, toán tính toán, ổn định số, và phương pháp giải thuật toán. **Loại trừ** thiết kế thuật toán mở hoặc thảo luận hiệu năng thực nghiệm trừ khi đáp án là giá trị tính được, phân loại, phương pháp được chọn, hoặc đầu ra hữu hạn.
- **Linear programming** — Mục tiêu tuyến tính, ràng buộc tuyến tính, miền khả thi, phương pháp đơn hình, đối ngẫu, độ nhạy.
- **Convex optimization** — Tập lồi, hàm lồi, điều kiện KKT, đối ngẫu, phép chiếu, phương pháp proximal.
- **Nonlinear optimization** — Tối ưu phi tuyến không ràng buộc/có ràng buộc dùng gradient, Hessian, nhân tử Lagrange, cực trị địa phương.
- **Discrete and integer optimization** — Tối ưu trên tập hữu hạn, tổ hợp, ràng buộc nguyên.
- **Dynamic programming and optimal control** — Truy hồi Bellman, quyết định tuần tự, ràng buộc điều khiển, quỹ đạo tối ưu.
- **Numerical analysis** — Xấp xỉ nghiệm, tích phân, đạo hàm, nội suy, nghiệm của bài toán liên tục.
- **Approximation theory** — Xấp xỉ đa thức, spline, xấp xỉ trực giao, bài xấp xỉ tốt nhất.
- **Error analysis and stability** — Điều kiện, lỗi làm tròn, lỗi cắt cụt, tốc độ hội tụ, tính chất ổn định thuật toán.
- **Numerical optimization** — Gradient descent, phương pháp Newton, quasi-Newton, tối ưu ngẫu nhiên, chẩn đoán hội tụ.

### 13. Logic, Set Theory, and Foundations
Hệ hình thức, cấu trúc lý thuyết tập hợp, tính tính được, độ phức tạp, và đối tượng toán nền tảng. **Loại trừ** viết chứng minh phi hình thức hoặc thảo luận triết học; bài nên dùng giá trị chân lý, thao tác hình thức hữu hạn, phân loại, cấu trúc, hoặc ví dụ tường minh.
- **Mathematical logic** — Logic mệnh đề, logic vị từ, ngôn ngữ hình thức, cú pháp, ngữ nghĩa, bảng chân lý, tương đương logic.
- **Proof theory** — Tính chất hình thức của hệ suy diễn, quy tắc dẫn xuất, sequent calculi, nhất quán, normalization như đối tượng toán.
- **Model theory** — Cấu trúc, diễn giải, thỏa mãn, định nghĩa được, tương đương sơ cấp, lý thuyết của cấu trúc toán.
- **Set theory** — Tập hợp, quan hệ, hàm, lực lượng, ordinal, cardinal, thứ tự tốt, hệ tập hợp tiên đề.
- **Computability theory** — Máy Turing, tính quyết định được, tập đếm được đệ quy, phép quy, hàm tính được.
- **Complexity theory** — Lớp độ phức tạp, phép quy, tính đầy đủ, độ phức tạp thời gian, độ phức tạp không gian, độ khó tính toán.
- **Category theory** — Phạm trù, hàm tử, biến đổi tự nhiên, giới hạn, đối giới hạn, liên hợp, cấu trúc phạm trù.
- **Type theory and formal systems** — Calculi định kiểu, hạng tử hình thức, phán đoán, normalization, diễn giải tính toán của logic.

---

## 8. Các bài toán mẫu được chấp nhận (Accepted Examples)

> Dưới đây là 10 bài toán mẫu được chấp nhận, kèm phân loại Domain/Sub-domain/Problem Type/Solution Type, đề bài, lý do chọn domain, và đáp án cuối. (Lời giải đầy đủ rất dài; ở đây tóm tắt cấu trúc và ghi lại đáp án cuối.)

### Example Problem #1
- **Domain:** Probability and Statistics
- **Sub-Domain:** Limit Theorems
- **Problem Type:** Parameter Identification
- **Solution Type:** Numerical Scalar Approximation
- **Đề bài (tóm tắt):** Cho $U_1,\dots,U_n$ độc lập với mật độ $f_{U_i}(u\mid\theta)=\theta u^{-(\theta+1)}I(u\ge1)$, $\theta>0$. Đặt $V_i=U_i^{-2}$, $V_{(1)}\le\cdots\le V_{(n)}$ là thống kê thứ tự, $R_n=\max_{1\le i\le n}\ln U_i$, $\theta=2$. Cho $a>0, b\in\mathbb{R}$ sao cho $an^b(V_{(n)}-e^{-2R_n}-2V_{(n-1)}+V_{\lfloor\ln n\rfloor})$ hội tụ theo phân phối tới biến ngẫu nhiên không suy biến với phương sai 1 khi $n\to\infty$. Tính $a+b$ (làm tròn 4 chữ số thập phân).
- **Đáp án:** $\boxed{3.4641}$ (vì $a=2\sqrt{3}$, $b=0$).

### Example Problem #2
- **Domain:** Logic and Foundations
- **Sub-Domain:** Mathematical Logic
- **Problem Type:** Classification by Exhaustive Solution Set
- **Solution Type:** Vector
- **Đề bài (tóm tắt):** Cho ngôn ngữ $L=\{E,P,Q\}$ với $E$ là quan hệ nhị phân, $P,Q$ là quan hệ một ngôi. Định nghĩa 4 color-type theo giá trị chân lý của $P,Q$. $\mathcal{K}$ là lớp các $L$-cấu trúc hữu hạn thỏa: $E$ là quan hệ tương đương; đúng 12 lớp tương đương; mỗi lớp có đúng 10 phần tử; mỗi lớp có một trong 6 color-profile cho trước. Với $M_0\in\mathcal{K}$ có $m(M_0)=(1,2,3,1,4,1)$, xác định tập đầy đủ các vector $m(N)$ sao cho $N\in\mathcal{K}$ và $N\equiv_4 M_0$ (tương đương theo các câu first-order có quantifier rank ≤ 4).
- **Đáp án:** $\boxed{\{(1,n_2,n_3,1,9-n_2-n_3,1):n_2,n_3\in\mathbb{Z}_{\ge0},\ 3\le n_2+n_3\le 6\}}$

### Example Problem #3
- **Domain:** Optimization and Numerical Mathematics
- **Sub-Domain:** Approximation Theory
- **Problem Type:** Optimization
- **Solution Type:** Vector
- **Đề bài (tóm tắt):** Cho $\mathcal{P}_5$ là không gian đa thức bậc ≤ 5. Với $p\in\mathcal{P}_5$, định nghĩa $\Lambda(p)=\max_{x\in X}w(x)|p(x)-y(x)|$ trên tập $X=\{-5,-4,-2,-1,0,1,3,4,6,7,9,10\}$ với các giá trị $w(x), y(x)$ cho trong bảng. Trong tất cả đa thức $p(x)=a_0+a_1x+\cdots+a_5x^5$ tối thiểu hóa $\Lambda(p)$, xác định vector hệ số.
- **Đáp án:** Vector hệ số $\boxed{\left(-\frac{3}{7},\frac{5}{4},-\frac{2}{3},\frac{7}{20},-\frac{1}{30},\frac{1}{210}\right)^T}$ (trình bày dạng cột).

### Example Problem #4
- **Domain:** Geometry and Topology
- **Sub-Domain:** Riemannian Geometry
- **Problem Type:** Exact Computation
- **Solution Type:** Matrix
- **Đề bài (tóm tắt):** Cho $M=\mathbb{R}^3$ với metric Riemann $g=dx^2+e^{2x}dy^2+e^{2x+2y}dz^2$. Với quy ước $\mathrm{Ric}_{jk}=R^i{}_{ijk}$, tính ma trận $3\times3$ của Ricci endomorphism $\mathrm{Ric}^\sharp: T_pM\to T_pM$ tại $p=(0,0,0)$ trong cơ sở tọa độ $(\partial_x,\partial_y,\partial_z)$.
- **Đáp án:** $\boxed{\begin{pmatrix}2&0&0\\0&3&0\\0&0&3\end{pmatrix}}$

### Example Problem #5
- **Domain:** Number Theory
- **Sub-Domain:** Elementary Number Theory
- **Problem Type:** Exact Computation
- **Solution Type:** Set or Multiset of Objects
- **Đề bài (tóm tắt):** Cho $g_k(x)=\dfrac{x^2+4x+k}{x^2-2x-8}$. Một số nguyên $x$ là "admissible" nếu $-75\le x\le75$, $x$ không chia hết cho 3, $x\not\equiv2\pmod5$, và $x\ne-2,4$. Một số nguyên $k$ là "balanced" nếu có đúng 4 số admissible $x$ mà $g_k(x)$ là số nguyên thỏa $1<g_k(x)<14$, và trong 4 đầu ra đó có đúng 3 giá trị phân biệt. Xác định tập đầy đủ các số nguyên balanced $k$.
- **Đáp án:** $\boxed{\{1264, 3244, 15844\}}$

### Example Problem #6
- **Domain:** Differential Equations and Dynamical Systems
- **Sub-Domain:** Bifurcation Theory
- **Problem Type:** Transformation Between Representations
- **Solution Type:** Polynomial or Rational Function
- **Đề bài (tóm tắt):** Hệ autonomous trên $\mathbb{R}^4$ với tọa độ $(x,y,u,v)$ và tham số $\nu,\lambda,\mu$. Bài liên quan rút gọn điều kiện cân bằng và suy biến thành một phương trình vô hướng, tham số hóa nhánh cusp, đưa về biểu đồ tham số phi tuyến $(L,M)$, và xác định đa thức Taylor có trọng số $Q_{\le14}(L,M)$ gồm các đơn thức có trọng số ≤ 14.
- **Đáp án:** Một đa thức trọng số dạng đóng (rất dài), với dạng:
$$Q_{\le14}(L,M)=\tfrac{2459009326700126284 5433}{34012224}L^7-\tfrac{105620014432523345}{1889568}L^6+\tfrac{16682667515579699389}{1259712}L^5M+\tfrac{5036939317}{972}L^5-\tfrac{39465015209789}{34992}L^4M-\tfrac{292693}{432}L^4+\tfrac{30582145}{243}L^3M+\tfrac{1}{3}L^3-\tfrac{65}{2}L^2M+M^2$$
(Xem PDF gốc trang ~49 để biết hệ số chính xác đầy đủ.)

### Example Problem #7
- **Domain:** Linear Algebra
- **Sub-Domain:** Finite-Dimensional Linear Algebra
- **Problem Type:** Optimization
- **Solution Type:** Set or Multiset of Objects
- **Đề bài (tóm tắt):** Cho $\mathcal{M}$ là tập tất cả bộ ba $(A,B,C)$ gồm các ma trận phức $3\times3$ thỏa $[A,B]=C$, $[B,C]=A$, $[C,A]=B$, với $[X,Y]=XY-2YX$. Đặt $p:=\inf_{(A,B,C)\in\mathcal{M}}\mathrm{Re}(\mathrm{tr}(e^A+e^B+e^C))$ và $q:=\sup(\dots)$. Tìm multiset $\{p,q\}$.
- **Đáp án:** $\boxed{\left\{3\left(e^{-1}+e^{-3/2}+e^{-11/4}\right),\ 2\left(e+e^{3/2}+e^{11/4}\right)+e^{-1}+e^{-3/2}+e^{-11/4}\right\}}$

### Example Problem #8
- **Domain:** Abstract Algebra
- **Sub-Domain:** Group Theory
- **Problem Type:** Solve for Unknowns
- **Solution Type:** Canonical Form
- **Đề bài (tóm tắt):** Cho $\mathbb{F}_2$ là trường 2 phần tử. Xác định số ma trận $M\in M_6(\mathbb{F}_2)$ (ma trận $6\times6$ phần tử trong $\mathbb{F}_2$) có đa thức đặc trưng $\chi_M(x)=x^6+x^5+x^3+x+1\in\mathbb{F}_2[x]$. Biểu diễn đáp án là số nguyên dương.
- **Đáp án:** $\boxed{455081984}$

### Example Problem #9
- **Domain:** Calculus
- **Sub-Domain:** Single-Variable Calculus
- **Problem Type:** Optimization
- **Solution Type:** Vector
- **Đề bài (tóm tắt):** Với số thực $a,b$, định nghĩa $\Phi(a,b)=\int_0^1(1+x)|x^4-ax-b|\,dx$. Cho $(a_0,b_0)$ là điểm tối thiểu duy nhất. Tính bộ $\left(a_0, b_0, \Phi(a_0,b_0), \int_0^1 x^2(1+x)|x^4-a_0x-b_0|\,dx\right)$.
- **Đáp án (dạng đóng tham số hóa qua $\alpha,\delta$):**
$$\boxed{\left(\tfrac{\alpha(\alpha^2+\delta^2)}{2},\ -\tfrac{(\alpha^2-\delta^2)(3\alpha^2+\delta^2)}{16},\ A_4+A_5,\ A_6+A_7-\tfrac{\alpha(\alpha^2+\delta^2)}{2}(A_3+A_4)+\tfrac{(\alpha^2-\delta^2)(3\alpha^2+\delta^2)}{16}(A_2+A_3)\right)}$$
trong đó $\alpha$ là nghiệm duy nhất trong $(1,\tfrac{6}{5})$ của $36t^4+176t^3+192t^2-192t-293=0$, $\delta=\tfrac{3}{2(\alpha+2)}$, và $A_n=\tfrac{1}{n+1}-\tfrac{2}{n+1}\left[\left(\tfrac{\alpha+\delta}{2}\right)^{n+1}-\left(\tfrac{\alpha-\delta}{2}\right)^{n+1}\right]$.

### Example Problem #10
- **Domain:** Differential Equations and Dynamical Systems
- **Sub-Domain:** Partial Differential Equations
- **Problem Type:** Symbolic Derivation
- **Solution Type:** Set or Multiset of Objects
- **Đề bài (tóm tắt):** Xét phương trình Burgers không nhớt $u_t+(u^2/2)_x=0$ với nghiệm entropy. Cho $w_1,w_2,w_3>0$, $a_1=0$, $a_{k+1}=a_k+w_k$. Dữ kiện ban đầu là profile bậc thang $4\to3\to1\to2\to0$ qua các điểm $a_1,a_2,a_3,a_4$. $n(t)$ đếm số điểm gián đoạn; $\mathcal{T}$ là multiset các thời điểm gián đoạn (mỗi thời điểm $\tau$ với bội $n(\tau^-)-n(\tau)$), $\mathcal{T}$ có đúng 2 phần tử. Xác định $\mathcal{T}$ dưới dạng đóng theo $w_1,w_2,w_3$, với phân chia trường hợp bằng bất phương trình tường minh.
- **Đáp án:**
$$\boxed{\mathcal{T}=\{\tau_1,\tau_2\},\quad \tau_1=\min(t_L,t_R),\quad \tau_2=\begin{cases}\frac{w_1+3w_2+2w_3}{4},& t_L\le t_R,\ w_1+3w_2\le2w_3,\\[4pt]\frac{(\sqrt{2w_1+6w_2}+2\sqrt{w_3})^2}{16},& t_L\le t_R,\ 2w_3\le w_1+3w_2\le18w_3,\\[4pt]\frac{w_1+3w_2+6w_3}{6},& t_L\le t_R,\ w_1+3w_2\ge18w_3,\\[4pt]\frac{3w_1+w_2+2w_3}{6},& t_R\le t_L\end{cases}}$$
với $t_L$ và $t_R$ được định nghĩa từng khúc theo $w_1,w_2,w_3$ (xem chi tiết PDF gốc trang ~70).

---

## 9. Phụ lục LaTeX (LaTeX Formatting Appendix)

### 9.1. General Math Formatting Guidelines
Dùng ký hiệu LaTeX cho các ký hiệu toán học trong đề bài, đáp án cuối, và viết lại từng bước. **Tránh dùng LaTeX cho định dạng phi-toán** (ví dụ bullet point, bôi đậm).

#### LaTeX Formatting
- `$...$` và `$$...$$` **được phép**.
- `\(...\)` và `\[...\]` **KHÔNG được phép**.

#### Braces (Dấu ngoặc nhọn)
- Tránh dùng ngoặc nhọn thừa không render (ví dụ `{\frac{3}{4}}\cdot{\frac{5}{8}}`).
- Đảm bảo escape ngoặc nhọn khi cần hiển thị (ví dụ `\in\{1,2,3\}`).

#### Polynomial Formatting
- Luôn sắp xếp các hạng tử đa thức theo **bậc số mũ giảm dần**.

#### Fractional Expressions
- Dùng phân số inline (ví dụ `\frac{3}{4}`).
- Đơn giản hóa phân số khi có thể, trừ khi dạng chưa rút gọn thêm ngữ cảnh.

#### Units and Measurements
- Bao gồm đơn vị trong chú thích khi liên quan (ví dụ `9.8 \, \text{m/s}^2`).

#### Special Characters and Symbols
- Dùng ký hiệu toán đúng (ví dụ `\leq` thay vì `<=`).
- Định nghĩa tất cả ký hiệu đặc biệt được dùng.

#### Other Style
- **Không** dùng `\item[]` cho danh sách.
- **Không** dùng `**...**` để bôi đậm Step hay Title.
- **Không** dùng lệnh chỉ hợp lệ trong KaTeX (ví dụ `\lang` thay vì `\langle`).

#### Rounding and Approximations
- Nếu cần xấp xỉ thập phân trong đáp án cuối, **hướng dẫn làm tròn phải nêu trong đề bài** (ví dụ "round to at least four decimal places"). Không có hướng dẫn này thì lựa chọn làm tròn của mô hình không thể coi là lỗi.

#### Uniformity
- Duy trì định dạng nhất quán cho mọi bài nộp.

### 9.2. Examples of Accepted LaTeX Formatting (Bảng tham chiếu)

| Category | Numerical | LaTeX Equivalent | Rendered |
|---|---|---|---|
| **Fractions** | `1/2` | `\frac{1}{2}` | ½ |
| | `1/(2+3)` | `\frac{1}{2+3}` | 1/(2+3) |
| **Infinity** | `∞` | `\infty` | ∞ |
| **Exponents** | `2^3` | `2^{3}` | 2³ |
| | `e^2` | `e^{2}` | e² |
| | `x^(1/2)` | `x^{\frac{1}{2}}` | x^(½) |
| | `sqrt(2)` | `\sqrt{2}` | √2 |
| | `sqrt[3]{8}` | `\sqrt[3]{8}` | ∛8 |
| **Mathematical Constants** | `pi` | `\pi` | π |
| | `e` | `e` | e |
| | `i` | `i` | i |
| **Golden Ratio** | `phi` | `\phi` | φ |
| **Trigonometry** | `sin(pi/2)` | `\sin(\pi/2)` | sin(π/2) |
| | `cos(0)` | `\cos(0)` | cos(0) |
| | `tan(π/4)` | `\tan(\pi/4)` | tan(π/4) |
| **Logarithms** | `ln(2)` | `\ln(2)` | ln(2) |
| | `log10(100)` | `\log_{10}(100)` | log₁₀(100) |
| | `log2(x)` | `\log_{2}(x)` | log₂(x) |
| **Set Notation** | `{1, 2, 3}` | `\{1, 2, 3\}` | {1,2,3} |
| | `{}` | `$\emptyset$` | ∅ |
| | `R=(-∞,∞)` | `$\mathbb{R}$` | ℝ |
| | `p,q∈Z (integers)` | `$\mathbb{Q}$` | ℚ |
| | `N={1,2,3,4,…}` | `$\mathbb{N}$` | ℕ |
| | `{x|x>0}` | `$\{ x \mid x > 0 \}$` | {x \| x>0} |
| | `x ∈ A` | `x \in A` | x∈A |
| | `x ∉ A` | `x \notin A` | x∉A |
| | `A ∪ B` | `A \cup B` | A∪B |
| | `A ∩ B` | `A \cap B` | A∩B |
| | `A \ B` | `A \setminus B` | A∖B |
| | `P(A)` | `\mathcal{P}(A)` | 𝒫(A) |
| | `∀x ∈ A` | `\forall x \in A` | ∀x∈A |
| | `∃x ∈ A` | `\exists x \in A` | ∃x∈A |
| **Combinatorics** | `C(5, 2)` | `\binom{5}{2}` | C(5,2) |
| | `P(5, 2)` | `{}_5P_2` | ₅P₂ |
| | `5!` | `5!` | 5! |
| **Integrals** | `∫_0^1 f(x) dx` | `\int_{0}^{1} f(x) \, dx` | ∫₀¹ f(x)dx |
| | `∫ f(x) dx` | `\int f(x) \, dx` | ∫f(x)dx |
| | `∬_R f(x,y) dx dy` | `\iint_{R} f(x, y) \, dx \, dy` | ∬ |
| | `∭ f(x,y,z) dx dy dz` | `\iiint f(x, y, z) \, dx \, dy \, dz` | ∭ |
| | `∮_C f(z) dz` | `\oint_{C} f(z) \, dz` | ∮ |
| **Matrices** | `[[a,b],[c,d]]` | `\begin{bmatrix} a & b \\ c & d \end{bmatrix}` | matrix 2×2 |
| | `[[a,b,c],[d,e,f],[g,h,i]]` | `\begin{bmatrix} a & b & c \\ d & e & f \\ g & h & i \end{bmatrix}` | matrix 3×3 |
| | `I` | `\mathbf{I}` | **I** |
| | `det(A)` | `\det(A)` | det(A) |
| | `A^T` | `A^{T}` | Aᵀ |
| **Closed-Form Equations** | `(-b ± sqrt(b^2-4ac))/(2a)` | `\frac{-b \pm \sqrt{b^2-4ac}}{2a}` | công thức nghiệm |
| | `(x+y)^n = sum...` | `(x + y)^n = \sum_{k=0}^n \binom{n}{k} x^{n-k} y^k` | nhị thức |
| | `P(t) = P_0 e^(rt)` | `P(t) = P_0 e^{rt}` | P(t)=P₀eʳᵗ |
| | `S = a/(1-r)` | `S = \frac{a}{1-r}` | S=a/(1−r) |
| **Approximations** (phải nêu trong đề nếu dùng) | `sqrt(2) ≈ 1.414` | `\sqrt{2} \approx 1.414` | √2≈1.414 |
| | `pi ≈ 3.1416` | `\pi \approx 3.1416` | π≈3.1416 |
| | `ln(2) ≈ 0.693` | `\ln(2) \approx 0.693` | ln(2)≈0.693 |
| **Vectors** | `[1, 2, 3]` | `\begin{bmatrix} 1 & 2 & 3 \end{bmatrix}` | vector hàng |
| | `[1 \ 2 \ 3]` (cột) | `\begin{bmatrix} 1 \\ 2 \\ 3 \end{bmatrix}` | vector cột |
| **Coordinates** | `(3, 4)` | `(3, 4)` | (3,4) |
| | `(x, y, z)` | `(x, y, z)` | (x,y,z) |
| **Intervals** | `(0, 1)` | `(0, 1)` | (0,1) |
| | `[0,1]` | `[0, 1]` | [0,1] |
| | `[0,1)` | `[0, 1)` | [0,1) |

> *(Lưu ý: trong bảng gốc một số ô minh họa dùng `\[...\]` cho coordinates/intervals nhưng phần "LaTeX Formatting" ở trên ghi rõ `\[...\]` KHÔNG được phép — nên ưu tiên dùng `$...$`.)*

---

## 10. Quy tắc ứng xử (Code of Conduct)

> ⚠️ **PLEASE READ:** Tất cả chuyên gia phải tuân thủ Code of Conduct của Project Rainier. Nếu vi phạm **bất kỳ** lý do nào dưới đây, có thể bị **đuổi khỏi dự án ngay lập tức** và/hoặc khỏi mọi hợp tác tương lai với Snorkel:

- **Spam:** Bài nộp thể hiện mẫu ngắn, lặp lại, hoặc theo khuôn mẫu không đạt tiêu chuẩn về tính gốc và sự đầu tư. Nội dung số lượng cao, giá trị thấp làm gián đoạn workflow đồng nghiệp và giảm chất lượng task.
- **Plagiarism (Đạo văn):** Bài nộp giống nội dung bên ngoài hoặc của chuyên gia khác. Gồm prompt/response sao chép, tài liệu xuất bản, hoặc nội dung nội bộ viết lại. Mọi công việc phải gốc và xác thực.
- **LLM Usage:** Bất kỳ dấu hiệu rõ ràng nào về việc dùng mô hình ngôn ngữ theo cách không phù hợp với guidelines dự án (tức **ngoài** việc dùng công cụ kiểm tra chính tả/ngữ pháp bên ngoài). Prompt/response/feedback do LLM tạo trong một task.
- **Repeated Rejections:** Công việc **liên tục** không vượt qua peer review do vấn đề chất lượng, dù đã được hỗ trợ và hành động sửa chữa từ Rainier Team. Feedback thỉnh thoảng là bình thường, nhưng mẫu vấn đề chất lượng liên tục ảnh hưởng hiệu suất downstream.
- **Low AHT (Average Handle Time):** Thời gian hoàn thành gợi ý ưu tiên tốc độ hơn chất lượng. Khuyến khích làm việc kỹ lưỡng, cẩn thận, chi tiết, đạt tiêu chuẩn.
- **Frustrated Expert:** Thông điệp tới Snorkel Team hoặc EC khác (qua Slack hoặc Expert Platform) thể hiện sự thất vọng/tiêu cực ngày càng tăng. Để giữ sự gắn kết và an toàn nhóm, EC phải duy trì quan hệ tôn trọng và chuyên nghiệp với nhân viên Snorkel và EC khác.
- **Insidious Expert:** Tương tác gợi ý nỗ lực tuyển dụng, lôi kéo, hoặc khuyến khích người dùng tham gia nền tảng/chương trình bên ngoài. Hành vi này vi phạm community guidelines và phải dừng ngay.
- **Inappropriate Expert:** Giao tiếp hoặc hành vi không phù hợp, thiếu tôn trọng, hoặc thiếu chuyên nghiệp. Gồm ngôn ngữ tục tĩu/thô tục, hoặc đe dọa nhân viên Snorkel và/hoặc EC khác.

---

## Tóm tắt nhanh các điểm "vàng" cần nhớ

1. **Một bài = một câu hỏi.** Open solution path, closed answer space.
2. **Không dùng LLM** cho bất kỳ phần nào → từ chối thẳng + loại khỏi dự án.
3. **Đáp án duy nhất, đúng, kiểm chứng được.** Không "DNE", không "prove/show that", không đoán được.
4. **Self-contained**, giải được bằng tay (không số > $10^{15}$ hay < $10^{-10}$, không $\sin(5)$, $e^{-3}$, không thuật toán lặp).
5. **Phải đánh bại CẢ HAI mô hình frontier liên tục.**
6. **Lời giải ≥ 3 bước**, mỗi bước đánh số `Step #`, bước cuối `Final Answer: $\boxed{...}$`. Mỗi bước phải kiểm chứng độc lập với đáp án.
7. **13 Domain có quota** — chọn sai domain có thể bị từ chối nếu quota đúng đã đầy.
8. **LaTeX:** chỉ `$...$` và `$$...$$`; không `\(...\)`, `\[...\]`; không `**bold**`, không `\item[]`, không lệnh KaTeX-only.
9. Trong ô Answer **không** dùng `\boxed` (nhưng bọc `$...$`); trong bước lời giải cuối **thì có** `\boxed`.
10. **Quy trình review** chặt: lỗi > 10% (kể cả lỗi LaTeX nhỏ) → "At Risk"; Unlimited = tối đa 40 review/ngày.
