-- 1. Tạo cơ sở dữ liệu và cài đặt bảng
-- 1.1. Tạo Database
CREATE DATABASE Transerco_Bus_Management_DB

-- 1.2. Tạo bảng 
-- Tạo bảng PHUONGTIEN
CREATE TABLE PHUONGTIEN(
    Ma_Phuong_Tien NVARCHAR(10),
    Ma_Tuyen NVARCHAR(10),
    Ma_Tai_Xe NVARCHAR(10),
    Ten_Phuong_Tien NVARCHAR(50),
    Bien_Kiem_Soat NVARCHAR(12),
    Hang_San_Xuat NVARCHAR (50),
    Nam_San_Xuat INT,
    So_Khung VARCHAR(17), -- Tiêu chuẩn quốc tế VIN gồm 17 kí tự
    So_Cho_Ngoi INT
);

-- Tạo bảng TAIXE_LIENHE
CREATE TABLE TAIXE_LIENHE(
    Ma_Tai_Xe NVARCHAR(10),
    Loai_Lien_He_Email_SDT NVARCHAR(20),
    Gia_Tri NVARCHAR(100)
);

-- Tạo bảng TUYENXE
CREATE TABLE TUYENXE(
    Ma_Tuyen NVARCHAR(10),
    Ma_Chi_Nhanh NVARCHAR(10),
    Ten_Tuyen NVARCHAR(5),
    Gio_Bat_Dau TIME,
    Gio_Ket_Thuc TIME
);

-- Tạo bảng TAIXE
CREATE TABLE TAIXE(
    Ma_Tai_Xe NVARCHAR(10),
    Ma_Chi_Nhanh NVARCHAR(10),
    Ho_Va_Ten NVARCHAR(100),
    Ngay_Sinh DATE,
    Dia_Chi NVARCHAR(200)
);

-- Tạo bảng TRAMKHOIDAU
CREATE TABLE TRAMKHOIDAU(
    Ma_Tuyen NVARCHAR(10),
    Ma_Tram NVARCHAR(10)
);

-- Tạo bảng TRAMKETTHUC
CREATE TABLE TRAMKETTHUC(
    Ma_Tuyen NVARCHAR(10),
    Ma_Tram NVARCHAR(10)
);

-- Tạo bảng LOTRINH
CREATE TABLE LOTRINH(
    Ma_Tuyen NVARCHAR(10),
    Ma_Tram NVARCHAR(10),
    Thu_Tu_Tram INT
);

-- Tạo bảng TP_TUYENXE
CREATE TABLE TP_TUYENXE(
    Ma_Thanh_Pho NVARCHAR(10),
    Ma_Tuyen NVARCHAR(10)
);

-- Tạo bảng THANHPHO
CREATE TABLE THANHPHO(
    Ma_Thanh_Pho NVARCHAR(10),
    Ten_Thanh_Pho NVARCHAR(100)
);

-- Tạo bảng TRAMXE
CREATE TABLE TRAMXE(
    Ma_Tram NVARCHAR(10),
    Vi_Tri_Tram NVARCHAR(1000)
);

-- Tạo bảng CHINHANH_LIENHE
CREATE TABLE CHINHANH_LIENHE(
    Ma_Chi_Nhanh NVARCHAR(10),
    Loai_Lien_He_Email_SDT NVARCHAR(20),
    Gia_Tri NVARCHAR(100)
);

-- Tạo bảng CHINHANH
CREATE TABLE CHINHANH(
    Ma_Chi_Nhanh NVARCHAR(10),
    Ma_Thanh_Pho NVARCHAR(10),
    Ten_Chi_Nhanh NVARCHAR(100),
    Dia_Chi NVARCHAR(200)
);

-- 2. Cài đặt PK và FK
-- 2.1. Ràng buộc không nhận giá trị NULL
-- tbl.PHUONGTIEN
ALTER TABLE PHUONGTIEN ALTER COLUMN Ma_Phuong_Tien NVARCHAR(10) NOT NULL;
ALTER TABLE PHUONGTIEN ALTER COLUMN Bien_Kiem_Soat NVARCHAR(12) NOT NULL;
ALTER TABLE PHUONGTIEN ALTER COLUMN So_Khung VARCHAR(17) NOT NULL;

-- tbl.TRAMKETTHUC
ALTER TABLE TRAMKETTHUC ALTER COLUMN Ma_Tuyen NVARCHAR(10) NOT NULL;
ALTER TABLE TRAMKETTHUC ALTER COLUMN Ma_Tram NVARCHAR(10) NOT NULL;

-- tbl.TUYENXE
ALTER TABLE TUYENXE ALTER COLUMN Ma_Tuyen NVARCHAR(10) NOT NULL;
ALTER TABLE TUYENXE ALTER COLUMN Ma_Chi_Nhanh NVARCHAR(10) NOT NULL;
ALTER TABLE TUYENXE ALTER COLUMN Ten_Tuyen NVARCHAR(5) NOT NULL;

-- tbl.TAIXE
ALTER TABLE TAIXE ALTER COLUMN Ma_Tai_Xe NVARCHAR(10) NOT NULL;
ALTER TABLE TAIXE ALTER COLUMN Ma_Chi_Nhanh NVARCHAR(10) NOT NULL;

-- tbl.TRAMKHOIDAU
ALTER TABLE TRAMKHOIDAU ALTER COLUMN Ma_Tuyen NVARCHAR(10) NOT NULL;
ALTER TABLE TRAMKHOIDAU ALTER COLUMN Ma_Tram NVARCHAR(10) NOT NULL;

-- tbl.LOTRINH
ALTER TABLE LOTRINH ALTER COLUMN Ma_Tuyen NVARCHAR(10) NOT NULL;
ALTER TABLE LOTRINH ALTER COLUMN Ma_Tram NVARCHAR(10) NOT NULL;

-- tbl.TP_TUYENXE
ALTER TABLE TP_TUYENXE ALTER COLUMN Ma_Thanh_Pho NVARCHAR(10) NOT NULL;
ALTER TABLE TP_TUYENXE ALTER COLUMN Ma_Tuyen NVARCHAR(10) NOT NULL;

-- tbl.THANHPHO
ALTER TABLE THANHPHO ALTER COLUMN Ma_Thanh_Pho NVARCHAR(10) NOT NULL;
ALTER TABLE THANHPHO ALTER COLUMN Ten_Thanh_Pho NVARCHAR(100) NOT NULL;

-- tbl.TAIXE_LIENHE
ALTER TABLE TAIXE_LIENHE ALTER COLUMN Ma_Tai_Xe NVARCHAR(10) NOT NULL;
ALTER TABLE TAIXE_LIENHE ALTER COLUMN Loai_Lien_He_Email_SDT NVARCHAR(20) NOT NULL;
ALTER TABLE TAIXE_LIENHE ALTER COLUMN Gia_Tri NVARCHAR(100) NOT NULL;

-- tbl.TRAMXE
ALTER TABLE TRAMXE ALTER COLUMN Ma_Tram NVARCHAR(10) NOT NULL;
ALTER TABLE TRAMXE ALTER COLUMN Vi_Tri_Tram NVARCHAR(1000) NOT NULL;

-- tbl.CHINHANH_LIENHE
ALTER TABLE CHINHANH_LIENHE ALTER COLUMN Ma_Chi_Nhanh NVARCHAR(10) NOT NULL;
ALTER TABLE CHINHANH_LIENHE ALTER COLUMN Loai_Lien_He_Email_SDT NVARCHAR(20) NOT NULL;
ALTER TABLE CHINHANH_LIENHE ALTER COLUMN Gia_Tri NVARCHAR(100) NOT NULL;

-- tbl.CHINHANH
ALTER TABLE CHINHANH ALTER COLUMN Ma_Chi_Nhanh NVARCHAR(10) NOT NULL;
ALTER TABLE CHINHANH ALTER COLUMN Ten_Chi_Nhanh NVARCHAR(100) NOT NULL;
ALTER TABLE CHINHANH ALTER COLUMN Dia_Chi NVARCHAR(200) NOT NULL;

-- 2.2. Cài đặt PK
-- tbl.PHUONGTIEN
ALTER TABLE PHUONGTIEN ADD CONSTRAINT PK_PHUONGTIEN PRIMARY KEY (Ma_Phuong_Tien);

-- tbl.TUYENXE
ALTER TABLE TUYENXE ADD CONSTRAINT PK_TUYENXE PRIMARY KEY (Ma_Tuyen);

-- tbl.TAIXE
ALTER TABLE TAIXE ADD CONSTRAINT PK_TAIXE PRIMARY KEY (Ma_Tai_Xe);

-- tbl.THANHPHO
ALTER TABLE THANHPHO ADD CONSTRAINT PK_THANHPHO PRIMARY KEY (Ma_Thanh_Pho);

-- tbl.TRAMXE
ALTER TABLE TRAMXE ADD CONSTRAINT PK_TRAMXE PRIMARY KEY (Ma_Tram);

-- tbl.CHINHANH
ALTER TABLE CHINHANH ADD CONSTRAINT PK_CHINHANH PRIMARY KEY (Ma_Chi_Nhanh);

-- 2.3. Cài đặt FK
-- tbl.TRAMKETTHUC
ALTER TABLE TRAMKETTHUC ADD CONSTRAINT FK_TRAMKETTHUC_TUYENXE FOREIGN KEY (Ma_Tuyen) REFERENCES TUYENXE (Ma_Tuyen);
ALTER TABLE TRAMKETTHUC ADD CONSTRAINT FK_TRAMKETTHUC_TRAMXE FOREIGN KEY (Ma_Tram) REFERENCES TRAMXE (Ma_Tram);

-- tbl.PHUONGTIEN
ALTER TABLE PHUONGTIEN ADD CONSTRAINT FK_PHUONGTIEN_TUYENXE FOREIGN KEY (Ma_Tuyen) REFERENCES TUYENXE (Ma_Tuyen);
ALTER TABLE PHUONGTIEN ADD CONSTRAINT FK_PHUONGTIEN_TAIXE FOREIGN KEY (Ma_Tai_Xe) REFERENCES TAIXE (Ma_Tai_Xe);

-- tbl.TUYENXE
ALTER TABLE TUYENXE ADD CONSTRAINT FK_TUYENXE_CHINHANH FOREIGN KEY (Ma_Chi_Nhanh) REFERENCES CHINHANH (Ma_Chi_Nhanh);

-- tbl.TAIXE
ALTER TABLE TAIXE ADD CONSTRAINT FK_TAIXE_CHINHANH FOREIGN KEY (Ma_Chi_Nhanh) REFERENCES CHINHANH (Ma_Chi_Nhanh);

-- tbl.TRAMKHOIDAU
ALTER TABLE TRAMKHOIDAU ADD CONSTRAINT FK_TRAMKHOIDAU_TUYENXE FOREIGN KEY (Ma_Tuyen) REFERENCES TUYENXE (Ma_Tuyen);
ALTER TABLE TRAMKHOIDAU ADD CONSTRAINT FK_TRAMKHOIDAU_TRAMXE FOREIGN KEY (Ma_Tram) REFERENCES TRAMXE (Ma_Tram);

-- tbl.LOTRINH
ALTER TABLE LOTRINH ADD CONSTRAINT FK_LOTRINH_TUYENXE FOREIGN KEY (Ma_Tuyen) REFERENCES TUYENXE (Ma_Tuyen);
ALTER TABLE LOTRINH ADD CONSTRAINT FK_LOTRINH_TRAMXE FOREIGN KEY (Ma_Tram) REFERENCES TRAMXE (Ma_Tram);

-- tbl.TP_TUYENXE
ALTER TABLE TP_TUYENXE ADD CONSTRAINT FK_TP_TUYENXE_THANHPHO FOREIGN KEY (Ma_Thanh_Pho) REFERENCES THANHPHO (Ma_Thanh_Pho);
ALTER TABLE TP_TUYENXE ADD CONSTRAINT FK_TP_TUYENXE_TUYENXE FOREIGN KEY (Ma_Tuyen) REFERENCES TUYENXE (Ma_Tuyen);

-- tbl.TAIXE_LIENHE
ALTER TABLE TAIXE_LIENHE ADD CONSTRAINT FK_TAIXE_LIENHE_TAIXE FOREIGN KEY (Ma_Tai_Xe) REFERENCES TAIXE (Ma_Tai_Xe);

-- tbl.CHINHANH_LIENHE
ALTER TABLE CHINHANH_LIENHE ADD CONSTRAINT FK_CHINHANH_LIENHE_CHINHANH FOREIGN KEY (Ma_Chi_Nhanh) REFERENCES CHINHANH (Ma_Chi_Nhanh);

-- tbl.CHINHANH
ALTER TABLE CHINHANH ADD CONSTRAINT FK_CHINHANH_THANHPHO FOREIGN KEY (Ma_Thanh_Pho) REFERENCES THANHPHO (Ma_Thanh_Pho);

-- 3. Cài đặt dữ liệu cho các bảng
-- 3.1. tbl.TRAMXE
INSERT INTO TRAMXE (Ma_Tram, Vi_Tri_Tram)
VALUES
-- Tuyến '01'
    ('MT1', N'Bến xe Gia Lâm, số 9, đường Ngô Gia Khảm, quận Long Biên, Hà Nội'),
    ('MT2', N'Số 549, đường Nguyễn Văn Cừ, quận Long Biên, Hà Nội'),
    ('MT3', N'Công ty Cổ phần Cầu 5 Thăng Long, số 309, đường Nguyễn Văn Cừ, quận Long Biên, Hà Nội'),
    ('MT4', N'Số 135, đường Nguyễn Văn Cừ, quận Long Biên, Hà Nội'),
    ('MT5', N'Điểm trung chuyển xe buýt Long Biên'),
    ('MT6', N'Số 50, phố Hàng Cót, quận Hoàn Kiếm, Hà Nội'),
    ('MT7', N'Số 28, phố Đường Thành, quận Hoàn Kiếm, Hà Nội'),
    ('MT8', N'Bệnh viện Phụ sản Trung ương, số 43, phố Tràng Thi, quận Hoàn Kiếm, Hà Nội'),
    ('MT9', N'Tổng Công ty Đường sắt Việt Nam, số 118, đường Lê Duẩn, quận Hoàn Kiếm, Hà Nội'),
    ('MT10', N'Ga Hà Nội, số 120, đường Lê Duẩn, quận Hoàn Kiếm, Hà Nội'),
    ('MT11', N'Số 78-80A, phố Khâm Thiên, quận Đống Đa, Hà Nội'),
    ('MT12', N'Số 274-276, phố Khâm Thiên, quận Đống Đa, Hà Nội'),
    ('MT13', N'Số 142-144, phố Nguyễn Lương Bằng, quận Đống Đa, Hà Nội'),
    ('MT14', N'Gò Đống Đa, quận Đống Đa, Hà Nội'),
    ('MT15', N'Số 290, phố Tây Sơn, quận Đống Đa, Hà Nội'),
    ('MT16', N'Số 94, đường Nguyễn Trãi, quận Thanh Xuân, Hà Nội'),
    ('MT17', N'Số 132, đường Nguyễn Trãi, quận Thanh Xuân, Hà Nội'),
    ('MT18', N'Số 322, đường Nguyễn Trãi, quận Thanh Xuân, Hà Nội'),
    ('MT19', N'Số 386, đường Nguyễn Trãi, quận Thanh Xuân, Hà Nội'),
    ('MT20', N'Bách hóa Thanh Xuân, C12, đường Nguyễn Trãi, quận Thanh Xuân, Hà Nội'),
    ('MT21', N'Số 204-206, đường Nguyễn Trãi, quận Thanh Xuân, Hà Nội'),
    ('MT22', N'Công ty Cổ phần 873, số 346, đường Nguyễn Trãi, quận Nam Từ Liêm, Hà Nội'),
    ('MT23', N'Số 10, đường Trần Phú, quận Hà Đông, Hà Nội'),
    ('MT24', N'Học viện Công nghệ Bưu chính - Viễn thông, số 96A, đường Trần Phú, quận Hà Đông, Hà Nội'),
    ('MT25', N'Số 106B-106C, đường Trần Phú, quận Hà Đông, Hà Nội'),
    ('MT26', N'Khách sạn Sông Nhuệ, số 148, đường Trần Phú, quận Hà Đông, Hà Nội'),
    ('MT27', N'Số 8, đường Quang Trung, quận Hà Đông, Hà Nội'),
    ('MT28', N'Nhà thi đấu Hà Đông, số 182, đường Quang Trung, quận Hà Đông, Hà Nội'),
    ('MT29', N'Số 428-430, đường Quang Trung, quận Hà Đông, Hà Nội'),
    ('MT30', N'Số 530-532, đường Quang Trung, quận Hà Đông, Hà Nội'),
    ('MT31', N'Số 678-680, đường Quang Trung, quận Hà Đông, Hà Nội'),
    ('MT32', N'Nissan Hà Đông, số 936, đường Quang Trung, quận Hà Đông, Hà Nội'),
    ('MT33', N'Bến xe Yên Nghĩa, quốc lộ 6, quận Hà Đông, Hà Nội'),
-- Tuyến '03A'
    ('MT34', N'Bến xe Giáp Bát, đường Giải Phóng, quận Hoàng Mai, Hà Nội'),
    ('MT35', N'Toyota Giải Phóng, số 807, đường Giải Phóng, quận Hoàng Mai, Hà Nội'),
    ('MT36', N'Số 649, đường Giải Phóng, quận Hoàng Mai, Hà Nội'),
    ('MT37', N'Số 487, đường Giải Phóng, quận Hoàng Mai, Hà Nội'),
    ('MT38', N'Số 175-177, đường Giải Phóng, quận Hoàng Mai, Hà Nội'),
    ('MT39', N'Đại học Bách khoa Hà Nội, số 1, đường Đại Cồ Việt, quận Hai Bà Trưng, Hà Nội'),
    ('MT40', N'Điểm dừng xe buýt hồ Bảy Mẫu, đối diện số 394, đường Lê Duẩn, quận Hai Bà Trưng, Hà Nội'),
    ('MT41', N'Công viên Thống Nhất, đối diện số 326, đường Lê Duẩn, quận Hai Bà Trưng, Hà Nội'),
    ('MT42', N'Điểm dừng xe buýt hồ Thiền Quang, đối diện số 28, phố Trần Bình Trọng, quận Hoàn Kiếm, Hà Nội'),
    ('MT43', N'Số 67, đường Trần Hưng Đạo, quận Hoàn Kiếm, Hà Nội'),
    ('MT44', N'Số 13A, đường Trần Hưng Đạo, quận Hoàn Kiếm, Hà Nội'),
    ('MT45', N'Điểm dừng xe buýt, cổng Bệnh viện Trung ương Quân đội 108, số 1B, đường Trần Hưng Đạo, quận Hai Bà Trưng, Hà Nội'),
    ('MT46', N'Điểm dừng xe buýt, đầu ngõ 971, đường Hồng Hà, quận Hoàn Kiếm, Hà Nội'),
    ('MT47', N'Điểm dừng xe buýt, đối diện Hội sở chính Vietcombank, số 198, đường Trần Quang Khải, quận Hoàn Kiếm, Hà Nội'),
    ('MT48', N'Điểm dừng xe buýt, đối diện số 162, đường Trần Quang Khải, quận Hoàn Kiếm, Hà Nội'),
    ('MT49', N'Số 373, đường Hồng Hà, quận Hoàn Kiếm, Hà Nội'),
    ('MT50', N'Cục Kiểm định Hải quan, số 162, đường Nguyễn Văn Cừ, quận Long Biên, Hà Nội'),
    ('MT51', N'Số 358, đường Nguyễn Văn Cừ, quận Long Biên, Hà Nội'),
    ('MT52', N'Số 436-438, đường Nguyễn Văn Cừ, quận Long Biên, Hà Nội'),
    ('MT53', N'Điểm dừng xe buýt, đối diện số 447, đường Ngọc Lâm, quận Long Biên, Hà Nội'),
-- Tuyến '42'
    ('MT54', N'Số 36, phố Kim Đồng, quận Hoàng Mai, Hà Nội'),
    ('MT55', N'Điểm dừng xe buýt, đối diện trường THCS Tân Mai, số 147, phố Tân Mai, quận Hoàng Mai, Hà Nội'),
    ('MT56', N'Điểm dừng xe buýt, đối diện công viên hồ Đền Lừ, phố Tân Mai, quận Hoàng Mai, Hà Nội'),
    ('MT57', N'Chợ Đầu mối phía Nam, phố Tân Mai, quận Hoàng Mai, Hà Nội'),
    ('MT58', N'Công ty Da giày Hà Nội, số 441, đường Nguyễn Tam Trinh, quận Hoàng Mai, Hà Nội'),
    ('MT59', N'Số 251-253, đường Nguyễn Tam Trinh, quận Hoàng Mai, Hà Nội'),
    ('MT60', N'Số 89, đường Nguyễn Tam Trinh, quận Hoàng Mai, Hà Nội'),
    ('MT61', N'Điểm dừng xe buýt, số 613-615, phố Kim Ngưu, quận Hai Bà Trưng, Hà Nội'),
    ('MT62', N'Điểm dừng xe buýt, đối diện Tập thể E6, phố Quỳnh Mai, quận Hai Bà Trưng, Hà Nội'),
    ('MT63', N'Điểm dừng xe buýt, đối diện Bãi trông xe Công ty TNHH MTV Khai thác điểm đỗ xe Hà Nội, số 98, phố Kim Ngưu, quận Hai Bà Trưng, Hà Nội'),
    ('MT64', N'Số 131, phố Lò Đúc, quận Hai Bà Trưng, Hà Nội'),
    ('MT65', N'Số 9, phố Trần Thánh Tông, quận Hai Bà Trưng, Hà Nội'),
    ('MT66', N'Doanh trại Quân đội Nhân dân Việt Nam, số 1B, phố Trần Thánh Tông, quận Hai Bà Trưng, Hà Nội'),
    ('MT67', N'Phòng Công chứng số 2 thành phố Hà Nội, số 654, đường Nguyễn Văn Cừ, quận Long Biên, Hà Nội'),
    ('MT68', N'Bưu điện Đức Giang, số 79, đường Ngô Gia Tự, quận Long Biên, Hà Nội'),
    ('MT69', N'Ủy ban Nhân dân phường Đức Giang, số 170, đường Ngô Gia Tự, quận Long Biên, Hà Nội'),
    ('MT70', N'Số 316-318, đường Ngô Gia Tự, quận Long Biên, Hà Nội'),
    ('MT71', N'Số 368, đường Ngô Gia Tự, quận Long Biên, Hà Nội'),
    ('MT72', N'Cầu Đuống, số 608-610, đường Ngô Gia Tự, quận Long Biên, Hà Nội'),
    ('MT73', N'Ga Yên Viên, thị trấn Yên Viên, huyện Gia Lâm, Hà Nội'),
    ('MT74', N'Công ty Cổ phần Giày Yên Viên, số 488, đường Hà Huy Tập, thị trấn Yên Viên, huyện Gia Lâm, Hà Nội'),
    ('MT75', N'Số 664, đường Hà Huy Tập, thị trấn Yên Viên, huyện Gia Lâm, Hà Nội'),
    ('MT76', N'Điểm dừng xe buýt, đối diện số 38, dốc Lã, huyện Gia Lâm, Hà Nội'),
    ('MT77', N'Điểm dừng xe buýt, đối diện Xưởng vẽ tranh sơn dầu Mai Hồng, huyện Gia Lâm, Hà Nội'),
    ('MT78', N'Điểm dừng xe buýt, cạnh Cửa hàng vải Dũng Thúy, huyện Gia Lâm, Hà Nội'),
    ('MT79', N'Điểm dừng xe buýt, chợ vải Ninh Hiệp, huyện Gia Lâm, Hà Nội'),
    ('MT80', N'Bưu điện xã Ninh Hiệp, thôn 1, xã Ninh Hiệp, huyện Gia Lâm, Hà Nội'),
    ('MT81', N'Xóm 8, xã Ninh Hiệp, huyện Gia Lâm, Hà Nội'),
    ('MT82', N'Khu sinh thái Cánh Buồm Xanh, đường Ninh Hiệp, huyện Gia Lâm, Hà Nội'),
    ('MT83', N'Điểm dừng xe buýt, đối diện cổng Khu công nghiệp Ninh Hiệp, đường Ninh Hiệp, huyện Gia Lâm, Hà Nội'),
    ('MT84', N'Điểm dừng xe buýt, hầm chui quốc lộ 1B, đường Phù Đổng, huyện Gia Lâm, Hà Nội'),
    ('MT85', N'Điểm dừng xe buýt, trường THCS Phù Đổng, đường Phù Đổng, huyện Gia Lâm, Hà Nội'),
    ('MT86', N'Điểm dừng xe buýt, thôn Đổng Viên, đường Phù Đổng, huyện Gia Lâm, Hà Nội'),
    ('MT87', N'Điểm dừng xe buýt, đường Trung Mầu, huyện Gia Lâm, Hà Nội'),
-- Tuyến '49'   
    ('MT88', N'Điểm trung chuyển xe buýt Trần Khánh Dư'),
    ('MT89', N'Điểm dừng xe buýt, đối diện Bệnh viện Trung ương Quân đội 108, số 1B, đường Trần Hưng Đạo, quận Hai Bà Trưng, Hà Nội'),
    ('MT90', N'Đại học Khoa học tự nhiên, số 19, phố Lê Thánh Tông, quận Hoàn Kiếm, Hà Nội'),
    ('MT91', N'Số 18, phố Lý Thường Kiệt, quận Hoàn Kiếm, Hà Nội'),
    ('MT92', N'Điểm dừng xe buýt, đối diện số 39, phố Lý Thường Kiệt, quận Hoàn Kiếm, Hà Nội'),
    ('MT93', N'Số 44, phố Lý Thường Kiệt, quận Hoàn Kiếm, Hà Nội'),
    ('MT94', N'Số 54, phố Lý Thường Kiệt, quận Hoàn Kiếm, Hà Nội'),
    ('MT95', N'Số 94, Ô Chợ Dừa, quận Đống Đa, Hà Nội'),
    ('MT96', N'Ngã ba Hào Nam - An Trạch, quận Đống Đa, Hà Nội'),
    ('MT97', N'Trụ sở Bộ Y tế, số 8A, đường Giảng Võ, quận Ba Đình, Hà Nội'),
    ('MT98', N'Điểm dừng xe buýt, đối diện số 251, đường Giảng Võ, quận Ba Đình, Hà Nội'),
    ('MT99', N'Số 666-668, đường Đê La Thành, quận Ba Đình, Hà Nội'),
    ('MT100', N'Điểm dừng xe buýt, ngõ 1072, đường Đê La Thành, quận Ba Đình, Hà Nội'),
    ('MT101', N'Điểm trung chuyển xe buýt Cầu Giấy - Thủ Lệ 01'),
    ('MT102', N'Số 148-150, đường Cầu Giấy, quận Cầu Giấy, Hà Nội'),
    ('MT103', N'Ga tàu điện Chùa Hà, quận Cầu Giấy, Hà Nội'),
    ('MT104', N'Số 370, đường Cầu Giấy, quận Cầu Giấy, Hà Nội'),
    ('MT105', N'Học viện Báo chí và Tuyên truyền, số 36, đường Xuân Thủy, quận Cầu Giấy, Hà Nội'),
    ('MT106', N'Chợ Xanh, quận Cầu Giấy, Hà Nội'),
    ('MT107', N'Đại học Sư phạm Hà Nội, số 136, đường Xuân Thủy, quận Cầu Giấy, Hà Nội'),
    ('MT108', N'Điểm dừng xe buýt, đối diện Đại học Thương mại, số 79, đường Hồ Tùng Mậu, quận Cầu Giấy, Hà Nội'),
    ('MT109', N'Điểm dừng xe buýt, chung cư A1 - ngân hàng Vietcombank, phố Nguyễn Cơ Thạch, quận Nam Từ Liêm, Hà Nội'),
    ('MT110', N'Khu đô thị Mỹ Đình II, quận Nam Từ Liêm, Hà Nội'),
    ('MT111', N'Khu đô thị Mỹ Đình I, quận Nam Từ Liêm, Hà Nội'),
    ('MT112', N'Điểm dừng xe buýt, tòa nhà CT2A, khu đô thị Xuân Phương, quận Nam Từ Liêm, Hà Nội'),
    ('MT113', N'Điểm dừng xe buýt, cầu vượt Xuân Phương, quận Nam Từ Liêm, Hà Nội'),
    ('MT114', N'Nhà máy Bia Sài Gòn, quận Nam Từ Liêm, Hà Nội'),
    ('MT115', N'CN4 Xuân Phương, quận Nam Từ Liêm, Hà Nội'),
    ('MT116', N'Điểm dừng xe buýt, đối diện tòa nhà chung cư Hateco Group, quận Nam Từ Liêm, Hà Nội'),
    ('MT117', N'Điểm dừng xe buýt, Nhổn, quận Nam Từ Liêm, Hà Nội'),
-- Tuyến '54'
    ('MT118', N'Trường Cao đẳng Thủy sản, phố Trần Phú, thành phố Từ Sơn, tỉnh Bắc Ninh'),
    ('MT119', N'Đối diện Phòng khám Đa khoa Tân Đức, số 47, phố Trần Phú, thành phố Từ Sơn, tỉnh Bắc Ninh'),
    ('MT120', N'Điểm dừng xe buýt, đối diện Nhà hàng Mambo 81, phố Trần Phú, thành phố Từ Sơn, tỉnh Bắc Ninh'),
    ('MT121', N'Bưu điện mới Từ Sơn, đối diện số 242, phố Trần Phú, thành phố Từ Sơn, tỉnh Bắc Ninh'),
    ('MT122', N'Số 57, phố Trần Phú, thành phố Từ Sơn, tỉnh Bắc Ninh'),
    ('MT123', N'Số 185, đường Minh Khai, thành phố Từ Sơn, tỉnh Bắc Ninh'),
    ('MT124', N'Bệnh viện Đa khoa Từ Sơn, đường Minh Khai, thành phố Từ Sơn, tỉnh Bắc Ninh'),
    ('MT125', N'Chợ Viềng, đường Minh Khai, thành phố Từ Sơn, tỉnh Bắc Ninh'),
    ('MT126', N'Điểm dừng xe buýt, đối diện đường vào chùa Tiêu, đường Minh Khai, thành phố Từ Sơn, tỉnh Bắc Ninh'),
    ('MT127', N'Điểm dừng xe buýt, lối vào Khu công nghiệp Tiên Sơn, '),
    ('MT128', N'Điểm dừng xe buýt, đối diện Lăng thôn Đình Cả, đường Minh Khai, thành phố Từ Sơn, tỉnh Bắc Ninh'),
    ('MT129', N'Điểm dừng xe buýt, chợ Nội Duệ, đường Lý Thường Kiệt, thành phố Từ Sơn, tỉnh Bắc Ninh'),
    ('MT130', N'Điểm dừng xe buýt, thị trấn Lim, đường Lý Thường Kiệt, thành phố Từ Sơn, tỉnh Bắc Ninh'),
    ('MT131', N'Chi cục thuế Tiên Du, đối diện số 172, đường Lý Thường Kiệt, thành phố Từ Sơn, tỉnh Bắc Ninh'),
    ('MT132', N'Ủy ban Nhân dân thị trấn Lim, đối diện số 143, đường Hai Bà Trưng, thành phố Từ Sơn, tỉnh Bắc Ninh'),
    ('MT133', N'Số 235-237, đường Nguyễn Văn Cừ, thành phố Từ Sơn, tỉnh Bắc Ninh'),
    ('MT134', N'Bệnh xá Công an tỉnh Bắc Ninh, số 23, đường Nguyễn Văn Cừ, thành phố Từ Sơn, tỉnh Bắc Ninh'),
    ('MT135', N'Hiệu sách nhân dân tỉnh Bắc Ninh, số 678, đường Ngô Gia Tự, thành phố Từ Sơn, tỉnh Bắc Ninh'),
    ('MT136', N'Số 395, đường Ngô Gia Tự, thành phố Từ Sơn, tỉnh Bắc Ninh'),
    ('MT137', N'Học viện Ngân hàng - phân viện Bắc Ninh, số 331, đường Ngô Gia Tự, thành phố Từ Sơn, tỉnh Bắc Ninh '),
    ('MT138', N'Khách sạn Suối Hoa, số 213, đường Ngô Gia Tự, thành phố Từ Sơn, tỉnh Bắc Ninh');

-- 3.2. tbl.THANHPHO
INSERT INTO THANHPHO (Ma_Thanh_Pho, Ten_Thanh_Pho)
VALUES
    ('TP1', N'Thành phố Hà Nội'),
    ('TP2', N'Thành phố Vĩnh Yên'),
    ('TP3', N'Thành phố Phúc Yên'),
    ('TP4', N'Thành phố Chí Linh'),
    ('TP5', N'Thành phố Hải Dương'),
    ('TP6', N'Thành phố Hòa Bình'),
    ('TP7', N'Thành phố Việt Trì'),
    ('TP8', N'Thành phố Hải Phòng'),
    ('TP9', N'Thành phố Từ Sơn'),
    ('TP10', N'Thành phố Thái Nguyên');

-- 3.3. tbl.CHINHANH
INSERT INTO CHINHANH (Ma_Chi_Nhanh, Ma_Thanh_Pho, Ten_Chi_Nhanh, Dia_Chi)
VALUES
    ('CN1', 'TP1', N'Xí nghiệp Bus Hà Nội', N'Số 29, phố Lạc Trung, quận Hai Bà Trưng, Hà Nội'),
    ('CN2', 'TP1', N'Xí nghiệp xe buýt 10-10 Hà Nội', N'Đường Trần Vỹ, Cầu Giấy, Hà Nội'),
    ('CN3', 'TP1', N'Xí nghiệp xe buýt Cầu Bươu', N'Thôn Cầu Bươu, huyện Thanh Trì, Hà Nội'),
    ('CN4', 'TP1', N'Xí nghiệp xe buýt Yên Viên', N'Thôn Lã Côi, thị trấn Yên Viên, huyện Gia Lâm, Hà Nội'),
    ('CN5', 'TP1', N'Xí nghiệp xe buýt nhanh BRT Hà Nội', N'Tầng 2, số 1, đường Kim Mã, quận Ba Đình, Hà Nội'),
    ('CN6', 'TP1', N'Xí nghiệp Xe khách Nam Hà Nội', N'Khu Đền Lừ 1, quận Hoàng Mai, Hà Nội'),
    ('CN7', 'TP1', N'Trung tâm Tân Đạt', N'Đường Phan Trọng Tuệ, huyện Thanh Trì, Hà Nội'),
    ('CN8', 'TP1', N'Công ty Cổ phần Vận tải dịch vụ Liên Ninh', N'Km 15+200, quốc lộ 1A, thôn Yên Phú, huyện Thanh Trì, Hà Nội'),
    ('CN9', 'TP1', N'Công ty Cổ phần Xe điện Hà Nội', N'Số 454, đường Phạm Văn Đồng, quận Bắc Từ Liêm, Hà Nội'),
    ('CN10', 'TP1', N'Công ty Cổ phần Vận tải Newway', N'Khu Kim Ngưu II, phường Hoàng Mai, quận Hoàng Mai, Hà Nội');

-- 3.4. tbl.CHINHANH_LIENHE
INSERT INTO CHINHANH_LIENHE (Ma_Chi_Nhanh, Loai_Lien_He_Email_SDT, Gia_Tri)
VALUES
    ('CN1', N'Số điện thoại', '0243 821 2816'),
    ('CN1', 'Email', 'xnbuythanoi@gmail.com'),
    ('CN2', N'Số điện thoại', '0243 558 4673'),
    ('CN2', 'Email', 'xn_bus10@transerco.com.vn'),
    ('CN3', N'Số điện thoại', '0243 268 6696'),
    ('CN3', 'Email', 'xn_buscaubuou@transerco.com.vn'),
    ('CN4', N'Số điện thoại', '0243 521 1999'),
    ('CN4', 'Email', 'xn_busyv@transerco.com.vn'),
    ('CN5', N'Số điện thoại', '0243 733 6262'),
    ('CN5', 'Email', 'xn_brt@transerco.com.vn'),
    ('CN6', N'Số điện thoại', '0243 858 4362'),
    ('CN6', 'Email', 'xn_xkn@transerco.com.vn'),
    ('CN7', N'Số điện thoại', '0243 793 8696'),
    ('CN7', 'Email', 'tandat@transerco.com.vn'),
    ('CN8', N'Số điện thoại', '0243 686 6506'),
    ('CN8', 'Email', 'lienninh@transerco.com.vn'),
    ('CN9', N'Số điện thoại', '0243 752 2222'),
    ('CN9', 'Email', 'vanthuxdhn@gmail.com'),
    ('CN10', N'Số điện thoại', '0243 565 4898'),
    ('CN10', 'Email', 'cty_newway@transerco.com.vn');

-- 3.5. tbl.TUYENXE
INSERT INTO TUYENXE (Ma_Tuyen, Ma_Chi_Nhanh, Ten_Tuyen, Gio_Bat_Dau, Gio_Ket_Thuc)
VALUES
    ('BUS1', 'CN1', '01', '05:00', '21:00'), 
    ('BUS2', 'CN1', '03A', '05:00', '21:00'), 
    ('BUS3', 'CN6', '04', '05:00', '21:00'),
    ('BUS4', 'CN7', '06A', '05:00', '21:00'),
    ('BUS5', 'CN8', '08A', '05:00', '22:30'),
    ('BUS6', 'CN8', '19', '05:00', '21:00'),
    ('BUS7', 'CN2', '29', '05:00', '21:00'),
    ('BUS8', 'CN6', '42', '05:00', '21:00'),    
    ('BUS9', 'CN6', '49', '05:00', '21:00'),    
    ('BUS10', 'CN4', '63', '05:00', '21:30'),
    ('BUS11', 'CN4', '54', '04:45', '21:15');   

-- 3.6. tbl.LOTRINH
INSERT INTO LOTRINH (Ma_Tuyen, Ma_Tram, Thu_Tu_Tram)
VALUES
-- Tuyến '01'
    ('BUS1', 'MT1', '1'),
    ('BUS1', 'MT2', '2'),
    ('BUS1', 'MT3', '3'),
    ('BUS1', 'MT4', '4'),
    ('BUS1', 'MT5', '5'),
    ('BUS1', 'MT6', '6'),
    ('BUS1', 'MT7', '7'),
    ('BUS1', 'MT8', '8'),
    ('BUS1', 'MT9', '9'),
    ('BUS1', 'MT10', '10'),
    ('BUS1', 'MT11', '11'),
    ('BUS1', 'MT12', '12'),
    ('BUS1', 'MT13', '13'),
    ('BUS1', 'MT14', '14'),
    ('BUS1', 'MT15', '15'),
    ('BUS1', 'MT16', '16'),
    ('BUS1', 'MT17', '17'),
    ('BUS1', 'MT18', '18'),
    ('BUS1', 'MT19', '19'),
    ('BUS1', 'MT20', '20'),
    ('BUS1', 'MT21', '21'),
    ('BUS1', 'MT22', '22'),
    ('BUS1', 'MT23', '23'),
    ('BUS1', 'MT24', '24'),
    ('BUS1', 'MT25', '25'),
    ('BUS1', 'MT26', '26'),
    ('BUS1', 'MT27', '27'),
    ('BUS1', 'MT28', '28'),
    ('BUS1', 'MT29', '29'),
    ('BUS1', 'MT30', '30'),
    ('BUS1', 'MT31', '31'),
    ('BUS1', 'MT32', '32'),
    ('BUS1', 'MT33', '33'),
-- Tuyến '03A'
    ('BUS2', 'MT34', '1'),
    ('BUS2', 'MT35', '2'),
    ('BUS2', 'MT36', '3'),
    ('BUS2', 'MT37', '4'),
    ('BUS2', 'MT38', '5'),
    ('BUS2', 'MT39', '6'),
    ('BUS2', 'MT40', '7'),
    ('BUS2', 'MT41', '8'),
    ('BUS2', 'MT42', '9'),
    ('BUS2', 'MT43', '10'),
    ('BUS2', 'MT44', '11'),
    ('BUS2', 'MT45', '12'),
    ('BUS2', 'MT46', '13'),
    ('BUS2', 'MT47', '14'),
    ('BUS2', 'MT48', '15'),
    ('BUS2', 'MT49', '16'),
    ('BUS2', 'MT50', '17'),
    ('BUS2', 'MT51', '18'),
    ('BUS2', 'MT52', '19'),
    ('BUS2', 'MT1', '20'),
-- Tuyến '42'
    ('BUS8', 'MT34', '1'),
    ('BUS8', 'MT54', '2'),
    ('BUS8', 'MT55', '3'),
    ('BUS8', 'MT56', '4'),
    ('BUS8', 'MT57', '5'),
    ('BUS8', 'MT58', '6'),
    ('BUS8', 'MT59', '7'),
    ('BUS8', 'MT60', '8'),
    ('BUS8', 'MT61', '9'),
    ('BUS8', 'MT62', '10'),
    ('BUS8', 'MT63', '11'),
    ('BUS8', 'MT64', '12'),
    ('BUS8', 'MT65', '13'),
    ('BUS8', 'MT66', '14'),
    ('BUS8', 'MT45', '15'),
    ('BUS8', 'MT46', '16'),
    ('BUS8', 'MT47', '17'),
    ('BUS8', 'MT48', '18'),
    ('BUS8', 'MT49', '19'),
    ('BUS8', 'MT50', '20'),
    ('BUS8', 'MT51', '21'),
    ('BUS8', 'MT52', '22'),
    ('BUS8', 'MT53', '23'),
    ('BUS8', 'MT67', '24'),
    ('BUS8', 'MT68', '25'),
    ('BUS8', 'MT69', '26'),
    ('BUS8', 'MT70', '27'),
    ('BUS8', 'MT71', '28'),
    ('BUS8', 'MT72', '29'),
    ('BUS8', 'MT73', '30'),
    ('BUS8', 'MT74', '31'),
    ('BUS8', 'MT75', '32'),
    ('BUS8', 'MT76', '33'),
    ('BUS8', 'MT77', '34'),
    ('BUS8', 'MT78', '35'),
    ('BUS8', 'MT79', '36'),
    ('BUS8', 'MT80', '37'),
    ('BUS8', 'MT81', '38'),
    ('BUS8', 'MT82', '39'),
    ('BUS8', 'MT83', '40'),
    ('BUS8', 'MT84', '41'),
    ('BUS8', 'MT85', '42'),
    ('BUS8', 'MT86', '43'),
    ('BUS8', 'MT87', '44'),
-- Tuyến '49'
    ('BUS9', 'MT88', '1'),
    ('BUS9', 'MT89', '2'),
    ('BUS9', 'MT90', '3'),
    ('BUS9', 'MT91', '4'),
    ('BUS9', 'MT92', '5'),
    ('BUS9', 'MT93', '6'),
    ('BUS9', 'MT94', '7'),
    ('BUS9', 'MT10', '8'),
    ('BUS9', 'MT11', '9'),
    ('BUS9', 'MT12', '10'),
    ('BUS9', 'MT95', '11'),
    ('BUS9', 'MT96', '12'),
    ('BUS9', 'MT97', '13'),
    ('BUS9', 'MT98', '14'),
    ('BUS9', 'MT99', '15'),
    ('BUS9', 'MT100', '16'),
    ('BUS9', 'MT101', '17'),
    ('BUS9', 'MT102', '18'),
    ('BUS9', 'MT103', '19'),
    ('BUS9', 'MT104', '20'),
    ('BUS9', 'MT105', '21'),
    ('BUS9', 'MT106', '22'),
    ('BUS9', 'MT107', '23'),
    ('BUS9', 'MT108', '24'),
    ('BUS9', 'MT109', '25'),
    ('BUS9', 'MT110', '26'),
    ('BUS9', 'MT111', '27'),
    ('BUS9', 'MT112', '28'),
    ('BUS9', 'MT113', '29'),
    ('BUS9', 'MT114', '30'),
    ('BUS9', 'MT115', '31'),
    ('BUS9', 'MT116', '32'),
    ('BUS9', 'MT117', '33'),
-- Tuyến '54'
    ('BUS11', 'MT5', '1'),
    ('BUS11', 'MT49', '2'),
    ('BUS11', 'MT50', '3'),
    ('BUS11', 'MT51', '4'),
    ('BUS11', 'MT52', '5'),
    ('BUS11', 'MT53', '6'),
    ('BUS11', 'MT67', '7'),
    ('BUS11', 'MT68', '8'),
    ('BUS11', 'MT69', '9'),
    ('BUS11', 'MT70', '10'),
    ('BUS11', 'MT71', '11'),
    ('BUS11', 'MT72', '12'),
    ('BUS11', 'MT73', '13'),
    ('BUS11', 'MT74', '14'),
    ('BUS11', 'MT75', '15'),
    ('BUS11', 'MT76', '16'),
    ('BUS11', 'MT118', '17'),
    ('BUS11', 'MT119', '18'),
    ('BUS11', 'MT120', '19'),
    ('BUS11', 'MT121', '20'),
    ('BUS11', 'MT122', '21'),
    ('BUS11', 'MT123', '22'),
    ('BUS11', 'MT124', '23'),
    ('BUS11', 'MT125', '24'),
    ('BUS11', 'MT126', '25'),
    ('BUS11', 'MT127', '26'),
    ('BUS11', 'MT128', '27'),
    ('BUS11', 'MT129', '28'),
    ('BUS11', 'MT130', '29'),
    ('BUS11', 'MT131', '30'),
    ('BUS11', 'MT132', '31'),
    ('BUS11', 'MT133', '32'),
    ('BUS11', 'MT136', '33'),
    ('BUS11', 'MT137', '34'),
    ('BUS11', 'MT138', '35');

-- 3.7. tbl.TP_TUYENXE
INSERT INTO TP_TUYENXE (Ma_Thanh_Pho, Ma_Tuyen)
VALUES
    ('TP1', 'BUS1'),
    ('TP1', 'BUS2'),
    ('TP1', 'BUS3'),
    ('TP1', 'BUS4'),
    ('TP1', 'BUS5'),
    ('TP1', 'BUS6'),
    ('TP1', 'BUS7'),
    ('TP1', 'BUS8'),
    ('TP1', 'BUS9'),
    ('TP1', 'BUS10'),
    ('TP1', 'BUS11'),
    ('TP9', 'BUS11');

-- 3.8. tbl.TRAMKHOIDAU
INSERT INTO TRAMKHOIDAU (Ma_Tuyen, Ma_Tram)
VALUES
    ('BUS1', 'MT1'),
    ('BUS2', 'MT34'),
    ('BUS8', 'MT34'),
    ('BUS9', 'MT88'),
    ('BUS11', 'MT5');

-- 3.9. tbl.TRAMKETTHUC
INSERT INTO TRAMKETTHUC (Ma_Tuyen, Ma_Tram)
VALUES
    ('BUS1', 'MT33'),
    ('BUS2', 'MT1'),
    ('BUS8', 'MT87'),
    ('BUS9', 'MT117'),
    ('BUS11', 'MT138');

-- 3.10 tbl.TAIXE
INSERT INTO TAIXE (Ma_Tai_Xe, Ma_Chi_Nhanh, Ho_Va_Ten, Ngay_Sinh, Dia_Chi)
VALUES
-- Chi nhánh 1
-- Tuyến '01'
    ('TX1', 'CN1', N'Nguyễn Văn Hùng', '1978-05-12', N'Số 12, đường Nguyễn Trãi, quận Thanh Xuân, Hà Nội'),
    ('TX2', 'CN1', N'Trần Đình Hòa', '1975-07-23', N'Số 45, đường Hồ Tùng Mậu, quận Cầu Giấy, Hà Nội'),
    ('TX3', 'CN1', N'Phạm Văn Cường', '1980-01-30', N'Số 23, phố Láng Hạ, quận Đống Đa, Hà Nội'),
    ('TX4', 'CN1', N'Lê Minh Tuấn', '1973-11-11', N'Số 67, đường Hoàng Quốc Việt, quận Cầu Giấy, Hà Nội'),
    ('TX5', 'CN1', N'Bùi Quốc Dũng', '1982-03-25', N'Số 89, đường Nguyễn Chí Thanh, quận Ba Đình, Hà Nội'),
-- Tuyến '03A'
    ('TX6', 'CN1', N'Hoàng Mạnh Hùng', '1976-06-18', N'Số 15, đường Trần Phú, quận Ba Đình, Hà Nội'),
    ('TX7', 'CN1', N'Đỗ Thành Nam', '1981-08-29', N'Số 32, đường Tô Hiệu, quận Cầu Giấy, Hà Nội'),
    ('TX8', 'CN1', N'Ngô Văn Kiên', '1974-12-07', N'Số 76, đường Cầu Giấy, quận Cầu Giấy, Hà Nội'),
    ('TX9', 'CN1', N'Dương Thanh Hải', '1977-04-16', N'Số 54, phố Kim Mã, quận Ba Đình, Hà Nội'),
    ('TX10', 'CN1', N'Trịnh Văn Dũng', '1972-09-05', N'Số 90, đường Trường Chinh, quận Đống Đa, Hà Nội'),

-- Chi nhánh 4
-- Tuyến '54'
    ('TX11', 'CN4', N'Vũ Quang Đạt', '1979-11-23', N'Số 78, phố Tây Sơn, quận Đống Đa, Hà Nội'),
    ('TX12', 'CN4', N'Lý Xuân Trường', '1980-02-17', N'Số 45, đường Giải Phóng, quận Hoàng Mai, Hà Nội'),
    ('TX13', 'CN4', N'Tạ Đình Thắng', '1971-07-20', N'Số 13, phố Thái Hà, quận Đống Đa, Hà Nội'),
    ('TX14', 'CN4', N'Lương Văn Hải', '1983-05-03', N'Số 29, phố Đội Cấn, quận Ba Đình, Hà Nội'),
    ('TX15', 'CN4', N'Nguyễn Hữu Phước', '1970-10-10', N'Số 60, đường Nguyễn Du, quận Hai Bà Trưng, Hà Nội'),

-- Chi nhánh 6
-- Tuyến '42'
    ('TX16', 'CN6', N'Mai Văn Bảo', '1975-01-11', N'Số 99, phố Tràng Thi, quận Hoàn Kiếm, Hà Nội'),
    ('TX17', 'CN6', N'Tô Hồng Phúc', '1978-09-14', N'Số 12, đường Quang Trung, quận Hà Đông, Hà Nội'),
    ('TX18', 'CN6', N'Cao Ngọc Sơn', '1974-06-06', N'Số 47, phố Ngọc Khánh, quận Ba Đình, Hà Nội'),
    ('TX19', 'CN6', N'Lâm Nhật Minh', '1982-08-22', N'Số 88, đường Lê Văn Lương, quận Thanh Xuân, Hà Nội'),
    ('TX20', 'CN6', N'Châu Đình Long', '1973-03-19', N'Số 22, phố Hàng Bông, quận Hoàn Kiếm, Hà Nội'),
-- Tuyến '49'
    ('TX21', 'CN6', N'Hà Mạnh Đức', '1980-04-15', N'Số 37, đường Xuân Thủy, quận Cầu Giấy, Hà Nội'),
    ('TX22', 'CN6', N'Triệu Quang Tùng', '1972-12-02', N'Số 19, đường Nguyễn Phong Sắc, quận Cầu Giấy, Hà Nội'),
    ('TX23', 'CN6', N'Kiều Hải Nam', '1976-10-28', N'Số 55, đường Lê Duẩn, quận Hoàn Kiếm, Hà Nội'),
    ('TX24', 'CN6', N'Nguyễn Hữu Toàn', '1981-07-09', N'Số 102, đường Phạm Hùng, quận Nam Từ Liêm, Hà Nội'),
    ('TX25', 'CN6', N'Hoàng Đình Lâm', '1979-02-25', N'Số 88, đường Nguyễn Khuyến, quận Đống Đa, Hà Nội');

-- 3.11. tbl.TAIXE_LIENHE
INSERT INTO TAIXE_LIENHE (Ma_Tai_Xe, Loai_Lien_He_Email_SDT, Gia_Tri)
VALUES
    ('TX1 ', N'Số điện thoại', '0912 345 678'),
    ('TX1', 'Email', 'hungnv@transerco.com.vn'),
    ('TX2 ', N'Số điện thoại', '0938 765 432'),
    ('TX2', 'Email', 'hoatd@transerco.com.vn'),
    ('TX3', N'Số điện thoại', '0327 456 789'),
    ('TX3', 'Email', 'cuongpv@transerco.com.vn'),
    ('TX4', N'Số điện thoại', '0395 123 456'),
    ('TX4', 'Email', 'tuanlm@transerco.com.vn'),
    ('TX5', N'Số điện thoại', '0976 654 321'),
    ('TX5', 'Email', 'dungbq@transerco.com.vn'),
    ('TX6', N'Số điện thoại', '0913 234 567'),
    ('TX6', 'Email', 'hunghm@transerco.com.vn'),
    ('TX7', N'Số điện thoại', '0938 111 222'),
    ('TX7', 'Email', 'namdt@transerco.com.vn'),
    ('TX8', N'Số điện thoại', '0345 678 901'),
    ('TX8', 'Email', 'kiennv@transerco.com.vn'),
    ('TX9', N'Số điện thoại', '0365 432 198'),
    ('TX9', 'Email', 'haidt@transerco.com.vn'),
    ('TX10', N'Số điện thoại', '0389 654 321'),
    ('TX10', 'Email', 'dungtv@transerco.com.vn'),
    ('TX11', N'Số điện thoại', '0901 567 890'),
    ('TX11', 'Email', 'datvq@transerco.com.vn'),
    ('TX12', N'Số điện thoại', '0936 789 012'),
    ('TX12', 'Email', 'truonglx@transerco.com.vn'),
    ('TX13', N'Số điện thoại', '0333 222 111'),
    ('TX13', 'Email', 'thangtd@transerco.com.vn'),
    ('TX14', N'Số điện thoại', '0353 888 777'),
    ('TX14', 'Email', 'hailv@transerco.com.vn'),
    ('TX15', N'Số điện thoại', '0974 123 456'),
    ('TX15', 'Email', 'phuocnh@transerco.com.vn'),
    ('TX16', N'Số điện thoại', '0902 345 678'),
    ('TX16', 'Email', 'baomv@transerco.com.vn'),
    ('TX17', N'Số điện thoại', '0918 987 654'),
    ('TX17', 'Email', 'phucth@transerco.com.vn'),
    ('TX18', N'Số điện thoại', '0383 765 432'),
    ('TX18', 'Email', 'soncn@transerco.com.vn'),
    ('TX19', N'Số điện thoại', '0396 543 210'),
    ('TX19', 'Email', 'minhln@transerco.com.vn'),
    ('TX20', N'Số điện thoại', '0909 876 543'),
    ('TX20', 'Email', 'longcd@transerco.com.vn'),
    ('TX21', N'Số điện thoại', '0935 678 901'),
    ('TX21', 'Email', 'ducmh@transerco.com.vn'),
    ('TX22', N'Số điện thoại', '0321 456 789'),
    ('TX22', 'Email', 'tungtq@transerco.com.vn'),
    ('TX23', N'Số điện thoại', '0377 654 321'),
    ('TX23', 'Email', 'namkh@transerco.com.vn'),
    ('TX24', N'Số điện thoại', '0972 789 654'),
    ('TX24', 'Email', 'toannh@transerco.com.vn'),
    ('TX25', N'Số điện thoại', '0905 432 109'),
    ('TX25', 'Email', 'lamhd@transerco.com.vn');

-- 3.12. tbl.PHUONGTIEN
INSERT INTO PHUONGTIEN (Ma_Phuong_Tien, Ma_Tuyen, Ma_Tai_Xe, Ten_Phuong_Tien, Bien_Kiem_Soat, Hang_San_Xuat, Nam_San_Xuat, So_Khung, So_Cho_Ngoi)
VALUES
-- Tuyến '01'
    ('VH1', 'BUS1', 'TX1', 'Samco City D60', '29B - 184.23', 'Samco', '2020', 'RL4BB42A0R1234567', '60'),
    ('VH2', 'BUS1', 'TX2', 'Samco City D60', '29B - 937.58', 'Samco', '2020', 'RL4BC32F8R2345678', '60'),
    ('VH3', 'BUS1', 'TX3', 'Samco City D60', '29B - 462.91', 'Samco', '2020', 'RL4BD21G9R3456789', '60'),
    ('VH4', 'BUS1', 'TX4', 'Samco City D60', '29B - 715.36', 'Samco', '2020', 'RL4BE51H1R4567890', '60'),
    ('VH5', 'BUS1', 'TX5', 'Samco City D60', '29B - 528.47', 'Samco', '2020', 'RL4BF62J2R5678901', '60'),
-- Tuyến '03A'
    ('VH6', 'BUS2', 'TX6', 'Thaco Garden 79CT', '29B - 346.82', 'Thaco', '2021', 'RL4BG73K3R6789012', '40'),
    ('VH7', 'BUS2', 'TX7', 'Thaco Garden 79CT', '29B - 601.29', 'Thaco', '2021', 'RL4BH84L4R7890123', '40'),
    ('VH8', 'BUS2', 'TX8', 'Thaco Garden 79CT', '29B - 759.04', 'Thaco', '2021', 'RL4BJ95M5R8901234', '40'),
    ('VH9', 'BUS2', 'TX9', 'Thaco Garden 79CT', '29B - 210.35', 'Thaco', '2021', 'RL4BK16N6R9012345', '40'),
    ('VH10', 'BUS2', 'TX10', 'Thaco Garden 79CT', '29B - 894.67', 'Thaco', '2021', 'RL4BL27P7R0123456', '40'),
-- Tuyến '42'
    ('VH11', 'BUS8', 'TX11', 'Samco City 1.55', '29B - 372.18', 'Samco', '2023', 'RL4BM38Q8R1234507', '50'),
    ('VH12', 'BUS8', 'TX12', 'Samco City 1.55', '29B - 580.92', 'Samco', '2023', 'RL4BN49R9R2345608', '50'),
    ('VH13', 'BUS8', 'TX13', 'Samco City 1.55', '29B - 431.76', 'Samco', '2023', 'RL4BP50S1R3456709', '50'),
    ('VH14', 'BUS8', 'TX14', 'Samco City 1.55', '29B - 268.34', 'Samco', '2023', 'RL4BQ61T2R4567810', '50'),
    ('VH15', 'BUS8', 'TX15', 'Samco City 1.55', '29B - 903.21', 'Samco', '2023', 'RL4BR72U3R5678911', '50'),
-- Tuyến '49'
    ('VH16', 'BUS8', 'TX16', 'Samco City 1.40', '29B - 147.85', 'Samco', '2021', 'RL4BS83V4R6789012', '40'),
    ('VH17', 'BUS8', 'TX17', 'Samco City 1.40', '29B - 694.52', 'Samco', '2021', 'RL4BT94W5R7890123', '40'),
    ('VH18', 'BUS8', 'TX18', 'Samco City 1.40', '29B - 859.13', 'Samco', '2021', 'RL4BU15X6R8901234', '40'),
    ('VH19', 'BUS8', 'TX19', 'Samco City 1.40', '29B - 236.78', 'Samco', '2021', 'RL4BV26Y7R9012345', '40'),
    ('VH20', 'BUS8', 'TX20', 'Samco City 1.40', '29B - 471.09', 'Samco', '2021', 'RL4BW37Z8R0123456', '40'),
-- Tuyến '54'
    ('VH21', 'BUS11', 'TX21', 'Thaco Meadow 89CT', '29B - 325.64', 'Thaco', '2024', 'RL4BX48A9R1234567', '60'),
    ('VH22', 'BUS11', 'TX22', 'Thaco Meadow 89CT', '29B - 709.48', 'Thaco', '2024', 'RL4BY59B1R2345678', '60'),
    ('VH23', 'BUS11', 'TX23', 'Thaco Meadow 89CT', '29B - 852.31', 'Thaco', '2024', 'RL4BZ60C2R3456789', '60'),
    ('VH24', 'BUS11', 'TX24', 'Thaco Meadow 89CT', '29B - 418.27', 'Thaco', '2024', 'RL4CA71D3R4567890', '60'),
    ('VH25', 'BUS11', 'TX25', 'Thaco Meadow 89CT', '29B - 967.53', 'Thaco', '2024', 'RL4CB82E4R5678901', '60');

-- 4. Truy vấn cơ bản
-- 4.1. SELECT
--      Cấu trúc cơ bản: SELECT tên_cột FROM tên_bảng WHERE điều_kiện;
--      Lấy tất cả dữ liệu trong bảng: SELECT * FROM tên_bảng;
-- 4.1.1. Xuất ra thông tin trong bảng tbl.TRAMXE
SELECT * FROM TRAMXE;

-- 4.1.2. Xuất ra thông tin các tài xế thuộc Chi nhánh 1 trong tbl.TAIXE
SELECT * FROM TAIXE WHERE Ma_Chi_Nhanh = 'CN1';

-- 4.1.3. Xuất ra thông tin các mẫu xe buýt có năm sản xuất sau 2021
--        và có số chỗ ngồi >= 40 trong bảng tbl.PHUONGTIEN
SELECT * FROM PHUONGTIEN WHERE Nam_San_Xuat > '2021' AND So_Cho_Ngoi >= '40';

-- 4.2. INSERT
--      Cấu trúc cơ bản: INSERT INTO tên_bảng (cột_1, cột_2,..., cột_n)
--                       VALUES (giá trị_1, giá_trị_2,..., giá_trị_n);
-- 4.2.1. Thêm thông tin tài xế vào bảng tbl.TAIXE
INSERT INTO TAIXE (Ma_Tai_Xe, Ma_Chi_Nhanh, Ho_Va_Ten, Ngay_Sinh, Dia_Chi)
VALUES
-- Chi nhánh 8
-- Tuyến '19'
    ('TX26', 'CN8', N'Ngô Duy Hưng', '1970-03-19', N'Số 112, đường Lê Trọng Tấn, quận Thanh Xuân, Hà Nội'),
    ('TX27', 'CN8', N'Nguyễn Thành Long', '1973-02-01', N'Số 435, đường Xuân Thủy, quận Cầu Giấy, Hà Nội'),
    ('TX28', 'CN8', N'Phạm Minh Quang', '1979-01-10', N'Số 213, phố Láng Hạ, quận Đống Đa, Hà Nội'),
    ('TX29', 'CN8', N'Đào Mạnh Hùng', '1972-11-18', N'Số 69, đường Đại Cồ Việt, quận Hai Bà Trưng, Hà Nội'),
    ('TX30', 'CN8', N'Lưu Thành Quân', '1972-08-25', N'Số 189, đường Nguyễn Chí Thanh, quận Ba Đình, Hà Nội');

-- 4.2.2. Thêm thông tin vào bảng tbl.PHUONGTIEN
INSERT INTO PHUONGTIEN (Ma_Phuong_Tien, Ma_Tuyen, Ma_Tai_Xe, Ten_Phuong_Tien, Bien_Kiem_Soat, Hang_San_Xuat, Nam_San_Xuat, So_Khung, So_Cho_Ngoi)
VALUES
    ('VH26', 'BUS6', 'TX26', 'Thaco Meadow 89CT', '29B - 789.12', 'Thaco', '2024', 'RL4BB32F0NC123456', '60'),
    ('VH27', 'BUS6', 'TX27', 'Thaco Meadow 89CT', '29B - 345.67', 'Thaco', '2024', 'RL4BB32F3PC654321', '60'),
    ('VH28', 'BUS6', 'TX28', 'Thaco Meadow 89CT', '29B - 901.23', 'Thaco', '2024', 'RL4BB32F5QC987654', '60'),
    ('VH29', 'BUS6', 'TX29', 'Thaco Meadow 89CT', '29B - 921.22', 'Thaco', '2024', 'RL4BB32F8RC567890', '60'),
    ('VH30', 'BUS6', 'TX30', 'Thaco Meadow 89CT', '29B - 258.89', 'Thaco', '2024', 'RL4BB32F1SC345678', '60');

-- 4.3. UPDATE
--      Cấu trúc cơ bản: UPDATE tên_bảng SET tên_cột = giá_trị_mới
--                       WHERE điều_kiện_nếu_có;
-- 4.3.1. Cập nhật giờ kết thúc mới cho tuyến xe 01 trong bảng tbl.TUYENXE
UPDATE TUYENXE SET Gio_Ket_Thuc = '21:30' WHERE Ma_Tuyen = 'BUS1';

-- 4.3.2. Cập nhật số điện thoại mới cho tài xế có mã tài xế TX6 trong
--        bảng tbl.TAIXE_LIENHE
UPDATE TAIXE_LIENHE SET Gia_Tri = '0981 328 930' WHERE Ma_Tai_Xe = 'TX6' AND Loai_Lien_He_Email_SDT = N'Số điện thoại';

-- 4.4. DELETE
--      Cấu trúc cơ bản: DELETE FROM tên_bảng WHERE điều_kiện_nếu_có;
-- 4.4.1. Xóa thông tin các phương tiện có mã phương tiện từ VH26 tới VH30
--        trong bảng tbl.PHUONGTIEN
DELETE FROM PHUONGTIEN WHERE Ma_Phuong_Tien IN ('VH26', 'VH27', 'VH28', 'VH29', 'VH30');

-- 4.4.2. Xóa thông tin các tài xế có mã tài xế từ TX26 tới TX30 trong bảng tbl.TAIXE
DELETE FROM TAIXE WHERE Ma_Tai_Xe IN ('TX26', 'TX27', 'TX28', 'TX29', 'TX30');

-- 5. Truy vấn nâng cao
-- 5.1. INNER JOIN
-- 5.1.1. Lấy thông tin phương tiện và tài xế điều khiển chúng
SELECT
    pt.Ma_Phuong_Tien, pt.Ten_Phuong_Tien, pt.Bien_Kiem_Soat, pt.Ma_Tai_Xe,
    tx.Ho_Va_Ten
FROM PHUONGTIEN pt INNER JOIN TAIXE tx ON pt.Ma_Tai_Xe = tx.Ma_Tai_Xe;

-- 5.1.2. Lấy vị trí các điểm dừng của tuyến xe '01'
SELECT
    lt.Ma_Tuyen, lt.Ma_Tram,
    trx.Vi_Tri_Tram,
    lt.Thu_Tu_Tram
FROM LOTRINH lt INNER JOIN TRAMXE trx 
ON lt.Ma_Tram = trx.Ma_Tram WHERE lt.Ma_Tuyen = 'BUS1';

-- 5.1.3. Lấy thông tin của tài xế có mã tài xế 'TX10'
SELECT
    tx.Ma_Tai_Xe, tx.Ho_Va_Ten, tx.Ngay_Sinh, tx.Dia_Chi,
    MAX(CASE WHEN txlh.Loai_Lien_He_Email_SDT = 'Email' THEN txlh.Gia_Tri END) AS Email,
    MAX(CASE WHEN txlh.Loai_Lien_He_Email_SDT = N'Số điện thoại' THEN txlh.Gia_Tri END) AS So_Dien_Thoai
FROM TAIXE tx INNER JOIN TAIXE_LIENHE txlh ON tx.Ma_Tai_Xe = txlh.Ma_Tai_Xe
WHERE tx.Ma_Tai_Xe = 'TX10'
GROUP BY tx.Ma_Tai_Xe, tx.Ho_Va_Ten, tx.Ngay_Sinh, tx.Dia_Chi;

-- 5.1.4. Lấy thông tin của chi nhánh có mã chi nhánh 'CN2'
SELECT
    cn.Ma_Chi_Nhanh, cn.Ten_Chi_Nhanh, cn.Dia_Chi,
    STRING_AGG(CASE WHEN cnlh.Loai_Lien_He_Email_SDT = 'Email' THEN cnlh.Gia_Tri END, ', ') AS Emal,
    STRING_AGG(CASE WHEN cnlh.Loai_Lien_He_Email_SDT = N'Số điện thoại' THEN cnlh.Gia_Tri END, ', ') AS So_Dien_Thoai
FROM CHINHANH cn INNER JOIN CHINHANH_LIENHE cnlh ON cn.Ma_Chi_Nhanh = cnlh.Ma_Chi_Nhanh
WHERE cn.Ma_Chi_Nhanh = 'CN2'
GROUP BY cn.Ma_Chi_Nhanh, cn.Ten_Chi_Nhanh, cn.Dia_Chi;

-- 5.2. GROUP BY
-- 5.2.1. Đếm số tài xế của mỗi chi nhánh
SELECT Ma_Chi_Nhanh, COUNT(*) AS So_Tai_Xe
FROM TAIXE
GROUP BY Ma_Chi_Nhanh;

-- 5.2.2. Đếm số trạm dừng của từng tuyến
SELECT Ma_Tuyen, COUNT(*) AS So_Tram_Dung
FROM LOTRINH
GROUP BY Ma_Tuyen;

-- 5.2.3. Đếm số trạm dừng trên lộ trình tuyến buýt có mã 'BUS8'
SELECT Ma_Tuyen, COUNT(*) AS So_Tram_Dung
FROM LOTRINH
WHERE Ma_Tuyen = 'BUS8'
GROUP BY Ma_Tuyen;

-- 5.2.4. Đếm số phương tiện do Thaco và Samco sản xuất
SELECT Hang_San_Xuat, COUNT(*) AS So_Luong
FROM PHUONGTIEN
WHERE Hang_San_Xuat = 'Thaco' OR Hang_San_Xuat = 'Samco'
GROUP BY Hang_San_Xuat;

-- 5.3. HAVING
-- 5.3.1. Lọc chi nhánh có hơn 6 tài xế
SELECT 
    tx.Ma_Chi_Nhanh, 
    cn.Ten_Chi_Nhanh, cn.Dia_Chi,
    COUNT(*) AS So_Luong
FROM TAIXE tx INNER JOIN CHINHANH cn ON tx.Ma_Chi_Nhanh = cn.Ma_Chi_Nhanh
GROUP BY tx.Ma_Chi_Nhanh, cn.Ten_Chi_Nhanh, cn.Dia_Chi
HAVING COUNT(*) > 6;

-- 5.3.2. Lọc các tuyến xe có nhiều hơn 30 trạm dừng
SELECT
    lt.Ma_Tuyen, 
    tx.Ten_Tuyen,
    COUNT(*) AS So_Tram
FROM LOTRINH lt INNER JOIN TUYENXE tx ON lt.Ma_Tuyen = tx.Ma_Tuyen
GROUP BY lt.Ma_Tuyen, tx.Ten_Tuyen
HAVING COUNT(*) > 30;

-- 5.3.3. Lọc các chi nhánh quản lý nhiều hơn 1 tuyến xe
SELECT
    cn.Ma_Chi_Nhanh, cn.Ten_Chi_Nhanh,
    COUNT(*) AS So_Tuyen,
    cn.Dia_Chi
FROM CHINHANH cn INNER JOIN TUYENXE tx ON cn.Ma_Chi_Nhanh = tx.Ma_Chi_Nhanh
GROUP BY cn.Ma_Chi_Nhanh, cn.Ten_Chi_Nhanh, tx.Ma_Chi_Nhanh, cn.Dia_Chi
HAVING COUNT(*) > 1;

-- 5.4. SUBQUERY
-- 5.4.1. Lấy thông tin các tuyến xe thuộc chi nhánh 1 mà có số điểm dừng lớn hơn 20
SELECT 
    tx.Ma_Tuyen, tx.Ten_Tuyen,
    cn.Ten_Chi_Nhanh,
    lt.So_Tram
FROM TUYENXE tx
INNER JOIN CHINHANH cn ON tx.Ma_Chi_Nhanh = cn.Ma_Chi_Nhanh
INNER JOIN
    (SELECT Ma_Tuyen, COUNT(*) AS So_Tram FROM LOTRINH
    GROUP BY Ma_Tuyen HAVING COUNT(*) > 20) lt ON tx.Ma_Tuyen = lt.Ma_Tuyen
WHERE tx.Ma_Chi_Nhanh = 'CN1';

-- 5.4.2. Lấy thông tin các trạm xe có nhiều hơn 1 tuyến xe đi qua
SELECT
    tx.Ma_Tram, tx.Vi_Tri_Tram,
    lt.So_Tuyen
FROM TRAMXE tx
INNER JOIN
    (SELECT Ma_Tram, COUNT(*) AS So_Tuyen FROM LOTRINH
    GROUP BY Ma_Tram HAVING COUNT(*) > 1) lt ON tx.Ma_Tram = lt.Ma_Tram;

-- 5.4.3. Lấy thông tin tài xế và các phương tiện có số chỗ ngồi lớn hơn 40
--        thuộc quản lý của chi nhánh 6
SELECT 
    tx.Ma_Tai_Xe, tx.Ho_Va_Ten, tx.Ma_Chi_Nhanh, tx.Ngay_Sinh, tx.Dia_Chi,
    pt.Ma_Phuong_Tien, pt.Ten_Phuong_Tien, pt.Bien_Kiem_Soat, pt.So_Cho_Ngoi
FROM TAIXE tx
INNER JOIN
    (SELECT  Ma_Tai_Xe, Ma_Phuong_Tien, 
    Ten_Phuong_Tien, Bien_Kiem_Soat, So_Cho_Ngoi
    FROM PHUONGTIEN WHERE So_Cho_Ngoi > 40) pt ON tx.Ma_Tai_Xe = pt.Ma_Tai_Xe
WHERE tx.Ma_Chi_Nhanh = 'CN6';

-- 5.4.5. Lấy thông tin các phương tiện có giờ kết thúc là 21:00
SELECT
    pt.Ma_Phuong_Tien, pt.Ten_Phuong_Tien, pt.Bien_Kiem_Soat,
    tx.Gio_Ket_Thuc
FROM PHUONGTIEN pt
INNER JOIN
    (SELECT Ma_Tuyen, Gio_Ket_Thuc
    FROM TUYENXE WHERE Gio_Ket_Thuc = '21:00')
    tx ON pt.Ma_Tuyen = tx.Ma_Tuyen;

-- 6. Tạo view
-- 6.1. Tạo view để theo dõi tài xế, tuyến và chi nhánh quản lý của một phương tiện
GO
CREATE VIEW view_CHITIET_PHUONGTIEN AS
SELECT 
    pt.Ma_Phuong_Tien,
    pt.Ma_Tuyen, tx.Ten_Tuyen,
    tx.Ma_Chi_Nhanh, cn.Ten_Chi_Nhanh,
    pt.Ma_Tai_Xe, txe.Ho_Va_Ten,
    STRING_AGG(CASE WHEN txlh.Loai_Lien_He_Email_SDT = 'Email' THEN txlh.Gia_Tri END, ', ') AS Email,
    STRING_AGG(CASE WHEN txlh.Loai_Lien_He_Email_SDT = N'Số điện thoại' THEN txlh.Gia_Tri END, ', ') AS So_Dien_Thoai,
    pt.Ten_Phuong_Tien, pt.Bien_Kiem_Soat, pt.Hang_San_Xuat, pt.Nam_San_Xuat,
    pt.So_Khung, pt.So_Cho_Ngoi
FROM PHUONGTIEN pt
INNER JOIN TUYENXE tx ON pt.Ma_Tuyen = tx.Ma_Tuyen
INNER JOIN CHINHANH cn ON tx.Ma_Chi_Nhanh = cn.Ma_Chi_Nhanh
INNER JOIN TAIXE txe ON pt.Ma_Tai_Xe = txe.Ma_Tai_Xe
INNER JOIN TAIXE_LIENHE txlh ON txe.Ma_Tai_Xe = txlh.Ma_Tai_Xe
GROUP BY
    pt.Ma_Phuong_Tien, pt.Ma_Tuyen, tx.Ten_Tuyen,
    tx.Ma_Chi_Nhanh, cn.Ten_Chi_Nhanh,
    pt.Ma_Tai_Xe, txe.Ho_Va_Ten,
    pt.Ten_Phuong_Tien, pt.Bien_Kiem_Soat,
    pt.Hang_San_Xuat, pt.Nam_San_Xuat,
    pt.So_Khung, pt.So_Cho_Ngoi;

GO
SELECT * FROM view_CHITIET_PHUONGTIEN;

-- 6.2. Tạo view theo dõi thông tin tài xế và chi nhánh quản lý
GO
CREATE VIEW view_CHITIET_TAIXE AS
SELECT 
    tx.Ma_Tai_Xe, tx.Ho_Va_Ten,
    tx.Ma_Chi_Nhanh, cn.Ten_Chi_Nhanh,
    tx.Ngay_Sinh, tx.Dia_Chi,
    STRING_AGG(CASE WHEN txlh.Loai_Lien_He_Email_SDT = 'Email' THEN txlh.Gia_Tri END, ', ') AS Email,
    STRING_AGG(CASE WHEN txlh.Loai_Lien_He_Email_SDT = N'Số điện thoại' THEN txlh.Gia_Tri END, ', ') AS So_Dien_Thoai
FROM TAIXE tx
INNER JOIN CHINHANH cn ON tx.Ma_Chi_Nhanh = tx.Ma_Chi_Nhanh
INNER JOIN TAIXE_LIENHE txlh ON tx.Ma_Tai_Xe = txlh.Ma_Tai_Xe
GROUP BY 
    tx.Ma_Tai_Xe, tx.Ho_Va_Ten,
    tx.Ma_Chi_Nhanh, cn.Ten_Chi_Nhanh,
    tx.Ngay_Sinh, tx.Dia_Chi;

GO
SELECT * FROM view_CHITIET_TAIXE;

-- 6.3. Tạo view theo dõi danh sách trạm xe và số tuyến xe đi qua
GO
CREATE VIEW view_CHITIET_TRAMXE AS
SELECT
    tx.Ma_Tram, tx.Vi_Tri_Tram,
    STRING_AGG(lt.Ma_Tuyen, ', ') WITHIN GROUP (ORDER BY Ma_Tuyen) AS Tuyen_Di_Qua
FROM TRAMXE tx
INNER JOIN LOTRINH lt ON lt.Ma_Tram = tx.Ma_Tram
GROUP BY tx.Ma_Tram, tx.Vi_Tri_Tram;

GO
SELECT * FROM view_CHITIET_TRAMXE

-- 6.4. Tạo view theo dõi số tuổi của tài xế
GO
CREATE VIEW view_TUOI_TAIXE AS
SELECT
    Ma_Tai_Xe, Ho_Va_Ten, Ngay_Sinh,
    YEAR(GETDATE()) - YEAR(Ngay_Sinh) AS Tuoi_Tai_Xe
FROM TAIXE

GO
SELECT * FROM view_TUOI_TAIXE;

-- 6.5. Tạo view theo dõi số năm còn có thể lao động của tài xế
--      Biết ràng công ty chỉ cho phép tài xế lao động đến hết tuổi 55
GO
CREATE VIEW view_TUOI_NGHIHUU_TAIXE AS
SELECT
    Ma_Tai_Xe, Ho_Va_Ten, Ngay_Sinh,
    YEAR(GETDATE()) - YEAR(Ngay_Sinh) AS Tuoi_Tai_Xe,
    STRING_AGG(
        CAST(DATEDIFF(MONTH, GETDATE(), DATEADD(YEAR, 55, Ngay_Sinh)) / 12 AS NVARCHAR) 
        + N' năm ' +
        CAST((DATEDIFF(MONTH, GETDATE(), DATEADD(YEAR, 55, Ngay_Sinh)) % 12) AS NVARCHAR) 
        + N' tháng ' +
        CAST(DATEDIFF(DAY, GETDATE(), DATEADD(YEAR, 55, Ngay_Sinh)) % 30 AS NVARCHAR) 
        + N' ngày', ''
    ) AS Thoi_Gian_Lam_Viec_Con_Lai
FROM TAIXE
GROUP BY Ma_Tai_Xe, Ho_Va_Ten, Ngay_Sinh;

GO
SELECT * FROM view_TUOI_NGHIHUU_TAIXE;

-- 6.6. Tạo view theo dõi số năm còn sử dụng được của phương tiện
--      Biết rằng luật pháp Việt Nam cho phép xe chở khách 
--      có niên hạn sử dụng tối đa là 20 năm
GO
CREATE VIEW view_NIENHAN_PHUONGTIEN AS
SELECT
    Ma_Phuong_Tien, Ten_Phuong_Tien, Bien_Kiem_Soat, Hang_San_Xuat,
    Nam_San_Xuat,
    YEAR(GETDATE()) - Nam_San_Xuat AS So_Nam_Da_Su_Dung,
    20 - (YEAR(GETDATE()) - Nam_San_Xuat) AS So_Nam_Con_Co_The_Su_Dung
FROM PHUONGTIEN;

GO
SELECT * FROM view_NIENHAN_PHUONGTIEN

-- 6.7. Tạo view xem thông tin liên hệ của các chi nhánh
GO
CREATE VIEW view_LIENHE_CHINHANH AS
SELECT
    cn.Ma_Chi_Nhanh, cn.Ten_Chi_Nhanh, cn.Dia_Chi,
    STRING_AGG(CASE WHEN cnlh.Loai_Lien_He_Email_SDT = 'Email' THEN cnlh.Gia_Tri END, ', ') AS Email,
    STRING_AGG(CASE WHEN cnlh.Loai_Lien_He_Email_SDT = N'Số điện thoại' THEN cnlh.Gia_Tri END, ', ') AS So_Dien_Thoai
FROM CHINHANH cn
INNER JOIN CHINHANH_LIENHE cnlh ON cn.Ma_Chi_Nhanh = cnlh.Ma_Chi_Nhanh
GROUP BY cn.Ma_Chi_Nhanh, cn.Ten_Chi_Nhanh, cn.Dia_Chi;

GO
SELECT * FROM view_LIENHE_CHINHANH;

-- 6.8. Tạo view xem thông tin liên hệ của các tài xế
GO
CREATE VIEW view_LIENHE_TAIXE AS
SELECT
    tx.Ma_Tai_Xe, tx.Ho_Va_Ten, tx.Dia_Chi,
    STRING_AGG(CASE WHEN txlh.Loai_Lien_He_Email_SDT = 'Email' THEN txlh.Gia_Tri END, ', ') AS Email,
    STRING_AGG(CASE WHEN txlh.Loai_Lien_He_Email_SDT = N'Số điện thoại' THEN txlh.Gia_Tri END, ', ') AS So_Dien_Thoai
FROM TAIXE tx
INNER JOIN TAIXE_LIENHE txlh ON tx.Ma_Tai_Xe = txlh.Ma_Tai_Xe
GROUP BY tx.Ma_Tai_Xe, tx.Ho_Va_Ten, tx.Dia_Chi;

GO
SELECT * FROM view_LIENHE_TAIXE;

-- 6.9. Tạo view xem tổng số lượng xe mà mỗi chi nhánh quản lý
GO
CREATE VIEW view_PHUONGTIEN_CHINHANH AS
SELECT
    cn.Ma_Chi_Nhanh, cn.Ten_Chi_Nhanh,
    COUNT(DISTINCT pt.Ma_Phuong_Tien) AS So_Phuong_Tien
FROM PHUONGTIEN pt
INNER JOIN TAIXE tx ON tx.Ma_Tai_Xe = pt.Ma_Tai_Xe
INNER JOIN CHINHANH cn ON tx.Ma_Chi_Nhanh = cn.Ma_Chi_Nhanh
GROUP BY cn.Ma_Chi_Nhanh, cn.Ten_Chi_Nhanh;

GO
SELECT * FROM view_PHUONGTIEN_CHINHANH;

-- 6.10. Tạo view xem tổng số lượng tài xế mà mỗi chi nhánh quản lý
GO
CREATE VIEW view_TAIXE_CHINHANH AS
SELECT
    cn.Ma_Chi_Nhanh, cn.Ten_Chi_Nhanh,
    COUNT(DISTINCT tx.Ma_Tai_Xe) AS So_Tai_Xe
FROM TAIXE tx
INNER JOIN CHINHANH cn ON tx.Ma_Chi_Nhanh = cn.Ma_Chi_Nhanh
GROUP BY cn.Ma_Chi_Nhanh, cn.Ten_Chi_Nhanh;

GO
SELECT * FROM view_TAIXE_CHINHANH;

-- 7. Tạo chỉ mục (INDEX)
-- 7.1. Tạo chỉ mục thông tin của tuyến xe
GO
CREATE INDEX idx_LOTRINH_TUYEN 
ON LOTRINH(Ma_Tuyen);

-- Lợi ích: Khi bảng tbl.LOTRINH có thông tin của nhiều tuyến xe hơn,
--          nếu thực hiện truy vấn thông tin lộ trình của tuyến
--          việc truy vấn sẽ được thực hiện trên chỉ mục trên thay vì
--          toàn bộ dữ liệu.

-- 7.2. Tạo chỉ mục đảm bảo giá trị của biển kiểm soát là duy nhất
GO
CREATE UNIQUE INDEX idx_BIENKIEMSOAT_PHUONGTIEN
ON PHUONGTIEN(Bien_Kiem_Soat);

-- Lợi ích: Tạo chỉ mục UNIQUE đảm bảo mỗi biển số xe trên hệ thống là duy nhất.
--          Đảm bảo 1 biển số chỉ gắn với 1 phương tiện.

-- 7.3. Tạo chỉ mục đảm bảo 1 phương tiện chỉ được giao cho 1 tài xế
GO
CREATE UNIQUE INDEX idx_TAIXE_PHUONGTIEN
ON PHUONGTIEN(Ma_Tai_Xe);

-- Lợi ích: Tạo chỉ mục UNIQUE đảm bảo 1 tài xế chỉ được giao cho 1 phương tiện.
--          Đồng thời, 1 phương tiện cũng chỉ do 1 tài xế quản lý.

-- 7.4. Tạo chỉ mục tìm phương tiện theo tuyến xe
GO
CREATE INDEX idx_PHUONGTIEN_TUYEN
ON PHUONGTIEN(Ma_Tuyen);

-- 7.5. Tạo chỉ mục tìm tuyến xe theo chi nhánh
GO
CREATE INDEX idx_TUYENXE_CHINHANH
ON TUYENXE(Ma_Chi_Nhanh);

-- 7.6. Tạo chỉ mục tìm tuyến xe theo trạm khởi đầu
GO
CREATE INDEX idx_TRAMKHOIDAU_TUYENXE
ON TRAMKHOIDAU(Ma_Tuyen);

-- 7.7. Tạo chỉ mục tìm tuyến xe theo trạm kết thúc
GO
CREATE INDEX idx_TRAMKETTHUC_TUYENXE
ON TRAMKETTHUC(Ma_Tuyen);

-- 7.8. Tạo chỉ mục tìm thông tin liên hệ của tài xế
GO
CREATE INDEX idx_LIENHE_TAIXE
ON TAIXE_LIENHE(Ma_Tai_Xe);

-- 7.9. Tạo chỉ mục tìm thông tin của tài xế
GO
CREATE INDEX idx_THONGTIN_TAIXE
ON TAIXE(Ma_Tai_Xe);

-- 7.10. Tạo chỉ mục tìm thông tin liên hệ của chi nhánh
GO
CREATE INDEX idx_LIENHE_CHINHANH
ON CHINHANH_LIENHE(Ma_Chi_Nhanh);

-- 7.11. Tạo chỉ mục tìm thông tin của chi nhánh
GO
CREATE INDEX idx_THONGTIN_CHINHANH
ON CHINHANH(Ma_Chi_Nhanh);

-- 7.12. Ép truy vấn sử dụng chỉ muc
--       Cấu trúc:
--       SELECT cột_1, cột_2,..., cột_n 
--       FROM tên_bảng WITH (INDEX(tên_chỉ_mục)) 
--       WHERE điều_kiện_lọc;

-- 8. STORED PROCEDURE
-- 8.1. SP không có tham số
-- 8.1.1. SP Lấy danh sách tất cả các tài xế
GO
CREATE PROCEDURE sp_DANHSACH_TAIXE
AS
BEGIN
    SELECT * FROM TAIXE;
END;

EXEC sp_DANHSACH_TAIXE;

-- 8.1.2. SP Lấy danh sách tất cả các phương tiện
GO
CREATE PROCEDURE sp_DANHSACH_PHUONGTIEN
AS 
BEGIN
    SELECT * FROM PHUONGTIEN;
END;

EXEC sp_DANHSACH_PHUONGTIEN;

-- 8.1.3. SP Lấy danh sách tất cả các chi nhánh
GO
CREATE PROCEDURE sp_DANHSACH_CHINHANH
AS
BEGIN
    SELECT * FROM CHINHANH;
END;

EXEC sp_DANHSACH_CHINHANH;

-- 8.1.4. SP Lấy danh sách theo dõi tuổi nghỉ hưu của các tài xế
GO
CREATE PROCEDURE sp_DANHSACH_TUOI_NGHIHUU
AS
BEGIN
    SELECT * FROM view_TUOI_NGHIHUU_TAIXE;
END;

EXEC sp_DANHSACH_TUOI_NGHIHUU;

-- 8.2. SP có tham số
-- 8.2.1. SP lấy danh sách tài xế theo chi nhánh
GO
CREATE PROCEDURE sp_DANHSACH_TAIXE_CHINHANH
    @Ma_Chi_Nhanh NVARCHAR(10)
AS
BEGIN
    SELECT * FROM TAIXE WHERE Ma_Chi_Nhanh = @Ma_Chi_Nhanh;
END;

EXEC sp_DANHSACH_TAIXE_CHINHANH @Ma_Chi_Nhanh = 'CN1';

-- 8.2.2. SP lấy danh sách phương tiện theo hãng sản xuất
GO
CREATE PROCEDURE sp_DANHSACH_PHUONGTIEN_HANGSX
    @Hang_San_Xuat NVARCHAR(50)
AS 
BEGIN
    SELECT
        Ma_Phuong_Tien, Ten_Phuong_Tien,
        Bien_Kiem_Soat, Hang_San_Xuat,
        Nam_San_Xuat, So_Khung, So_Cho_Ngoi
    FROM PHUONGTIEN WHERE Hang_San_Xuat = @Hang_San_Xuat;
END;

EXEC sp_DANHSACH_PHUONGTIEN_HANGSX @Hang_San_Xuat = 'Thaco';

-- 8.2.3. Lấy danh sách phương tiện của mỗi tuyến theo mã tuyến
GO
CREATE PROCEDURE sp_DANHSACH_PHUONGTIEN_TUYENXE_MATUYEN
    @Ma_Tuyen NVARCHAR(10)
AS 
BEGIN
    SELECT
        Ma_Phuong_Tien, Ten_Phuong_Tien,
        Bien_Kiem_Soat, Hang_San_Xuat,
        Nam_San_Xuat, So_Khung, So_Cho_Ngoi
    FROM PHUONGTIEN WHERE Ma_Tuyen = @Ma_Tuyen;
END;

EXEC sp_DANHSACH_PHUONGTIEN_TUYENXE_MATUYEN @Ma_Tuyen = 'BUS1';

-- 8.2.4. SP lấy danh sách tài xế của mỗi tuyến theo mã tuyến
GO
CREATE PROCEDURE sp_DANHSACH_TAIXE_TUYEN_MATUYEN
    @Ma_Tuyen NVARCHAR(10)
AS
BEGIN
    SELECT 
        tx.Ma_Tai_Xe, pt.Ma_Tuyen,
        tx.Ho_Va_Ten, tx.Dia_Chi,
        STRING_AGG(CASE WHEN txlh.Loai_Lien_He_Email_SDT = 'Email' THEN txlh.Gia_Tri END, ', ') AS Email,
        STRING_AGG(CASE WHEN txlh.Loai_Lien_He_Email_SDT = N'Số điện thoại' THEN txlh.Gia_Tri END, ', ') AS So_Dien_Thoai
    FROM TAIXE tx
    INNER JOIN TAIXE_LIENHE txlh ON tx.Ma_Tai_Xe = txlh.Ma_Tai_Xe
    INNER JOIN PHUONGTIEN pt ON tx.Ma_Tai_Xe =pt.Ma_Tai_Xe
    WHERE pt.Ma_Tuyen = @Ma_Tuyen  
    GROUP BY tx.Ma_Tai_Xe, pt.Ma_Tuyen, tx.Ho_Va_Ten, tx.Dia_Chi;
END;

EXEC sp_DANHSACH_TAIXE_TUYEN_MATUYEN @Ma_Tuyen = 'BUS2';

-- 8.2.5. SP lấy danh sách trạm dừng của một tuyến xe
GO
CREATE PROCEDURE sp_TUYENXE_TRAMDUNG
    @Ma_Tuyen NVARCHAR(10)
AS 
BEGIN
    SELECT
        lt.Ma_Tuyen, lt.Ma_Tram,
        tx.Vi_Tri_Tram, lt.Thu_Tu_Tram
    FROM LOTRINH lt 
    INNER JOIN TRAMXE tx ON lt.Ma_Tram = tx.Ma_Tram
    WHERE Ma_Tuyen = @Ma_Tuyen;
END;

EXEC sp_TUYENXE_TRAMDUNG @Ma_Tuyen = 'BUS11';

-- 8.3. SP có đầu ra
-- 8.3.1. SP lấy số lượng trạm dừng của một tuyến xe
GO 
CREATE PROCEDURE sp_TONG_TRAMDUNG
    @Ma_Tuyen NVARCHAR(10),
    @So_Luong_Tram_Dung INT OUTPUT
AS 
BEGIN
    SELECT @So_Luong_Tram_Dung = COUNT(*)
    FROM LOTRINH WHERE Ma_Tuyen = @Ma_Tuyen;
END;

GO
DECLARE
    @So_Luong INT,
    @Ma_Tuyen NVARCHAR(10) = 'BUS1'
EXEC sp_TONG_TRAMDUNG @Ma_Tuyen = @Ma_Tuyen, @So_Luong_Tram_Dung = @So_Luong OUTPUT;
PRINT N'Số trạm dừng của tuyến có mã "' + @Ma_Tuyen +'": ' +CAST(@So_Luong AS NVARCHAR(10));

-- 8.3.2. SP lấy thông tin tài xế
GO
CREATE PROCEDURE sp_LIENHE_TAIXE
    @Ma_Tai_Xe NVARCHAR(10),
    @Ho_Ten NVARCHAR(100) OUTPUT,
    @So_Dien_Thoai NVARCHAR(15) OUTPUT,
    @Email NVARCHAR(100) OUTPUT
AS 
BEGIN
    SELECT
        @Ma_Tai_Xe = tx.Ma_Tai_Xe,
        @Ho_Ten = tx.Ho_Va_Ten,
        @So_Dien_Thoai = STRING_AGG(CASE WHEN txlh.Loai_Lien_He_Email_SDT = N'Số điện thoại' THEN txlh.Gia_Tri END, ', '),
        @Email = STRING_AGG(CASE WHEN txlh.Loai_Lien_He_Email_SDT = 'Email' THEN txlh.Gia_Tri END, ', ')
    FROM TAIXE tx
    INNER JOIN TAIXE_LIENHE txlh ON tx.Ma_Tai_Xe = txlh.Ma_Tai_Xe
    WHERE @Ma_Tai_Xe = tx.Ma_Tai_Xe
    GROUP BY tx.Ma_Tai_Xe, tx.Ho_Va_Ten;
END;

DROP PROCEDURE sp_LIENHE_TAIXE;

GO
DECLARE
    @Ten NVARCHAR(100),
    @So_Dien_Thoai NVARCHAR(15),
    @Email NVARCHAR(100)
EXEC sp_LIENHE_TAIXE @Ma_Tai_Xe = N'TX1', @Ho_Ten = @Ten OUTPUT, @So_Dien_Thoai = @So_Dien_Thoai OUTPUT,
@Email = @Email OUTPUT;
PRINT N'Tài xế: ' + @Ten + N', Số điện thoại: ' + @So_Dien_Thoai + ', Email: ' + @Email;

-- 9. FUNCTION
-- 9.1. FUNCTION trả về giá trị vô hướng
-- 9.1.1. FUNCTION tính tổng số trạm dừng của 1 tuyến xe
GO
CREATE FUNCTION fn_TRAMDUNG_TUYENXE (@Ma_Tuyen NVARCHAR(10))
RETURNS INT
AS 
BEGIN
    DECLARE @So_Tram INT;
    SELECT @So_Tram = COUNT(*) FROM LOTRINH WHERE Ma_Tuyen = @Ma_Tuyen;
    RETURN @So_Tram;
END;

GO
SELECT dbo.fn_TRAMDUNG_TUYENXE('BUS1') AS So_Tram_Dung;

-- 9.1.2. FUNCTION tính tổng số tài xế đang làm việc tại công ty
GO
CREATE FUNCTION fn_TONG_TAIXE ()
RETURNS INT
AS
BEGIN
    DECLARE @Tong_Tai_Xe INT;
    SELECT @Tong_Tai_Xe = COUNT(*) FROM TAIXE;
    RETURN @Tong_Tai_Xe;
END;

GO
SELECT dbo.fn_TONG_TAIXE() AS Tong_Tai_Xe_Dang_Lam_Viec;

-- 9.2. FUNCTION trả về bảng
-- 9.2.1. FUNCTION lấy số điện thoại của tài xế trong hệ thống
GO
CREATE FUNCTION fn_SDT_TAIXE ()
RETURNS TABLE
AS
RETURN    
(SELECT 
    tx.Ma_Tai_Xe, tx.Ho_Va_Ten, 
    STRING_AGG(txlh.Gia_Tri, ', ') AS So_Dien_Thoai
    FROM TAIXE tx
    INNER JOIN TAIXE_LIENHE txlh ON tx.Ma_Tai_Xe = txlh.Ma_Tai_Xe
    WHERE txlh.Loai_Lien_He_Email_SDT = N'Số điện thoại'
    GROUP BY tx.Ma_Tai_Xe, tx.Ho_Va_Ten
);

GO
SELECT * FROM dbo.fn_SDT_TAIXE();

-- 9.2.2. FUNCTION lấy email của tài xế trong hệ thống
GO
CREATE FUNCTION fn_EMAIL_TAIXE ()
RETURNS TABLE
AS
RETURN    
(SELECT 
    tx.Ma_Tai_Xe, tx.Ho_Va_Ten, 
    STRING_AGG(txlh.Gia_Tri, ', ') AS Email
    FROM TAIXE tx
    INNER JOIN TAIXE_LIENHE txlh ON tx.Ma_Tai_Xe = txlh.Ma_Tai_Xe
    WHERE txlh.Loai_Lien_He_Email_SDT = 'Email'
    GROUP BY tx.Ma_Tai_Xe, tx.Ho_Va_Ten
);

GO
SELECT * FROM dbo.fn_EMAIL_TAIXE();

-- 9.2.3. FUNCTION lấy số điện thoại của chi nhánh trong hệ thống
GO
CREATE FUNCTION fn_SDT_CHINHANH ()
RETURNS TABLE
AS
RETURN    
(SELECT 
    cn.Ma_Chi_Nhanh, cn.Ten_Chi_Nhanh, 
    STRING_AGG(cnlh.Gia_Tri, ', ') AS So_Dien_Thoai
    FROM CHINHANH cn
    INNER JOIN CHINHANH_LIENHE cnlh ON cn.Ma_Chi_Nhanh = cnlh.Ma_Chi_Nhanh
    WHERE cnlh.Loai_Lien_He_Email_SDT = N'Số điện thoại'
    GROUP BY cn.Ma_Chi_Nhanh, cn.Ten_Chi_Nhanh
);

GO
SELECT * FROM dbo.fn_SDT_CHINHANH();

-- 9.2.4. FUNCTION lấy email của tài xế trong hệ thống
GO
CREATE FUNCTION fn_EMAIL_CHINHANH ()
RETURNS TABLE
AS
RETURN    
(SELECT 
    cn.Ma_Chi_Nhanh, cn.Ten_Chi_Nhanh, 
    STRING_AGG(cnlh.Gia_Tri, ', ') AS Email
    FROM CHINHANH cn
    INNER JOIN CHINHANH_LIENHE cnlh ON cn.Ma_Chi_Nhanh = cnlh.Ma_Chi_Nhanh
    WHERE cnlh.Loai_Lien_He_Email_SDT = 'Email'
    GROUP BY cn.Ma_Chi_Nhanh, cn.Ten_Chi_Nhanh
);

GO
SELECT * FROM dbo.fn_EMAIL_CHINHANH();

-- 9.2.5. FUNCTION lấy thông tin các tuyến xe
GO
CREATE FUNCTION fn_THONGTIN_TUYENXE ()
RETURNS TABLE
AS
RETURN    
(SELECT 
    tx.Ma_Tuyen, tx.Ten_Tuyen,
    tx.Ma_Chi_Nhanh, cn.Ten_Chi_Nhanh,
    tx.Gio_Bat_Dau, tramkd.Vi_Tri_Tram AS Tram_Khoi_Dau,
    tx.Gio_Ket_Thuc, tramkt.Vi_Tri_Tram AS Tram_Ket_Thuc
    FROM TUYENXE tx
    INNER JOIN CHINHANH cn ON tx.Ma_Chi_Nhanh = cn.Ma_Chi_Nhanh
    INNER JOIN TRAMKHOIDAU kd ON tx.Ma_Tuyen = kd.Ma_Tuyen
    INNER JOIN TRAMKETTHUC kt ON tx.Ma_Tuyen = kt.Ma_Tuyen
    INNER JOIN TRAMXE tramkd ON kd.Ma_Tram = tramkd.Ma_Tram
    INNER JOIN TRAMXE tramkt ON kt.Ma_Tram = tramkt.Ma_Tram
);

GO
SELECT * FROM dbo.fn_THONGTIN_TUYENXE();

-- 9.3. FUCNTION dùng biến bảng
-- 9.3.1. FUCNTION sắp xếp số trạm dừng của từng tuyến xe
GO
CREATE FUNCTION fn_SOTRAM_TUYENXE()
RETURNS @Danh_Sach TABLE (Ma_Tuyen NVARCHAR(10), Ten_Tuyen NVARCHAR(100), So_Tram INT)
AS
BEGIN
    INSERT INTO @Danh_Sach
    SELECT tx.Ma_Tuyen, tx.Ten_Tuyen, COUNT(DISTINCT lt.Ma_Tram) AS So_Tram
    FROM TUYENXE tx
    INNER JOIN LOTRINH lt ON tx.Ma_Tuyen = lt.Ma_Tuyen
    GROUP BY tx.Ma_Tuyen, tx.Ten_Tuyen;
    RETURN;
END;

GO
SELECT * FROM dbo.fn_SOTRAM_TUYENXE() ORDER BY So_Tram DESC;

-- 9.3.2. FUNCTION sắp xếp số lượng tuyến xe đi qua của từng trạm
GO
CREATE FUNCTION fn_TUYENXE_TRAMDUNG_SAPXEP()
RETURNS @Danh_Sach TABLE (Ma_Tram NVARCHAR(10), So_Tuyen INT)
AS
BEGIN
    INSERT INTO @Danh_Sach
    SELECT lt.Ma_Tram, COUNT(DISTINCT lt.Ma_Tuyen) AS So_Tuyen
    FROM LOTRINH lt
    GROUP BY lt.Ma_Tram;
    RETURN;
END;

GO
SELECT * FROM dbo.fn_TUYENXE_TRAMDUNG_SAPXEP() ORDER BY So_Tuyen DESC;

-- 10. TRIGGER
-- 10.1. TRIGGER ngăn chặn xóa tài xế nếu vẫn còn dữ liệu phương tiện
GO
CREATE TRIGGER trg_CHECK_PHUONGTIEN_TAIXE
ON TAIXE
INSTEAD OF DELETE
AS
BEGIN
    IF EXISTS (SELECT 1 FROM deleted d INNER JOIN PHUONGTIEN pt ON d.Ma_Tai_Xe = pt.Ma_Tai_Xe)
    BEGIN
        RAISERROR (N'Tài xế đang có phương tiện, không thể xóa', 16, 1);
        RETURN;
    END
    DELETE FROM TAIXE WHERE Ma_Tai_Xe IN (SELECT Ma_Tai_Xe from deleted);
END;

-- 10.2. TRIGGER kiểm tra định dạng biển số xe
GO
CREATE TRIGGER trg_CHECK_BIENKIEMSOAT
ON PHUONGTIEN
AFTER INSERT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM inserted WHERE Bien_Kiem_Soat NOT LIKE '[0-9][0-9][A-Z]-[0-9][0-9][0-9].[0-9][0-9]')
    BEGIN
        RAISERROR (N'Biển số xe không hợp lệ!', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;

-- 10.3. TRIGGER ngăn chặn thay đổi mã tuyến
GO
CREATE TRIGGER trg_CHECK_MATUYEN
ON TUYENXE
INSTEAD OF UPDATE
AS
BEGIN
    IF UPDATE(Ma_Tuyen)
    BEGIN
        RAISERROR (N'Không được phép cập nhật mã tuyến!', 16, 1);
        RETURN;
    END
    UPDATE TUYENXE
    SET Ten_Tuyen = i.Ten_Tuyen, Gio_Bat_Dau = i.Gio_Bat_Dau, Gio_Ket_Thuc = i.Gio_Ket_Thuc
    FROM TUYENXE t INNER JOIN inserted i ON t.Ma_Tuyen = i.Ma_Tuyen;
END;

-- 10.4. TRIGGER kiểm tra số điện thoại đã tồn tại trên hệ thống hay chưa (TX)
GO
CREATE TRIGGER trg_CHECK_SDT_TAIXE
ON TAIXE_LIENHE
AFTER INSERT
AS
BEGIN
    IF EXISTS (SELECT Gia_Tri FROM inserted i WHERE Loai_Lien_He_Email_SDT = N'Số điện thoại' 
               GROUP BY Gia_Tri HAVING COUNT(*) > 1)
    BEGIN
        RAISERROR (N'Số điện thoại đã tồn tại!', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;

-- 10.5. TRIGGER kiểm tra số điện thoại đã tồn tại trên hệ thống hay chưa (CN)
GO
CREATE TRIGGER trg_CHECK_SDT_CHINHANH
ON CHINHANH_LIENHE
AFTER INSERT
AS
BEGIN
    IF EXISTS (SELECT Gia_Tri FROM inserted i WHERE Loai_Lien_He_Email_SDT = N'Số điện thoại' 
               GROUP BY Gia_Tri HAVING COUNT(*) > 1)
    BEGIN
        RAISERROR (N'Số điện thoại đã tồn tại!', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;

-- 10.6. TRIGGER đảm bảo số chỗ ngồi của phương tiện phải lớn hơn 16
GO
CREATE TRIGGER trg_CHECK_SOCHONGOI
ON PHUONGTIEN
AFTER INSERT, UPDATE
AS
BEGIN
    IF EXISTS (SELECT 1 FROM inserted WHERE So_Cho_Ngoi < 16)
    BEGIN
        RAISERROR (N'Số chỗ ngồi không hợp lệ, phải lớn hơn 16!', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;

-- 10.7. TRIGGER ngăn chặn nhập 2 trạm dừng có cùng vị trí
GO
CREATE TRIGGER trg_CHECK_VITRI_TRAMDUNG
ON TRAMXE
AFTER INSERT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM inserted i INNER JOIN TRAMXE t ON i.Vi_Tri_Tram = t.Vi_Tri_Tram)
    BEGIN
        RAISERROR (N'Vị trí trạm đã tồn tại!', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;

-- 10.8. TRIGGER lưu lịch sử cập nhật trên từng bảng
-- 10.8.1. Tạo bảng lưu trữ lịch sử cập nhật
GO
CREATE TABLE LICHSUTHAYDOIDULIEU(
    ID INT IDENTITY (1, 1) PRIMARY KEY,
    Bang_Tac_Dong NVARCHAR(50),
    Loai_Tac_dong NVARCHAR(50),
    Ma_Doi_Tuong_Bi_Tac_Dong NVARCHAR(10),
    Thong_Tin_Cu NVARCHAR(MAX),
    Thong_Tin_Moi NVARCHAR(MAX),
    Ngay_Thay_Doi DATETIME DEFAULT GETDATE()
);

-- 10.8.2. TRIGGER cho tbl.PHUONGTIEN
GO
CREATE TRIGGER trg_LICHSU_PHUONGTIEN
ON PHUONGTIEN
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    -- INSERT
    INSERT INTO LICHSUTHAYDOIDULIEU (Bang_Tac_Dong, Loai_Tac_Dong, Ma_Doi_Tuong_Bi_Tac_Dong, Thong_Tin_Cu, Thong_Tin_Moi, Ngay_Thay_Doi)
    SELECT 
        'PHUONGTIEN',
        'INSERT',
        i.Ma_Phuong_Tien,
        NULL,
        (SELECT Ma_Phuong_Tien, Ma_Tuyen, Ma_Tai_Xe, Ten_Phuong_Tien, Bien_Kiem_Soat, Hang_San_Xuat, Nam_San_Xuat, So_Khung, So_Cho_Ngoi 
         FROM inserted i FOR JSON AUTO),
        GETDATE()
    FROM inserted i;
    -- UPDATE
    INSERT INTO LICHSUTHAYDOIDULIEU (Bang_Tac_Dong, Loai_Tac_Dong, Ma_Doi_Tuong_Bi_Tac_Dong, Thong_Tin_Cu, Thong_Tin_Moi, Ngay_Thay_Doi)
    SELECT 
        'PHUONGTIEN',
        'UPDATE',
        i.Ma_Phuong_Tien,
        (SELECT Ma_Phuong_Tien, Ma_Tuyen, Ma_Tai_Xe, Ten_Phuong_Tien, Bien_Kiem_Soat, Hang_San_Xuat, Nam_San_Xuat, So_Khung, So_Cho_Ngoi 
         FROM deleted d FOR JSON AUTO),
        (SELECT Ma_Phuong_Tien, Ma_Tuyen, Ma_Tai_Xe, Ten_Phuong_Tien, Bien_Kiem_Soat, Hang_San_Xuat, Nam_San_Xuat, So_Khung, So_Cho_Ngoi 
         FROM inserted i FOR JSON AUTO),
        GETDATE()
    FROM deleted d
    JOIN inserted i ON d.Ma_Phuong_Tien = i.Ma_Phuong_Tien;
    -- DELETE
    INSERT INTO LICHSUTHAYDOIDULIEU (Bang_Tac_Dong, Loai_Tac_Dong, Ma_Doi_Tuong_Bi_Tac_Dong, Thong_Tin_Cu, Thong_Tin_Moi, Ngay_Thay_Doi)
    SELECT 
        'PHUONGTIEN',
        'DELETE',
        d.Ma_Phuong_Tien,
        (SELECT Ma_Phuong_Tien, Ma_Tuyen, Ma_Tai_Xe, Ten_Phuong_Tien, Bien_Kiem_Soat, Hang_San_Xuat, Nam_San_Xuat, So_Khung, So_Cho_Ngoi 
         FROM deleted d FOR JSON AUTO),
        NULL,
        GETDATE()
    FROM deleted d;
END;

-- 10.8.3. TRIGGER cho tbl.TUYENXE
GO
CREATE TRIGGER trg_LICHSU_TUYENXE
ON TUYENXE
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    -- INSERT
    INSERT INTO LICHSUTHAYDOIDULIEU (Bang_Tac_Dong, Loai_Tac_Dong, Ma_Doi_Tuong_Bi_Tac_Dong, Thong_Tin_Cu, Thong_Tin_Moi, Ngay_Thay_Doi)
    SELECT 
        'TUYENXE',
        'INSERT',
        i.Ma_Tuyen,
        NULL,
        (SELECT Ma_Tuyen, Ma_Chi_Nhanh, Ten_Tuyen, Gio_Bat_Dau, Gio_Ket_Thuc 
         FROM inserted i FOR JSON AUTO),
        GETDATE()
    FROM inserted i;
    -- UPDATE
    INSERT INTO LICHSUTHAYDOIDULIEU (Bang_Tac_Dong, Loai_Tac_Dong, Ma_Doi_Tuong_Bi_Tac_Dong, Thong_Tin_Cu, Thong_Tin_Moi, Ngay_Thay_Doi)
    SELECT 
        'TUYENXE',
        'UPDATE',
        i.Ma_Tuyen,
        (SELECT Ma_Tuyen, Ma_Chi_Nhanh, Ten_Tuyen, Gio_Bat_Dau, Gio_Ket_Thuc 
         FROM deleted d FOR JSON AUTO),
        (SELECT Ma_Tuyen, Ma_Chi_Nhanh, Ten_Tuyen, Gio_Bat_Dau, Gio_Ket_Thuc 
         FROM inserted i FOR JSON AUTO),
        GETDATE()
    FROM deleted d
    JOIN inserted i ON d.Ma_Tuyen = i.Ma_Tuyen;
    -- DELETE
    INSERT INTO LICHSUTHAYDOIDULIEU (Bang_Tac_Dong, Loai_Tac_Dong, Ma_Doi_Tuong_Bi_Tac_Dong, Thong_Tin_Cu, Thong_Tin_Moi, Ngay_Thay_Doi)
    SELECT 
        'TUYENXE',
        'DELETE',
        d.Ma_Tuyen,
        (SELECT Ma_Tuyen, Ma_Chi_Nhanh, Ten_Tuyen, Gio_Bat_Dau, Gio_Ket_Thuc 
         FROM deleted d FOR JSON AUTO),
        NULL,
        GETDATE()
    FROM deleted d;
END;

-- 10.8.4. TRIGGER cho tbl.TAIXE
GO
CREATE TRIGGER trg_LICHSU_TAIXE
ON TAIXE
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    -- INSERT
    INSERT INTO LICHSUTHAYDOIDULIEU (Bang_Tac_Dong, Loai_Tac_dong, Ma_Doi_Tuong_Bi_Tac_Dong, Thong_Tin_Cu, Thong_Tin_Moi, Ngay_Thay_Doi)
    SELECT 
        'TAIXE' AS Bang_Tac_Dong,
        'INSERT' AS Loai_Tac_Dong,
        i.Ma_Tai_Xe AS Ma_Doi_Tuong_Bi_Tac_Dong,
        NULL AS Thong_Tin_Cu,
        CONCAT('MaChiNhanh: ', i.Ma_Chi_Nhanh, ', HoTen: ', i.Ho_Va_Ten, ', NgaySinh: ', FORMAT(i.Ngay_Sinh, 'yyyy-MM-dd'), ', DiaChi: ', i.Dia_Chi) AS Thong_Tin_Moi,
        GETDATE() AS Ngay_Thay_Doi
    FROM inserted i;
    -- UPDATE
    INSERT INTO LICHSUTHAYDOIDULIEU (Bang_Tac_Dong, Loai_Tac_dong, Ma_Doi_Tuong_Bi_Tac_Dong, Thong_Tin_Cu, Thong_Tin_Moi, Ngay_Thay_Doi)
    SELECT 
        'TAIXE' AS Bang_Tac_Dong,
        'UPDATE' AS Loai_Tac_Dong,
        i.Ma_Tai_Xe AS Ma_Doi_Tuong_Bi_Tac_Dong,
        CONCAT('MaChiNhanh: ', d.Ma_Chi_Nhanh, ', HoTen: ', d.Ho_Va_Ten, ', NgaySinh: ', FORMAT(d.Ngay_Sinh, 'yyyy-MM-dd'), ', DiaChi: ', d.Dia_Chi) AS Thong_Tin_Cu,
        CONCAT('MaChiNhanh: ', i.Ma_Chi_Nhanh, ', HoTen: ', i.Ho_Va_Ten, ', NgaySinh: ', FORMAT(i.Ngay_Sinh, 'yyyy-MM-dd'), ', DiaChi: ', i.Dia_Chi) AS Thong_Tin_Moi,
        GETDATE() AS Ngay_Thay_Doi
    FROM inserted i
    INNER JOIN deleted d ON i.Ma_Tai_Xe = d.Ma_Tai_Xe;
    -- DELETE
    INSERT INTO LICHSUTHAYDOIDULIEU (Bang_Tac_Dong, Loai_Tac_dong, Ma_Doi_Tuong_Bi_Tac_Dong, Thong_Tin_Cu, Thong_Tin_Moi, Ngay_Thay_Doi)
    SELECT 
        'TAIXE' AS Bang_Tac_Dong,
        'DELETE' AS Loai_Tac_Dong,
        d.Ma_Tai_Xe AS Ma_Doi_Tuong_Bi_Tac_Dong,
        CONCAT('MaChiNhanh: ', d.Ma_Chi_Nhanh, ', HoTen: ', d.Ho_Va_Ten, ', NgaySinh: ', FORMAT(d.Ngay_Sinh, 'yyyy-MM-dd'), ', DiaChi: ', d.Dia_Chi) AS Thong_Tin_Cu,
        NULL AS Thong_Tin_Moi,
        GETDATE() AS Ngay_Thay_Doi
    FROM deleted d;
END;

-- 10.8.5. TRIGGER cho tbl.TAIXE_LIENHE
GO
CREATE TRIGGER trg_LICHSU_TAIXE_LIENHE
ON TAIXE_LIENHE
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    -- INSERT
    INSERT INTO LICHSUTHAYDOIDULIEU (Bang_Tac_Dong, Loai_Tac_dong, Ma_Doi_Tuong_Bi_Tac_Dong, Thong_Tin_Cu, Thong_Tin_Moi, Ngay_Thay_Doi)
    SELECT 
        'TAIXE_LIENHE' AS Bang_Tac_Dong,
        'INSERT' AS Loai_Tac_Dong,
        i.Ma_Tai_Xe AS Ma_Doi_Tuong_Bi_Tac_Dong,
        NULL AS Thong_Tin_Cu,
        CONCAT('LoaiLienHe: ', i.Loai_Lien_He_Email_SDT, ', GiaTri: ', i.Gia_Tri) AS Thong_Tin_Moi,
        GETDATE() AS Ngay_Thay_Doi
    FROM inserted i;
    -- UPDATE
    INSERT INTO LICHSUTHAYDOIDULIEU (Bang_Tac_Dong, Loai_Tac_dong, Ma_Doi_Tuong_Bi_Tac_Dong, Thong_Tin_Cu, Thong_Tin_Moi, Ngay_Thay_Doi)
    SELECT 
        'TAIXE_LIENHE' AS Bang_Tac_Dong,
        'UPDATE' AS Loai_Tac_Dong,
        i.Ma_Tai_Xe AS Ma_Doi_Tuong_Bi_Tac_Dong,
        CONCAT('LoaiLienHe: ', d.Loai_Lien_He_Email_SDT, ', GiaTri: ', d.Gia_Tri) AS Thong_Tin_Cu,
        CONCAT('LoaiLienHe: ', i.Loai_Lien_He_Email_SDT, ', GiaTri: ', i.Gia_Tri) AS Thong_Tin_Moi,
        GETDATE() AS Ngay_Thay_Doi
    FROM inserted i
    INNER JOIN deleted d ON i.Ma_Tai_Xe = d.Ma_Tai_Xe;
    -- DELETE
    INSERT INTO LICHSUTHAYDOIDULIEU (Bang_Tac_Dong, Loai_Tac_dong, Ma_Doi_Tuong_Bi_Tac_Dong, Thong_Tin_Cu, Thong_Tin_Moi, Ngay_Thay_Doi)
    SELECT 
        'TAIXE_LIENHE' AS Bang_Tac_Dong,
        'DELETE' AS Loai_Tac_Dong,
        d.Ma_Tai_Xe AS Ma_Doi_Tuong_Bi_Tac_Dong,
        CONCAT('LoaiLienHe: ', d.Loai_Lien_He_Email_SDT, ', GiaTri: ', d.Gia_Tri) AS Thong_Tin_Cu,
        NULL AS Thong_Tin_Moi,
        GETDATE() AS Ngay_Thay_Doi
    FROM deleted d;
END;

-- 10.8.6. TRIGGER cho tbl.LOTRINH
GO
CREATE TRIGGER trg_LICHSU_LOTRINH
ON LOTRINH
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    -- INSERT
    INSERT INTO LICHSUTHAYDOIDULIEU (Bang_Tac_Dong, Loai_Tac_dong, Ma_Doi_Tuong_Bi_Tac_Dong, Thong_Tin_Cu, Thong_Tin_Moi, Ngay_Thay_Doi)
    SELECT 
        'LOTRINH' AS Bang_Tac_Dong,
        'INSERT' AS Loai_Tac_Dong,
        CONCAT(i.Ma_Tuyen, '-', i.Ma_Tram) AS Ma_Doi_Tuong_Bi_Tac_Dong,
        NULL AS Thong_Tin_Cu,
        CONCAT('MaTuyen: ', i.Ma_Tuyen, ', MaTram: ', i.Ma_Tram, ', ThuTuTram: ', i.Thu_Tu_Tram) AS Thong_Tin_Moi,
        GETDATE() AS Ngay_Thay_Doi
    FROM inserted i;
    -- UPDATE
    INSERT INTO LICHSUTHAYDOIDULIEU (Bang_Tac_Dong, Loai_Tac_dong, Ma_Doi_Tuong_Bi_Tac_Dong, Thong_Tin_Cu, Thong_Tin_Moi, Ngay_Thay_Doi)
    SELECT 
        'LOTRINH' AS Bang_Tac_Dong,
        'UPDATE' AS Loai_Tac_Dong,
        CONCAT(i.Ma_Tuyen, '-', i.Ma_Tram) AS Ma_Doi_Tuong_Bi_Tac_Dong,
        CONCAT('MaTuyen: ', d.Ma_Tuyen, ', MaTram: ', d.Ma_Tram, ', ThuTuTram: ', d.Thu_Tu_Tram) AS Thong_Tin_Cu,
        CONCAT('MaTuyen: ', i.Ma_Tuyen, ', MaTram: ', i.Ma_Tram, ', ThuTuTram: ', i.Thu_Tu_Tram) AS Thong_Tin_Moi,
        GETDATE() AS Ngay_Thay_Doi
    FROM inserted i
    INNER JOIN deleted d ON i.Ma_Tuyen = d.Ma_Tuyen AND i.Ma_Tram = d.Ma_Tram;
    -- DELETE
    INSERT INTO LICHSUTHAYDOIDULIEU (Bang_Tac_Dong, Loai_Tac_dong, Ma_Doi_Tuong_Bi_Tac_Dong, Thong_Tin_Cu, Thong_Tin_Moi, Ngay_Thay_Doi)
    SELECT 
        'LOTRINH' AS Bang_Tac_Dong,
        'DELETE' AS Loai_Tac_Dong,
        CONCAT(d.Ma_Tuyen, '-', d.Ma_Tram) AS Ma_Doi_Tuong_Bi_Tac_Dong,
        CONCAT('MaTuyen: ', d.Ma_Tuyen, ', MaTram: ', d.Ma_Tram, ', ThuTuTram: ', d.Thu_Tu_Tram) AS Thong_Tin_Cu,
        NULL AS Thong_Tin_Moi,
        GETDATE() AS Ngay_Thay_Doi
    FROM deleted d;
END;

-- 10.8.7. TRIGGER cho tbl.CHINHANH
GO
CREATE TRIGGER trg_LICHSU_CHINHANH
ON CHINHANH
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    -- INSERT
    INSERT INTO LICHSUTHAYDOIDULIEU (Bang_Tac_Dong, Loai_Tac_dong, Ma_Doi_Tuong_Bi_Tac_Dong, Thong_Tin_Cu, Thong_Tin_Moi, Ngay_Thay_Doi)
    SELECT 
        'CHINHANH' AS Bang_Tac_Dong,
        'INSERT' AS Loai_Tac_Dong,
        i.Ma_Chi_Nhanh AS Ma_Doi_Tuong_Bi_Tac_Dong,
        NULL AS Thong_Tin_Cu,
        CONCAT('MaChiNhanh: ', i.Ma_Chi_Nhanh, ', MaThanhPho: ', i.Ma_Thanh_Pho, ', TenChiNhanh: ', i.Ten_Chi_Nhanh, ', DiaChi: ', i.Dia_Chi) AS Thong_Tin_Moi,
        GETDATE() AS Ngay_Thay_Doi
    FROM inserted i;
    -- UPDATE
    INSERT INTO LICHSUTHAYDOIDULIEU (Bang_Tac_Dong, Loai_Tac_dong, Ma_Doi_Tuong_Bi_Tac_Dong, Thong_Tin_Cu, Thong_Tin_Moi, Ngay_Thay_Doi)
    SELECT 
        'CHINHANH' AS Bang_Tac_Dong,
        'UPDATE' AS Loai_Tac_Dong,
        i.Ma_Chi_Nhanh AS Ma_Doi_Tuong_Bi_Tac_Dong,
        CONCAT('MaChiNhanh: ', d.Ma_Chi_Nhanh, ', MaThanhPho: ', d.Ma_Thanh_Pho, ', TenChiNhanh: ', d.Ten_Chi_Nhanh, ', DiaChi: ', d.Dia_Chi) AS Thong_Tin_Cu,
        CONCAT('MaChiNhanh: ', i.Ma_Chi_Nhanh, ', MaThanhPho: ', i.Ma_Thanh_Pho, ', TenChiNhanh: ', i.Ten_Chi_Nhanh, ', DiaChi: ', i.Dia_Chi) AS Thong_Tin_Moi,
        GETDATE() AS Ngay_Thay_Doi
    FROM inserted i
    INNER JOIN deleted d ON i.Ma_Chi_Nhanh = d.Ma_Chi_Nhanh;
    -- DELETE
    INSERT INTO LICHSUTHAYDOIDULIEU (Bang_Tac_Dong, Loai_Tac_dong, Ma_Doi_Tuong_Bi_Tac_Dong, Thong_Tin_Cu, Thong_Tin_Moi, Ngay_Thay_Doi)
    SELECT 
        'CHINHANH' AS Bang_Tac_Dong,
        'DELETE' AS Loai_Tac_Dong,
        d.Ma_Chi_Nhanh AS Ma_Doi_Tuong_Bi_Tac_Dong,
        CONCAT('MaChiNhanh: ', d.Ma_Chi_Nhanh, ', MaThanhPho: ', d.Ma_Thanh_Pho, ', TenChiNhanh: ', d.Ten_Chi_Nhanh, ', DiaChi: ', d.Dia_Chi) AS Thong_Tin_Cu,
        NULL AS Thong_Tin_Moi,
        GETDATE() AS Ngay_Thay_Doi
    FROM deleted d;
END;

-- 10.8.8. TRIGGER cho tbl.CHINHANH_LIENHE
GO
CREATE TRIGGER trg_LICHSU_CHINHANH_LIENHE
ON CHINHANH_LIENHE
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    -- INSERT
    INSERT INTO LICHSUTHAYDOIDULIEU (Bang_Tac_Dong, Loai_Tac_dong, Ma_Doi_Tuong_Bi_Tac_Dong, Thong_Tin_Cu, Thong_Tin_Moi, Ngay_Thay_Doi)
    SELECT 
        'CHINHANH_LIENHE' AS Bang_Tac_Dong,
        'INSERT' AS Loai_Tac_Dong,
        i.Ma_Chi_Nhanh AS Ma_Doi_Tuong_Bi_Tac_Dong,
        NULL AS Thong_Tin_Cu,
        CONCAT('MaChiNhanh: ', i.Ma_Chi_Nhanh, ', LoaiLienHe: ', i.Loai_Lien_He_Email_SDT, ', GiaTri: ', i.Gia_Tri) AS Thong_Tin_Moi,
        GETDATE() AS Ngay_Thay_Doi
    FROM inserted i;
    -- UPDATE
    INSERT INTO LICHSUTHAYDOIDULIEU (Bang_Tac_Dong, Loai_Tac_dong, Ma_Doi_Tuong_Bi_Tac_Dong, Thong_Tin_Cu, Thong_Tin_Moi, Ngay_Thay_Doi)
    SELECT 
        'CHINHANH_LIENHE' AS Bang_Tac_Dong,
        'UPDATE' AS Loai_Tac_Dong,
        i.Ma_Chi_Nhanh AS Ma_Doi_Tuong_Bi_Tac_Dong,
        CONCAT('MaChiNhanh: ', d.Ma_Chi_Nhanh, ', LoaiLienHe: ', d.Loai_Lien_He_Email_SDT, ', GiaTri: ', d.Gia_Tri) AS Thong_Tin_Cu,
        CONCAT('MaChiNhanh: ', i.Ma_Chi_Nhanh, ', LoaiLienHe: ', i.Loai_Lien_He_Email_SDT, ', GiaTri: ', i.Gia_Tri) AS Thong_Tin_Moi,
        GETDATE() AS Ngay_Thay_Doi
    FROM inserted i
    INNER JOIN deleted d ON i.Ma_Chi_Nhanh = d.Ma_Chi_Nhanh AND i.Loai_Lien_He_Email_SDT = d.Loai_Lien_He_Email_SDT;
    -- DELETE
    INSERT INTO LICHSUTHAYDOIDULIEU (Bang_Tac_Dong, Loai_Tac_dong, Ma_Doi_Tuong_Bi_Tac_Dong, Thong_Tin_Cu, Thong_Tin_Moi, Ngay_Thay_Doi)
    SELECT 
        'CHINHANH_LIENHE' AS Bang_Tac_Dong,
        'DELETE' AS Loai_Tac_Dong,
        d.Ma_Chi_Nhanh AS Ma_Doi_Tuong_Bi_Tac_Dong,
        CONCAT('MaChiNhanh: ', d.Ma_Chi_Nhanh, ', LoaiLienHe: ', d.Loai_Lien_He_Email_SDT, ', GiaTri: ', d.Gia_Tri) AS Thong_Tin_Cu,
        NULL AS Thong_Tin_Moi,
        GETDATE() AS Ngay_Thay_Doi
    FROM deleted d;
END;

-- 11. Tạo người dùng
GO
USE master;

-- Tạo tài khoản cho Admin
CREATE LOGIN USER_ADMIN WITH PASSWORD = 'Admin123@';

-- Tạo tài khoản cho nhân viên level 1
CREATE LOGIN USER_EMP_LV1 WITH PASSWORD = 'EMP123@1';

-- Tạo tài khoản cho nhân viên level 2
CREATE LOGIN USER_EMP_LV2 WITH PASSWORD = 'EMP123@2';

-- Tạo tài khoản cho nhân viên level 3
CREATE LOGIN USER_EMP_LV3 WITH PASSWORD = 'EMP123@3';

-- RULES:
-- 1. Tài khoản Admin có thể truy cập và thay đổi mọi dữ liệu trên DB.
-- 2. Tài khoản nhân viên lv 1 có thể đọc dữ liệu, thay đổi dữ liệu hoặc cấu trúc bảng trên DB.
-- 3. Tài khoản nhân viên lv 2 có thể đọc và thay đổi dữ liệu trên DB.
-- 4. Tài khoản nhân viên lv 3 chỉ có thể đọc dữ liệu trên DB mà không thể thay đổi chúng.

-- 11.1. Tạo user trong DB
USE Transerco_Bus_Management_DB;

CREATE USER USER_ADMIN FOR LOGIN USER_ADMIN;
CREATE USER USER_EMP_LV1 FOR LOGIN USER_EMP_LV1;
CREATE USER USER_EMP_LV2 FOR LOGIN USER_EMP_LV2;
CREATE USER USER_EMP_LV3 FOR LOGIN USER_EMP_LV3;

-- 11.2. Cấp quyền theo level
-- 11.2.1. Tài khoản Admin - Full Access - db_owner
ALTER ROLE db_owner ADD MEMBER USER_ADMIN;

-- 11.2.2. Tài khoản level 1 - db_ddladmin, db_datawriter, db_datareader
ALTER ROLE db_ddladmin ADD MEMBER USER_EMP_LV1;
ALTER ROLE db_datawriter ADD MEMBER USER_EMP_LV1;
ALTER ROLE db_datareader ADD MEMBER USER_EMP_LV1;

-- 11.2.3. Tài khoản level 2 - db_datawriter, db_datareader
ALTER ROLE db_datawriter ADD MEMBER USER_EMP_LV2;
ALTER ROLE db_datareader ADD MEMBER USER_EMP_LV2;

-- 11.2.4. Tài khoản level 3 - db_datareader
ALTER ROLE db_datareader ADD MEMBER USER_EMP_LV3;

-- 12. Backup dữ liệu
BACKUP DATABASE Transerco_Bus_Management_DB
TO DISK = '/var/opt/mssql/backup/Transerco_Backup.bak'
WITH FORMAT, COMPRESSION, INIT;

-- Kiểm tra file backup trong container Docker
-- Gõ lệnh sau trong Terminal để liệt kê các file backup trong container SQL Server:
-- docker exec -it sql2022 ls -lh /var/opt/mssql/backup
-- Nếu thấy Transerco_Backup.bak nghĩa là file đã được backup.

-- Sao chép file backup từ Docker ra Mac
-- Gõ lệnh sau trong Terminal để sao chép file backup từ container vào máy Mac:
-- docker cp sql2022:/var/opt/mssql/backup/Transerco_Backup.bak ~/Documents/Transerco_Backup.bak
