**I. CHÚ Ý KHI SỬ DỤNG NOTIFICATIONS API**

Để sử dụng được **Notifications API** cần phải chú ý một số điều sau:

- Người sử dụng cần cấp phép cho trình duyệt hiển thị các thông báo hệ thống, điều này sẽ được thực hiện khi trang web khởi tạo. Các thiết lập này thường được kéo dài trong một phiên làm việc. Để hiển thị thiết lập này cho người dùng lập, trình viên có thể sử dụng requestPermission() method.
- Để tạo mới một thông báo hệ thống chúng ta sử dụng Notification() constructor, điều này đã bao gồm một số thiết lập như tiêu đề, các đối tượng hiển thị nội dung là văn bản, âm thanh ...
- Hiện tại Notifications API chỉ support cho một số WebKit browsers như Google Chrome, FireFox và Safari.

**II. CÁCH SỬ DỤNG NOTIFICATIONS API**

**1. Check quyền hiển thị thông báo hệ thống**

Để xem người dùng đã cấp quyền cho hiển thị thông báo hệ thống chưa có thể sử dụng method Notification.permission.

Method này sẽ trả về 3 kết quả như sau:

>- Default: Người dùng không trả lời thông báo, nên mặc định sẽ là không cho phép hiển thị thông báo hệ thống.
>- Granted: Người dùng cho phép hiển thị thông báo hệ thống khi được hỏi.
>- Denied: Người dùng từ chối cho phép hiển thị thông báo hệ thống khi được hỏi.

**2. Lấy quyền hiển thị thông báo hệ thống từ người dùng**

Khi người dùng không chấp nhận cho phép hiển thị thông báo hệ thống lập trình viên có thể hỏi lại người dùng bằng `Notification.requestPermission()` method.

`Notification.requestPermission().then(function(result) {
  console.log(result);
});`

Method này sẽ tạo một hộp thoại để hỏi lại người dùng về quyền truy cập hệ thống.

**3. Notification events**

Notifications API cung cấp một số sự kiện cơ bản cho một thông báo.

- Click: Sự kiện khi người dùng click vào thông báo.
- Error: Sự kiện khi việc hiển thị thông báo xảy ra vấn đề lỗi.
- Close: Sự kiện khi người dùng đóng thông báo.
- Show: Sự kiện khi thông báo được hiển thị.

**4. Các trình duyệt hỗ trợ notification API **

| IE | Firefox | Chrome | Safari | Edge | iOS Safari | Opera Mini | Chrome for Android | UC Browser for Android |
|----|:----:|:----:|:----:|:----:|:----:|:----:|:----:|----:|
| 11 | 61,62,63,64 |  49,67,68,69,70,71,72 | 11.1,12,TP | 17,18 | 10.2,10.3,11.2, 11.4, 12 | All | 69 | 11.8 |
