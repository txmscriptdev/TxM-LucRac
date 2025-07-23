# ♻️ TxM - Lục Thùng Rác cho QBCore

![Trash Job Banner](https://i.imgur.com/Yj9GdJ5.png)

> Một nghề phụ hấp dẫn trong server FiveM – giúp người chơi vừa kiếm tiền vừa... bốc mùi để đổi lấy vật phẩm tái chế có giá trị.

---

## 🚚 Giới thiệu

**TxM Lục Rác** là một nghề phụ đơn giản và vui nhộn cho người chơi mới bắt đầu trong thành phố. Người chơi có thể đến các thùng rác được đánh dấu, lục rác và thu thập vật phẩm như sắt, nhôm, thép... sau đó đem bán để kiếm tiền hoặc sử dụng trong chế tạo.

---

## 🛠️ Tính năng nổi bật

- ✅ Tích hợp hoàn chỉnh với **QBCore**
- 🗑️ Nhiều thùng rác ngẫu nhiên trên bản đồ để tương tác
- 📦 Nhận **vật phẩm ngẫu nhiên** (phế liệu, kim loại, chai lọ)
- 💰 Bán vật phẩm để nhận tiền thưởng
- 🧰 Hỗ trợ cho cả `qb-inventory` và `ox_inventory`

---

## 🧑‍💻 Yêu cầu

- [`qb-core`](https://github.com/qbcore-framework/qb-core)
- [`qb-target`](https://github.com/qbcore-framework/qb-target)
- [`qb-inventory`](https://github.com/qbcore-framework/qb-inventory) **hoặc** [`ox_inventory`](https://github.com/overextended/ox_inventory)

---

## 🧭 Hướng dẫn chơi

1. 🔍 **Đến các thùng rác** được đánh dấu trên bản đồ và nhấn **[E]** để lục.
2. 🎁 **Nhận vật phẩm** ngẫu nhiên từ rác (sắt, đồng, chai nhựa...).
3. 💸 Đem vật phẩm đến **điểm bán** để đổi lấy tiền thưởng.

![Lục rác](https://i.imgur.com/l3W97Mb.png)
![Bán rác](https://i.imgur.com/jwYi8w1.png)

---

## 🔧 Cài đặt

1. Tải mã nguồn
Thêm vào server.cfg hoặc resources.cfg
```bash
ensure TxM-LucRac
```
3. Thêm các item vào shared/item
qb-inventory
```bash
["thep"] = { name = "thep", label = "Thép", weight = 400, type = "item", image = "thep.png", unique = false, useable = false, shouldClose = false, description = "Một miếng thép vô cùng giá trị có thể dùng để bán hoặc chế tạo." }, 
["nhom"] = { name = "nhom", label = "Nhôm", weight = 400, type = "item", image = "nhom.png", unique = false, useable = false, shouldClose = false, description = "Một miếng nhôm nhẹ có thể dùng để tái chế hoặc chế tạo." },
["dong"] = { name = "dong", label = "Đồng", weight = 360, type = "item", image = "dong.png", unique = false, useable = false, shouldClose = false, description = "Một khối đồng thô dùng cho nhiều mục đích sản xuất." },
["satvun"] = { name = "satvun", label = "Sắt Vụn", weight = 300, type = "item", image = "satvun.png", unique = false, useable = false, shouldClose = false, description = "Một ít sắt vụn có thể tái chế thành vật liệu hữu ích." },
["sat"] = { name = "sat", label = "Sắt", weight = 200, type = "item", image = "sat.png", unique = false, useable = false, shouldClose = false, description = "Một miếng sắt thô dùng để chế tạo hoặc xây dựng." },
["chainhuarong"] = { name = "chainhuarong", label = "Chai nhựa rỗng", weight = 20, type = "item", image = "chainhuarong.png", unique = false, useable = false, shouldClose = false, description = "Một chai nhựa rỗng, đừng vứt bừa bãi, hãy tái chế!" },
```
ox_inventory
```bash
["thep"] = { label = "Thép", weight = 400, stack = true, close = false, description = "Một miếng thép vô cùng giá trị có thể dùng để bán hoặc chế tạo.", client = {}, server = {} },
["nhom"] = { label = "Nhôm", weight = 400, stack = true, close = false, description = "Một miếng nhôm nhẹ có thể dùng để tái chế hoặc chế tạo.", client = {}, server = {} },
["dong"] = { label = "Đồng", weight = 360, stack = true, close = false, description = "Một khối đồng thô dùng cho nhiều mục đích sản xuất.", client = {}, server = {} },
["satvun"] = { label = "Sắt Vụn", weight = 300, stack = true, close = false, description = "Một ít sắt vụn có thể tái chế thành vật liệu hữu ích.", client = {}, server = {} },
["sat"] = { label = "Sắt", weight = 200, stack = true, close = false, description = "Một miếng sắt thô dùng để chế tạo hoặc xây dựng.", client = {}, server = {} },
["chainhuarong"] = { label = "Chai nhựa rỗng", weight = 20, stack = true, close = false, description = "Một chai nhựa rỗng, đừng vứt bừa bãi, hãy tái chế!", client = {}, server = {} },
```
Đảm bảo bạn đã cài các dependencies cần thiết (qb-core, qb-target,...).
