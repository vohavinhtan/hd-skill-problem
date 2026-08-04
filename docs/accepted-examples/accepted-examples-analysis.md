# Phân tích 10 bài toán "Accepted Examples" của Rainier

> Nguồn: `docs/[EXTERNAL] Rainier Project Guidelines .pdf`, mục **Accepted Examples** (trang 33–68).
> File đề + lời giải đầy đủ: [accepted-examples-rewritten.md](accepted-examples-rewritten.md).
> Đối chiếu với: 11 bài trong `workspace/rainier-problem/` và 5 bài trong `docs/passed-examples/`.
>
> Đây là 10 bài đã được **chấp nhận qua review** — tức là chuẩn vàng để mọi bài clone hướng tới. Phân tích dưới đây trả lời 4 câu hỏi của yêu cầu (điểm mạnh, cấu trúc đề, cấu trúc lời giải, kỹ thuật toán) và một phần riêng về **điểm khác biệt** so với phần còn lại.

---

## 0. Bảng tổng quan 10 bài

| # | Domain | Sub-domain | Problem Type | Solution Type | Đáp án (rút gọn) |
|---|---|---|---|---|---|
| 1 | Probability & Statistics | Limit Theorems | Parameter Identification | Numerical Scalar Approx. | $3.4641$ ($a=2\sqrt3,b=0$) |
| 2 | Logic & Foundations | Mathematical Logic | Classification by Exhaustive Solution Set | Vector | tập vector $(1,n_2,n_3,1,9{-}n_2{-}n_3,1)$ |
| 3 | Optimization & Num. Math | Approximation Theory | Optimization | Vector | $(-\tfrac37,\tfrac54,-\tfrac23,\tfrac{7}{20},-\tfrac1{30},\tfrac1{210})^T$ |
| 4 | Geometry & Topology | Riemannian Geometry | Exact Computation | Matrix | $\mathrm{diag}(2,3,3)$ |
| 5 | Number Theory | Elementary Number Theory | Exact Computation | Set/Multiset | $\{1264,3244,15844\}$ |
| 6 | Diff. Eq. & Dyn. Systems | Bifurcation Theory | Transformation Between Representations | Polynomial/Rational | đa thức Weierstrass $Q_{\le14}(L,M)$ |
| 7 | Linear Algebra | Finite-Dim. Linear Algebra | Optimization | Set/Multiset | $\{p,q\}$ qua $e^{-1},e^{-3/2},e^{-11/4}$ |
| 8 | Abstract Algebra | Group Theory | Solve for Unknowns | Canonical Form | $455081984$ |
| 9 | Calculus | Single-Variable Calculus | Optimization | Vector | bộ 4 thành phần tham số hóa qua $\alpha,\delta,A_n$ |
| 10 | Diff. Eq. & Dyn. Systems | Partial Diff. Equations | Symbolic Derivation | Set/Multiset | multiset $\{\tau_1,\tau_2\}$ phân nhánh |

**Quan sát ngay từ bảng:** 9 domain khác nhau (chỉ DiffEq lặp 2 lần), 7 Problem Type khác nhau, và Solution Type lệch mạnh về các kiểu **khó chấm/khó đoán**: 3× Set/Multiset, 3× Vector, 1× Matrix, 1× Canonical Form, 1× Polynomial. Chỉ **một** bài có đáp án là số vô hướng thuần (bài #1, lại còn là số xấp xỉ). Đây là tín hiệu thiết kế rõ rệt: **tránh đáp án "một con số".**

---

## 1. Điểm mạnh (vì sao 10 bài này được chấp nhận)

### 1.1. Mỗi bài có một "bẫy" hoặc cơ chế phân loại sắc bén
Điểm mạnh nổi bật nhất: bài nào cũng có một **lý do cụ thể khiến mô hình frontier trả lời sai**, không phải khó vì "dài/nặng tính toán" mà khó vì một bước nhìn thấu (insight).

- **Bài #1** — bẫy ký hiệu tinh vi: số hạng $V_{\lfloor\ln n\rfloor}$ **không có ngoặc quanh chỉ số** nên là quan sát gốc thứ $\lfloor\ln n\rfloor$, *không phải* thống kê thứ tự $V_{(\lfloor\ln n\rfloor)}$. Mô hình pattern-match "order statistics + extreme value theory" sẽ đi tìm scaling phức tạp; thực ra biểu thức trong ngoặc đã hội tụ về $V-1$, nên $b=0$, $a=2\sqrt3$. **Đáp án đơn giản nhưng chỉ sau khi vượt qua bẫy.**
- **Bài #9** — bác bỏ ansatz hiển nhiên: chứng minh chặt rằng dư $R$ **không thể** đổi dấu đúng một lần (dẫn tới mâu thuẫn $c=4/5$), buộc cấu hình hai nghiệm. Mô hình hay giả định một điểm đổi dấu.
- **Bài #3** — đánh lạc hướng giữa minimax và bình phương tối thiểu: bài yêu cầu xấp xỉ đều có trọng số (sup-norm), và lời giải dùng **đẳng dao động (equioscillation)** 7 điểm dấu $\pm1$ để chứng minh nghiệm duy nhất.
- **Bài #7** — cấu trúc ẩn của commutator sửa đổi $[X,Y]=XY-2YX$ ép phổ thành các "thang" giá trị riêng $1,\tfrac32,\tfrac{11}{4}$; phải phân loại toàn bộ biểu diễn bất khả quy 1/2/3 chiều mới ra được inf/sup.
- **Bài #8** — nhận ra $\chi=p^3$ với $p$ bất khả quy bậc 2 → bài quy về **đếm module trên một DEV (vành định giá rời rạc)** với trường thặng dư $\mathbb F_4$, dùng orbit–stabilizer.

### 1.2. "Open solution path, closed answer space"
Mỗi bài có **một** đáp án duy nhất, đúng, kiểm chứng được — nhưng nhiều đường đi tới. Không bài nào là "prove/show that", không có "DNE", không đáp án đoán được.

### 1.3. Tự chứa và giải được bằng tay
Mọi đối tượng được định nghĩa đầy đủ trong đề. Không cần số quá lớn về mặt khái niệm (các số lớn như $455081984$ hay hệ số trong #6 là *kết quả* chính xác, không phải input), không cần thuật toán lặp, không cần $\sin(5)$/$e^{-3}$ kiểu phải bấm máy.

### 1.4. Đáp án giàu cấu trúc, khó "ăn may"
Nhiều bài đòi một **họ nghiệm tham số hóa** chứ không phải một giá trị: tập vector (#2), tập số (#5), multiset phân nhánh theo bất phương trình tường minh (#10), bộ 4 thành phần định nghĩa qua nghiệm của một đa thức bậc 4 và dãy moment $A_n$ (#9). Đoán mò gần như bằng 0.

### 1.5. Kiểm chứng được tích hợp ngay trong lời giải
Bài nào cũng tự gài cơ chế kiểm tra độc lập:
- #1: chuẩn hóa phương sai $=1$.
- #3: chứng nhận đẳng dao động (số nghiệm của hiệu $h=q-p_0$).
- #7: đưa **bộ ma trận tường minh** đạt đúng inf và sup.
- #10: **luật bảo toàn** (Step 8) đặt mọi điểm va chạm lên đúng đường $x_s(t)$, cộng kiểm tra giới hạn suy biến $w_2\to0$, $w_3\to0$.

### 1.6. Phân loại domain có tính phản biện
Mỗi DOMAIN JUSTIFICATION **nêu đích danh domain đối thủ và giải thích vì sao nó thua** (ví dụ #7: "khía cạnh tối ưu không phải cấu trúc chính... nên Linear Algebra phù hợp hơn Optimization"). Đây là điểm Rainier rất coi trọng vì chọn sai domain có thể bị từ chối khi quota domain đúng đã đầy.

---

## 2. Cấu trúc bài toán (đề bài)

### 2.1. Khung cố định 4 phần
Mỗi bài gồm: (a) 4 dòng phân loại **Domain / Sub-Domain / Problem Type / Solution Type**; (b) **PROBLEM PROMPT**; (c) **DOMAIN JUSTIFICATION**; (d) **STEP-BY-STEP SOLUTION & ANSWER**. Lưu ý: đây chính là **định dạng nộp thực tế** — gọn, không có các mục phụ trợ kiểu "Confidence/Black-Box Audit".

### 2.2. Mô-típ viết đề lặp lại
- **Định nghĩa đầy đủ rồi hỏi đúng một đối tượng.** Đề dựng xong "thế giới nhỏ" rồi hỏi một câu duy nhất.
- **Chế biến vị từ riêng (bespoke predicates).** "admissible", "balanced" (#5), color-profile và $\equiv_4$ (#2), commutator sửa đổi $[X,Y]=XY-2YX$ (#7), chart phi tuyến $(L,M)$ và quy ước trọng số (#6), quy ước Ricci tường minh (#4). Việc tự định nghĩa khiến bài **không thể tra cứu/đạo văn**.
- **Chặn không gian tìm kiếm bằng số cụ thể** để đáp án thành đối tượng đóng/hữu hạn: $-75\le x\le75$ (#5), đúng 12 lớp tương đương mỗi lớp 10 phần tử với 6 color-profile (#2), đa thức bậc $\le5$ trên 12 điểm dữ liệu (#3).
- **"Cài bẫy" ngay trong phát biểu** (ký hiệu của #1; quy ước dấu/chỉ số của #4; thứ tự bậc thang $4\to3\to1\to2\to0$ bị đảo đúng một lần ở #10).
- **Bảo đảm tồn tại & duy nhất là một phần của câu hỏi**: "the unique minimizer" (#9), "has a unique minimizer" (#3), "exactly 2 elements" (#10) — đề tự khẳng định nghiệm tồn tại và duy nhất, lời giải phải chứng minh điều đó.

### 2.3. Mức độ trừu tượng
Không phải bài nào cũng "sơ cấp về phát biểu" — #2 (finite model theory, trò chơi Ehrenfeucht–Fraïssé), #6 (lý thuyết phân nhánh + chuỗi Weierstrass), #7 (lý thuyết biểu diễn) đều rất trừu tượng. Nhưng **mọi bài đều neo trừu tượng vào cái cụ thể, kiểm được**: ma trận $3\times3$, đa thức bậc 5, phân tích $p^3$, 12 lớp, 6 profile. Đáp án luôn là **một vật thể viết ra được và kiểm tra được**.

---

## 3. Cấu trúc lời giải

### 3.1. Định dạng
- Đánh số **Step 1, Step 2, …**, mỗi bước là một nước đi logic độc lập, kết bằng **Final Answer: $\boxed{\dots}$**.
- Mỗi bước **kiểm chứng được độc lập** với đáp án cuối (đúng yêu cầu Rainier ≥ 3 bước).
- Trong các bước, đáp án cuối bọc `\boxed{}`; còn trong ô Answer của portal thì **không** dùng `\boxed`.

### 3.2. Khung lập luận điển hình (4 nhịp)
1. **Thiết lập** — viết lại đối tượng, rút gọn ký hiệu (vd #7 Step 1 rút về khối bất khả quy; #10 Step 1 liệt kê 3 shock + 1 fan).
2. **Quy giản/biến đổi về lõi xử lý được** — Schur complement đưa 4 phương trình về 1 vô hướng (#6); luật quỹ đạo shock trong fan qua ODE tuyến tính (#10 Step 2); chuyển bài đếm ma trận thành đếm module (#8).
3. **Giải lõi chính xác** — đại số/số học hữu tỉ thuần, không xấp xỉ.
4. **Lắp lại + tự kiểm** — đưa ví dụ đạt cận, kiểm luật bảo toàn, kiểm giới hạn suy biến, kiểm liên tục tại biên các case.

### 3.3. Hai kỹ thuật chứng minh xuất hiện đậm đặc
- **Necessity + Sufficiency (cần và đủ).** Chứng minh đáp án là *duy nhất* (cần) **và** *thật sự thỏa* (đủ): #2 (điều kiện cần qua quantifier-rank + chiến lược Duplicator cho đủ), #3 (không có $\Lambda<1$, rồi mọi minimizer $=p_0$), #9.
- **Vét trường hợp có kiểm soát biên.** #7 (khối 1/2/3 chiều, 9 nhánh phổ), #10 (9 ô $L_i\times R_j$, kèm chứng minh **liên tục tại mọi mặt biên** để multiset xác định tốt trên toàn $(0,\infty)^3$).

### 3.4. Độ dài tỉ lệ với độ sâu
Lời giải dài (PDF: #9 ~9 trang, #10 ~7 trang, #7 ~6 trang). Độ dài đến từ **vét cạn + tự kiểm**, không phải từ lan man.

---

## 4. Kỹ thuật & kiến thức toán được áp dụng (theo từng bài)

| # | Công cụ/định lý cốt lõi | Vai trò trong lời giải |
|---|---|---|
| 1 | Biến đổi hàm phân phối → $V_i\sim\mathrm{Unif}(0,1)$; hội tụ theo xác suất của thống kê thứ tự; **định lý Slutsky**; chuẩn hóa phương sai | Gỡ bẫy ký hiệu, đưa về phân phối giới hạn $a(V-1)$ |
| 2 | **Finite model theory**: quantifier rank, truncation $\min(n,4)$, **trò chơi Ehrenfeucht–Fraïssé** (chiến lược Spoiler/Duplicator) | Cận trên/dưới cho các bội số profile; cần + đủ |
| 3 | **Lý thuyết xấp xỉ đều có trọng số (minimax)**; **đẳng dao động** kiểu Chebyshev; định lý giá trị trung gian; số nghiệm của đa thức bậc $\le5$ | Chứng nhận tối ưu và tính duy nhất |
| 4 | Ký hiệu **Christoffel**, **tensor & endomorphism Ricci**, nâng/hạ chỉ số bằng metric | Tính trực tiếp tại điểm gốc |
| 5 | **Số học sơ cấp**: giải $k$ theo $(x,n)$, điều kiện đồng dư/chia hết để lọc "admissible", đếm bội & số giá trị phân biệt | Vét hữu hạn rồi lọc theo định nghĩa "balanced" |
| 6 | **Lý thuyết phân nhánh cusp**, định lý hàm ẩn hình thức + **Schur complement**, chuỗi lũy thừa hình thức, **chuẩn bị Weierstrass**, trọng số (weighted degree) | Rút 4 pt về 1 vô hướng; tái dựng đa thức $Q_{\le14}$ |
| 7 | **Lý thuyết biểu diễn / đại số tuyến tính hữu hạn chiều**: khối bất khả quy, tam giác hóa, $\mathrm{tr}(e^X)=\sum e^{\lambda_i}$, vét phổ; so sánh inf/sup hữu hạn | Phân loại toàn bộ bộ ba $(A,B,C)$, tìm cực trị |
| 8 | **Lý thuyết nhóm**: lớp liên hợp, tâm hóa tử, **orbit–stabilizer**; module trên **DEV** $\mathbb F_2[x]_{(p)}$, dạng chuẩn hữu tỉ, $|GL_n(\mathbb F_q)|$ | Tổng theo phân hoạch của 3, chia bậc nhóm cho bậc Aut |
| 9 | **Giải tích một biến**: đạo hàm dưới dấu tích phân với $\mathrm{sgn}$, phương trình cân bằng có trọng số, phân tích dấu của dư lồi, tích phân chính xác; nghiệm đa thức bậc 4 | Tìm $(a_0,b_0)$ và các moment $A_n$ |
| 10 | **Luật bảo toàn vô hướng / PT Burgers**: nghiệm entropy, điều kiện Lax, tốc độ **Rankine–Hugoniot**, sóng giãn (rarefaction), ODE quỹ đạo shock trong fan, kiểm tra bằng **luật bảo toàn tích phân** | Lập lịch va chạm 2 lần, multiset $\mathcal T$ phân nhánh |

**Mẫu chung:** mỗi bài dùng *một* máy móc cốt lõi của sub-domain chính, có *vài* công cụ phụ trợ từ domain khác — và DOMAIN JUSTIFICATION luôn giải thích vì sao công cụ phụ trợ chỉ là phụ trợ.

---

## 5. Điểm khác biệt giữa "Accepted Examples" và các bài trong `rainier-problem/`

> So sánh 10 bài chuẩn vàng với 11 bài hiện có trong `workspace/rainier-problem/`. Mục tiêu: tìm khoảng cách để nâng các bài clone lên đúng chuẩn được chấp nhận.

### 5.1. Điểm GIỐNG (đã làm đúng)
- Cùng khung `problem.md` chuẩn hóa + bảng phân loại + Domain Explanation.
- Cùng nhắm độ khó frontier, chọn sub-domain nâng cao.
- Lời giải đánh số bước + `Final Answer` bọc `\boxed`.
- Một số bài rainier **rất sát tinh thần accepted**: `problem11-elementary-number-theory` (vị từ tự chế "flat index", giải bằng **định lý Kummer** + đếm carry — đúng kiểu "phát biểu gọn, lời giải sâu, có bẫy"); `problem10-quadratic-residues` (phát biểu cô đọng, đáp án là tích đóng).

### 5.2. Khác biệt 1 — **Cơ chế "bẫy" còn mờ**
Các accepted example mạnh nhất khó vì **một insight sắc** (bẫy ký hiệu #1, ansatz sai #9, cấu trúc ẩn #7/#8). Nhiều bài rainier khó chủ yếu vì **chồng chất máy móc và tính toán dài** (vd `problem01-riemannian-geometry`: dựng connection → Jacobi operator → đối xứng hàm → moment trên $S^3$ → clear denominator; đúng và sâu, nhưng độ khó đến từ *khối lượng* hơn là một nước nhìn thấu). Sự tồn tại của skill `math-harder`/`math-check` cho thấy pipeline đã ý thức được khoảng cách này.
**Khuyến nghị:** với mỗi bài clone, viết rõ **"câu một dòng: vì sao model frontier sẽ sai?"** Nếu câu trả lời chỉ là "vì tính toán dài", bài chưa đạt chuẩn accepted — cần cài thêm một bẫy/insight (ansatz cám dỗ nhưng sai, ký hiệu dễ hiểu nhầm, trường hợp biên dễ bỏ sót).

### 5.3. Khác biệt 2 — **Self-containment & độ "neo cụ thể" của đề**
Accepted example luôn neo phần trừu tượng vào số/đối tượng nhỏ cụ thể, định nghĩa elementary (bảng dữ liệu #3, các ràng buộc số #5, ma trận $3\times3$ #7). Một số bài rainier phát biểu bằng **máy móc trừu tượng đặt cạnh nhau, rất cô đọng** (`problem04` cyclic cover + $H^0(C,\Omega^1)$; `problem08` $(\mathrm{Sym}^2 K_p)^{D_p}$). Vẫn hợp lệ, nhưng rủi ro cao hơn về sự rõ ràng và khả năng kiểm chứng độc lập từng bước.
**Khuyến nghị:** sau khi viết đề, tự hỏi "một chuyên gia có thể *bắt đầu tính ngay* mà không phải tự bù định nghĩa nào không?" Nếu cần giả định ngầm, bổ sung vào đề (giống #4 ghi rõ quy ước Ricci).

### 5.4. Khác biệt 3 — **Tham vọng của Solution Type**
Accepted set lệch mạnh về **Set/Multiset, Vector, Canonical Form, họ tham số hóa** (chỉ 1/10 là scalar xấp xỉ). Một số bài rainier dừng ở **Exact scalar** (`problem04`, `problem07`, `problem08`, `problem10`). Đáp án "một con số" dễ bị đoán/ăn may và ít gây khó cho model hơn một đối tượng có cấu trúc.
**Khuyến nghị:** ưu tiên Answer Type giàu cấu trúc. Nếu lõi toán đủ sâu nhưng đáp án đang là một scalar, cân nhắc dùng `math-change-answer-type` để chuyển sang vector/tập/dạng chuẩn/họ tham số hóa (như #9, #10 minh họa: yêu cầu trả về *bộ nhiều thành phần* hoặc *multiset phân nhánh theo bất phương trình*).

### 5.5. Khác biệt 4 — **Kiểm chứng dệt trong lời giải vs. khung phụ trợ tách rời**
Accepted example **dệt** kiểm chứng độc lập vào mạch toán (luật bảo toàn #10, đẳng dao động #3, bộ ma trận đạt cận #7, giới hạn suy biến #10). Lời giải rainier hiện gắn kiểm chứng vào **các mục template tách rời** (`Black-Box Audit`, `Verification`, `Counterexample attack`, `Concepts`, `Confidence` — xem `problem11/solution.md`).
**Lưu ý quan trọng về định dạng nộp:** các mục template đó là **scaffolding QA nội bộ của pipeline**, KHÔNG nằm trong định dạng nộp Rainier. Bản nộp thực tế (theo accepted example) chỉ gồm **PROMPT + DOMAIN JUSTIFICATION + STEP-BY-STEP SOLUTION (các Step) + Final Answer**. Cần phân biệt rõ "tài liệu nội bộ" và "bản nộp", và lý tưởng là **đưa ít nhất một kiểm chứng độc lập vào trong chính các Step** (giống accepted), thay vì chỉ để ở mục Verification cuối.

### 5.6. Khác biệt 5 — **Domain Justification chưa đủ tính phản biện**
Accepted example luôn **nêu tên domain đối thủ và bác bỏ** ("more appropriate than … because …"). Domain Explanation của nhiều bài rainier ngắn hơn và ít đối kháng (thường chỉ nêu công cụ phụ trợ thuộc domain khác mà không khẳng định mạnh vì sao domain chính thắng).
**Khuyến nghị:** viết Domain Explanation theo công thức accepted: (1) nêu domain chính + lý do; (2) thừa nhận công cụ phụ trợ thuộc domain X; (3) **khẳng định** vì sao trọng tâm vẫn thuộc domain chính.

### 5.7. Khác biệt 6 — **Tồn tại & duy nhất là một phần của lời giải**
Accepted example coi việc chứng minh nghiệm **tồn tại và duy nhất** là một phần của câu đố (#3, #9 chứng minh minimizer duy nhất; #2, #10 chứng minh tập/multiset đúng và đủ). Cần đảm bảo mỗi bài clone cũng **chứng minh duy nhất**, không chỉ "tìm ra một đáp án".

### 5.8. Bảng đối chiếu nhanh

| Tiêu chí | Accepted Examples | Trạng thái `rainier-problem` | Việc cần làm |
|---|---|---|---|
| Có "bẫy"/insight sắc, một dòng giải thích vì sao model sai | Có, rõ ở hầu hết bài | Một số có (P11), nhiều bài khó do khối lượng | Cài bẫy/insight có chủ đích |
| Đề tự chứa, neo cụ thể | Rất mạnh | Khá, vài bài rất trừu tượng/cô đọng | Bổ sung định nghĩa/quy ước còn ngầm |
| Solution Type giàu cấu trúc | 9/10 phi-scalar | Vài bài dừng ở scalar | Nâng Answer Type (set/vector/canonical) |
| Kiểm chứng dệt trong Step | Có | Đẩy ra mục template tách rời | Đưa ≥1 kiểm chứng vào trong Step |
| Domain Justification phản biện | Luôn có | Có nhưng ngắn/ít đối kháng | Viết theo công thức 3 ý của accepted |
| Chứng minh tồn tại + duy nhất | Là một phần lời giải | Không đồng đều | Luôn chứng minh duy nhất |
| Định dạng nộp gọn | PROMPT+JUSTIFICATION+STEPS | solution.md có nhiều mục phụ | Tách rõ QA nội bộ vs bản nộp |

---

## 6. Checklist rút gọn để một bài clone đạt chuẩn "accepted"

1. **Một câu hỏi, một đáp án đóng, duy nhất, kiểm được** (không "prove that", không "DNE").
2. **Viết được một câu: "Model frontier sẽ sai ở đây vì ___"** — nếu chưa có, cài thêm bẫy/insight.
3. **Đề tự chứa**, định nghĩa mọi vị từ/quy ước riêng; chuyên gia bắt đầu tính được ngay.
4. **Ưu tiên Solution Type giàu cấu trúc** (set/multiset/vector/canonical/họ tham số hóa) hơn scalar.
5. **Lời giải ≥ 3 Step**, mỗi Step kiểm được độc lập, kết `Final Answer: \boxed{...}`.
6. **Dệt ≥ 1 kiểm chứng độc lập vào trong Step** (luật bảo toàn / đạt cận / đẳng dao động / giới hạn suy biến).
7. **Chứng minh tồn tại và duy nhất** của đáp án.
8. **DOMAIN JUSTIFICATION phản biện**: nêu domain đối thủ và bác bỏ.
9. **LaTeX chuẩn Rainier**: chỉ `$...$`/`$$...$$`; ô Answer không `\boxed`, Step cuối có `\boxed`; số không vượt $10^{15}$ / dưới $10^{-10}$; không cần thuật toán lặp hay bấm máy.
10. **Tự chứa, giải được bằng tay**, đủ sức **đánh bại cả hai model frontier liên tục**.
