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
<div class="support-container-wrap view-mode-normal">

<div class="support-container cell-size-8" style="min-width: 500px;">

<div class="support-list last-era-0">

#### IE

1.  6
2.  7
3.  8
4.  9
5.  10
6.  11

</div>

<div class="support-list last-era-1">

#### Edge[*](#)

1.  12
2.  13
3.  14
4.  15
5.  16
6.  17
7.  18

</div>

<div class="support-list last-era-2">

#### Firefox

1.  2
2.  3
3.  3.5
4.  3.6
5.  4
6.  5
7.  6
8.  7
9.  8
10.  9
11.  10
12.  11
13.  12
14.  13
15.  14
16.  15
17.  16
18.  17
19.  18
20.  19
21.  20
22.  21
23.  22
24.  23
25.  24
26.  25
27.  26
28.  27
29.  28
30.  29
31.  30
32.  31
33.  32
34.  33
35.  34
36.  35
37.  36
38.  37
39.  38
40.  39
41.  40
42.  41
43.  42
44.  43
45.  44
46.  45
47.  46
48.  47
49.  48
50.  49
51.  50
52.  51
53.  52
54.  53
55.  54
56.  55
57.  56
58.  57
59.  58
60.  59
61.  60
62.  61
63.  62
64.  63
65.  64

</div>

<div class="support-list last-era-3">

#### Chrome

1.  4
2.  5`webkit`
3.  6`webkit`
4.  7`webkit`
5.  8`webkit`
6.  9`webkit`
7.  10`webkit`
8.  11`webkit`
9.  12`webkit`
10.  13`webkit`
11.  14`webkit`
12.  15`webkit`
13.  16`webkit`
14.  17`webkit`
15.  18`webkit`
16.  19`webkit`
17.  20`webkit`
18.  21`webkit`
19.  22
20.  23
21.  24
22.  25
23.  26
24.  27
25.  28
26.  29
27.  30
28.  31
29.  32
30.  33
31.  34
32.  35
33.  36
34.  37
35.  38
36.  39
37.  40
38.  41
39.  42
40.  43
41.  44
42.  45
43.  46
44.  47
45.  48
46.  49
47.  50
48.  51
49.  52
50.  53
51.  54
52.  55
53.  56
54.  57
55.  58
56.  59
57.  60
58.  61
59.  62
60.  63
61.  64
62.  65
63.  66
64.  67
65.  68
66.  69
67.  70
68.  71
69.  72

</div>

<div class="support-list last-era-1">

#### Safari

1.  3.1
2.  3.2
3.  4
4.  5
5.  5.1
6.  6
7.  6.1
8.  7
9.  7.1
10.  8
11.  9
12.  9.1
13.  10
14.  10.1
15.  11
16.  11.1
17.  12
18.  TP

</div>

<div class="support-list last-era-0 hidden">

#### Opera

1.  10.1
2.  11.5
3.  12.1
4.  15
5.  16
6.  17
7.  18
8.  19
9.  20
10.  21
11.  22
12.  23
13.  24
14.  25
15.  26
16.  27
17.  28
18.  29
19.  30
20.  31
21.  32
22.  33
23.  34
24.  35
25.  36
26.  37
27.  38
28.  39
29.  40
30.  41
31.  42
32.  43
33.  44
34.  45
35.  46
36.  47
37.  48
38.  49
39.  50
40.  51
41.  52
42.  53
43.  54
44.  55

</div>

<div class="support-list last-era-1">

#### iOS Safari[*](#)

1.  3.2
2.  4.1
3.  4.3
4.  5.1
5.  6.1
6.  7.1
7.  8
8.  8.4
9.  9.2
10.  9.3
11.  10.2
12.  10.3
13.  11.2
14.  11.4
15.  12

</div>

<div class="support-list last-era-0">

#### Opera Mini[*](#)

1.  all

</div>

<div class="support-list last-era-0 hidden">

#### Android[*](#)

1.  2.1
2.  2.2
3.  2.3
4.  3
5.  4
6.  4.1
7.  4.3
8.  4.4`webkit`
9.  4.4.4`webkit`
10.  67`webkit`

</div>

<div class="support-list last-era-0 hidden">

#### Blackberry

1.  7
2.  10

</div>

<div class="support-list last-era-0 hidden">

#### Opera Mobile[*](#)

1.  12
2.  12.1
3.  46`webkit`

</div>

<div class="support-list last-era-0">

#### Chrome for Android

1.  69

    ##### See notes:

    <span class="num-tag num-tag--3">3</span>

</div>

<div class="support-list last-era-0 hidden">

#### Firefox Android

1.  62

</div>

<div class="support-list last-era-0 hidden">

#### IE Mobile

1.  10
2.  11

</div>

<div class="support-list last-era-0">

#### UC Browser for Android

1.  11.8

</div>

<div class="support-list last-era-0">

#### Samsung Internet

1.  4`webkit`
2.  5

    ##### See notes:

    <span class="num-tag num-tag--2">2</span>
3.  6.2

    ##### See notes:

    <span class="num-tag num-tag--2">2</span>
4.  7.2

    ##### See notes:

    <span class="num-tag num-tag--2">2</span>

</div>

<div class="support-list last-era-0 hidden">

#### QQ

1.  1.2

</div>

<div class="support-list last-era-0 hidden">

#### Baidu

1.  7.12

    ##### See notes:

    <span class="num-tag num-tag--2">2</span>

</div>

</div>

</div>
