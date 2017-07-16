1. Nối chuỗi thay vì sử dụng StringBuilder

Việc nối chuỗi là một thao tác lặp đi lặp lại rất nhiều lần trong việc lập trình của bạn. Khi muốn thêm cái gì đó vào một chuỗi có sẵn, một địa chỉ mới trong bộ nhớ sẽ được cấp phát. Chuỗi có sẵn sẽ được sao chép sang vị trí mới đồng thời được thêm phần mới vào. Điều này là không hiệu quả cho hiệu suất. Chúng ta có giải pháp khác là sử dụng StringBuilder sẽ giữ nguyên vị trí bộ nhớ mà không thực hiện hành động sao chép.

2. Ép kiểu sử dụng ‘(T)’ thay vì ‘as (T)’

Đây là lỗi phổ biến của các developer sử dụng cách ép kiểu ‘(T)’ thay vì ‘as (T)’. Và thưowngf thì không có tác động tiêu cực nào nhưng trong trường hợp không thể ép được thì ép kiểu (T) sẽ throw ra InvalidCastException còn toán tử “as” sẽ trả về null nếu không thể ép kiểu

3. Throw exception không đúng cách.

Lập trình viên C# thường quên rằng khi họ throw một exception sử dụng “throw ex” họ sẽ mất stack trace. Nó làm cho việc debug khó khăn hơn và khó tiếp cận message lỗi hơn. Đơn giản chỉ cần “throw” là được, không dữ liệu Exception nào bị mất và toàn bộ Excpetion sẽ được trả về dễ dàng.

4. Không sử dụng “using” cho việc hủy đối tượng

Nhiều C# developer không biết việc sử dụng từ khóa “using” không chỉ để thêm mới 1 thư viện ở đầu file .cs mà còn để hủy đối tượng sau khi thực hiện tác vụ, luôn sử dụng lệnh “using” để chắc chắn rằng đối tượng đó đã được hủy
5. Sử dụng “foreach” cho tất cả mọi thứ ngoài Collection

Hãy nhớ là nếu bạn muốn lặp qua bất cứ thứ gì không phải Colleciton ( ví dụ là 1 Array), sử dụng vòng lặp “for” sẽ hiệu quả hơn nhiều so với sử dụng “foreach”. Nguyên nhân là cả 2 loại vòng lặp này được hiểu và biên dịch theo cách khác nhau. Vì “foreach” khi biên dịch ra JIT (Just In Time) code có nhiều thao tác hơn và khai báo nhiều biến hơn so với vòng “for” như thế giảm performance của hệ thống.

6. Đọc, ghi dữ liệu với DB nhiều hơn 1 lời gọi

Đây là lỗi rất phổ biến, đặc biệt là các junior developer và đặc biệt là sử dụng ORM như Entity Framework. Tất cả các lời gọi DB đều chiếm một khoảng thời gian nhất định nên việc giảm số lượng tối thiểu lời gọi vào DB là điều rất quan trọng. Có nhiều cách để làm việc đó:

Sử dụng fetching (Eager Loading)
Sử dụng Transaction
Trong trường hợp logic phức tạp nên sử dụng trong Store Procedure.
