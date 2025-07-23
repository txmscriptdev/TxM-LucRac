# ♻️ TxM - Job Lục Rác cho QBCore

![Trash Job Banner](https://i.imgur.com/Yj9GdJ5.png)

> Một nghề phụ hấp dẫn trong server FiveM của bạn – giúp người chơi vừa kiếm tiền vừa... bốc mùi!

---

## 🚚 Giới thiệu

**TxM Lục Rác** là một nghề phụ dành cho những người chơi mới hoặc thích phiêu lưu vỉa hè. Người chơi sẽ thu gom rác tại các điểm được chỉ định, mang về nơi xử lý và nhận phần thưởng tương ứng.

---

## 🛠️ Tính năng nổi bật

- ✅ Tích hợp hoàn chỉnh với **QBCore**
- 📦 Nhiều điểm rác sinh động trên bản đồ
- 🗺️ Có blip, marker, và thông báo hướng dẫn
- 💵 Nhận tiền hoặc vật phẩm ngẫu nhiên khi hoàn thành
- 🎒 Có hệ thống trang phục khi làm nghề

---

## 🧑‍💻 Yêu cầu

- [`qb-core`](https://github.com/qbcore-framework/qb-core)
- [`qb-target`](https://github.com/qbcore-framework/qb-target)
- [`qb-clothing`] (để thay đồ làm việc, nếu cần)
- [ox_lib] (nếu dùng giao diện hiện đại)

---

## 🧭 Hướng dẫn chơi

1. Đến **điểm bắt đầu nghề lục rác** (marker màu xanh):
   ![Start Point](https://i.imgur.com/BR9ZVDe.png)

2. Nhận xe rác:
   ![Garbage Truck](https://i.imgur.com/fvtsHdR.png)

3. Đi tới từng điểm gom rác được đánh dấu:
   ![Trash Collecting](https://i.imgur.com/l3W97Mb.png)

4. Trở về điểm tập kết để **nộp rác và nhận tiền**:
   ![Turn In](https://i.imgur.com/jwYi8w1.png)

---

## 🔧 Cài đặt

1. Tải mã nguồn về:
```bash
git clone https://github.com/txmscriptdev/TxM-LucRac.git
Thêm dòng sau vào server.cfg hoặc resources.cfg:

ruby
Sao chép
Chỉnh sửa
ensure TxM-LucRac
Đảm bảo bạn đã cài các dependencies cần thiết (qb-core, qb-target,...).
