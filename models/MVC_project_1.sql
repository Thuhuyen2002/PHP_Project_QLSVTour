CREATE TABLE account (
  accountID int(11) NOT NULL,
  username varchar(100) NOT NULL,
  password varchar(100) NOT NULL,
  role varchar(100) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO account (accountID, username, password, role) VALUES
(1, 'admin', '123', 'Toàn quyền hệ thống'),
(2, 'normal1', '123', 'Quản lí thông thường'),

(3, 'GV01', 'GV01', 'Tài khoản giáo viên'),
(4, 'GV02', 'GV02', 'Tài khoản giáo viên'),
(5, 'GV03', 'GV03', 'Tài khoản giáo viên'),
(6, 'GV04', 'GV04', 'Tài khoản giáo viên'),
(7, 'GV05', 'GV05', 'Tài khoản giáo viên'),
(8, 'GV06', 'GV06', 'Tài khoản giáo viên'),
(9, 'GV07', 'GV07', 'Tài khoản giáo viên'),
(10, 'GV08', 'GV08', 'Tài khoản giáo viên'),
(11, 'GV09', 'GV09', 'Tài khoản giáo viên'),
(12, 'GV10', 'GV10', 'Tài khoản giáo viên'),
(13, 'GV11', 'GV11', 'Tài khoản giáo viên'),
(14, 'GV12', 'GV12', 'Tài khoản giáo viên'),
(15, 'GV13', 'GV13', 'Tài khoản giáo viên'),
(16, 'GV14', 'GV14', 'Tài khoản giáo viên'),
(17, 'GV15', 'GV15', 'Tài khoản giáo viên'),
(18, 'GV16', 'GV16', 'Tài khoản giáo viên'),
(19, 'GV17', 'GV17', 'Tài khoản giáo viên'),
(20, 'GV18', 'GV18', 'Tài khoản giáo viên'),
(21, 'GV19', 'GV19', 'Tài khoản giáo viên'),
(22, 'GV20', 'GV20', 'Tài khoản giáo viên');

(23, 'SV01', 'SV01', 'Tài khoản sinh viên'),
(24, 'SV02', 'SV02', 'Tài khoản sinh viên'),
(25, 'SV03', 'SV03', 'Tài khoản sinh viên'),
(26, 'SV04', 'SV04', 'Tài khoản sinh viên'),
(27, 'SV05', 'SV05', 'Tài khoản sinh viên'),
(28, 'SV06', 'SV06', 'Tài khoản sinh viên'),
(29, 'SV07', 'SV07', 'Tài khoản sinh viên'),
(30, 'SV08', 'SV08', 'Tài khoản sinh viên'),
(31, 'SV09', 'SV09', 'Tài khoản sinh viên'),
(32, 'SV10', 'SV10', 'Tài khoản sinh viên'),
(33, 'SV11', 'SV11', 'Tài khoản sinh viên'),
(34, 'SV12', 'SV12', 'Tài khoản sinh viên'),
(35, 'SV13', 'SV13', 'Tài khoản sinh viên'),
(36, 'SV14', 'SV14', 'Tài khoản sinh viên'),
(37, 'SV15', 'SV15', 'Tài khoản sinh viên'),
(38, 'SV16', 'SV16', 'Tài khoản sinh viên'),
(39, 'SV17', 'SV17', 'Tài khoản sinh viên'),
(40, 'SV18', 'SV18', 'Tài khoản sinh viên'),
(41, 'SV19', 'SV19', 'Tài khoản sinh viên'),
(42, 'SV20', 'SV20', 'Tài khoản sinh viên'),

----------------------------------
CREATE TABLE class (
  classID int(11) NOT NULL,
  code varchar(100) NOT NULL,
  name varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO class (classID, code, name) VALUES
(1, 'CNTT01', 'Công nghệ thông tin 01'),
(2, 'CNTT02', 'Công nghệ thông tin 02'),
(3, 'CNTT03', 'Công nghệ thông tin 03'),
(4, 'CNTT04', 'Công nghệ thông tin 04'),
(5, 'CNTT05', 'Công nghệ thông tin 05'),
(6, 'CNTT06', 'Công nghệ thông tin 06'),
(7, 'CNTT07', 'Công nghệ thông tin 07'),
(8, 'KTPM01', 'Kỹ thuật phần mềm 01'),
(9, 'KTPM02', 'Kỹ thuật phần mềm 02'),
(10, 'KTPM03', 'Kỹ thuật phần mềm 03'),
(11, 'KTPM04', 'Kỹ thuật phần mềm 04'),
(12, 'KHMT01', 'Khoa học máy tính 01'),
(13, 'KHMT02', 'Khoa học máy tính 02'),
(14, 'KHMT03', 'Khoa học máy tính 03'),
(15, 'HTTT01', 'Hệ thống thông tin 01'),
(16, 'HTTT02', 'Hệ thống thông tin 02'),
(17, 'CNDPT01', 'Công nghệ đa phương tiện 01'),
(18, 'CNDPT02', 'Công nghệ đa phương tiện 02');
(19, 'CNDPT02', 'Công nghệ đa phương tiện 03');
(20, 'CNDPT02', 'Công nghệ đa phương tiện 04');

--------------------------------------------------------------------
CREATE TABLE company (
  companyID int(11) NOT NULL,
  code varchar(100) NOT NULL,
  name varchar(100) NOT NULL,
  description varchar(100) NOT NULL,
  email varchar(100) NOT NULL,
  phoneNumber varchar(100) NOT NULL,
  address varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO company (companyID, code, name, description, email, phoneNumber, address) VALUES
(1, 'DN01', 'Viettel', '', 'Viettel@gmail.com', '02435545190', 'Hà Nội'),
(2, 'DN02', 'FPT', '', 'FPT@gmail.com', '02873031979', 'Hà Nội'),
(3, 'DN03', 'VCCorp', '', 'VCCorp@gmail.com', '0321654987', 'Hà Nội'),
(4, 'DN04', 'TMA Solutions', '', 'TMASolutions@gmail.com', '02473061888', 'Hải Dương'),
(5, 'DN05', 'VNG Corporation', '', 'VNGCorporation@gmail.com', '02873000089', 'Hải Phòng'),
(6, 'DN06', 'Nexle Corporation', '', 'NexleCorporation@gmail.com', '02873031979', 'Huế'),
(7, 'DN07', 'KMS Technology', '', 'KMSTechnology@gmail.com', '02873021300', 'Đà Nẵng'),
(8, 'DN08', 'VinTech', '', 'VinTech@gmail.com', '02473062626', 'Hà Đông'),
(9, 'DN09', 'VSEC', '', 'VSEC@gmail.com', '02473005118', 'Hà Nam'),
(10, 'DN10', 'Kyanon Digital', '', 'Kyanon Digital@gmail.com', '02835171080', 'Hồ Chí Minh'),
(11, 'DN11', 'SotaTek', '', 'SotaTek@gmail.com', '02466585248', 'Hà Nội'),
(12, 'DN12', 'Beetsoft', '', 'Beetsoft@gmail.com', '02435545190', 'Hà Nội'),
(13, 'DN13', 'NIFTIT', '', 'NIFTIT@gmail.com', '01208554880', 'Hồ Chí Minh'),
(14, 'DN14', 'CyStack Security', '', 'CyStackSecurity@gmail.com', '02471099656', 'Hà Nội'),
(15, 'DN15', 'NFQ Asia', '', 'NFQAsia@gmail.com', '02866812733', 'Hồ Chí Minh'),
(16, 'DN16', 'VinBigdata', '', 'VinBigdata@gmail.com', '0338557202', 'Hà Nội'),
(17, 'DN17', 'Nissho Vietnam', '', 'NisshoVietnam@gmail.com', '02435563737', 'Hà Nội'),
(18, 'DN18', 'TOG recruitment', '', 'TOGrecruitment@gmail.com', '0268554053', 'Hồ Chí Minh'),
(19, 'DN19', 'Merkle Vietnam', '', 'MerkleVietnam@gmail.com', '02839483630', 'Hồ Chí Minh'),
(20, 'DN20', 'VNext Software', '', 'VNextSoftware@gmail.com', '024 3765 9555', 'Hà Nội');

----------------------------------------------------------------------

CREATE TABLE student (
  studentID int(11) NOT NULL,
  code varchar(100) NOT NULL,
  fullName varchar(100) NOT NULL,
  gender varchar(15) NOT NULL,
  birthDate varchar(100) NOT NULL,
  address varchar(100) NOT NULL,
  phoneNumber varchar(100) NOT NULL,
  email varchar(100) NOT NULL,
  classID int(11) DEFAULT NULL,
  accountID int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO student (studentID, code, fullName, gender, birthDate, address, phoneNumber, email, classID, accountID) VALUES
(1, 'SV01', 'Tăng Khánh Linh', 'Nữ', '22/12/2003', 'Hưng Yên', '0987654321', 'khanhlinh@haui.com', 1, 23),
(2, 'SV02', 'Trương Ngọc Khuê', 'Nam', '15/05/2003', 'Hà Nam', '0123456789', 'khue@gmail.com', 8, 24),
(3, 'SV03', 'Lê Thị Ngọc Ánh', 'Nữ', '11/10/2003', 'Bắc Giang', '0125847369', 'anh@gmail.com', 4, 25),
(4, 'SV04', 'Nguyễn Thị Trang', 'Nữ', '12/10/2003', 'Hưng Yên', '0123654789', 'trang@gmail.com', 3, 26),
(5, 'SV05', 'Đinh Tuấn Đạt', 'Nam', '1/1/2003', 'Hà Nội', '0147258369', 'dat@gmail.com', 1, 27),
(6, 'SV06', 'Lương Minh Anh', 'Nữ', '30/10/2003', 'Hà Nội', '036974125', 'anh@gmail.com', 1, 28),
(7, 'SV07', 'Đinh Anh Minh', 'Nam', '16/10/2003', 'Hải Phòng', '0147963258', 'minh@gmail.com', 2, 29),
(8, 'SV08', 'Hoàng Lan Hương', 'Nữ', '16/10/2003', 'Hưng Yên', '0456789123', 'huong@gmail.com', 3, 30),
(9, 'SV09', 'Nguyễn Văn Hoàng', 'Nam', '16/10/2003', 'Hà Nam', '0147258369', 'hoang@gmail.com', 5, 31),
(10, 'SV10', 'Hoàng Văn Sơn', 'Nam', '16/10/2003', 'Hải Dương', '0258796413', 'son@gmail.com', 6, 32),
(11, 'SV11', 'Dương Văn Vũ', 'Nam', '19/2/2003', 'Quảng Ninh', '0789654123', 'vu@gmail.com', 7, 33),
(12, 'SV12', 'Nguyễn Thị Thương', 'Nữ', '16/4/2003', 'Hải Dương', '0147863259', 'thuong@gmail.com', 8, 34),
(13, 'SV13', 'Nguyễn Thị Hạnh', 'Nữ', '16/09/2003', 'Hồ Chí Minh', '0569874123', 'hanh@gmail.com', 2, 35),
(14, 'SV14', 'Nguyễn Vương Quyến', 'Nam', '20/1/2003', 'Lạng Sơn', '0258741369', 'quyen@gmail.com', 3, 36),
(15, 'SV15', 'Đặng Gia Bảo', 'Nam', '16/0/2003', 'Thanh Hóa', '0258741369', 'bao@gmail.com', 4, 37),
(16, 'SV16', 'Hạ Quang Anh', 'Nam', '12/03/2003', 'Tuyên Quang', '0258741369', 'anh@gmail.com', 5, 38),
(17, 'SV17', 'Lê Anh Hùng', 'Nam', '12/04/2003', 'Hải Dương', '0236987451', 'hung@gmail.com', 6, 39),
(18, 'SV18', 'Cao Đặng Trí', 'Nam', '25/09/2003', 'Hà Nội', '0258741369', 'tri@gmail.com', 7, 40),
(19, 'SV19', 'Phương Quỳnh Anh', 'Nữ', '26/01/2003', 'Hà Nam', '0258749632', 'qanh@gmail.com', 8, 41),
(20, 'SV20', 'Cao Hoàng Đức', 'Nam', '30/8/2003', 'Hải Phòng', '0147852369', 'hduc@gmail.com', 7, 42);

--------------------------------------------------------------------
CREATE TABLE teacher (
  teacherID int(11) NOT NULL,
  code varchar(100) NOT NULL,
  fullName varchar(100) NOT NULL,
  gender varchar(100) NOT NULL,
  birthDate varchar(100) NOT NULL,
  address varchar(100) NOT NULL,
  phoneNumber varchar(100) NOT NULL,
  email varchar(100) NOT NULL,
  accountID int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO teacher (teacherID, code, fullName, gender, birthDate, address, phoneNumber, email, accountID) VALUES
(1, 'GV01', 'Nguyễn Thị Lan Anh', 'Nữ', '12/06/1988', 'Hà Nội', '0987654321', 'lananh@gmail.com', 3),
(2, 'GV02', 'Trần Thị Hằng', 'Nữ', '23/02/1986', 'Hà Nam', '0243456988', 'tranhang@gmail.com', 4),
(3, 'GV03', 'Đỗ Mạnh Quang', 'Nam', '16/05/1998', 'Quảng Ninh', '0248889203', 'manhquang@gmail.com', 5),
(4, 'GV04', 'Trần Việt Thắng', 'Nam', '15/08/1982', 'Hà Nội', '033332807', 'vietthang@gmail.com', 6),
(5, 'GV05', 'Nguyễn Thế Anh', 'Nam', '14/03/1980', 'Hà Nội', '0975108581', 'theanh@gmail.com', 7),
(6, 'GV06', 'Hoàng Quang Huy', 'Nam', '30/01/1985', 'Hải Dương', '0123123456', 'quanghuy@gmail.com', 8),
(7, 'GV07', 'Nguyễn Thị Nhung', 'Nữ', '16/08/1984', 'Hải Dương', '0123654789', 'nguyennhung@gmail.com', 9),
(8, 'GV08', 'Trần Văn Hùng', 'Nam', '15/03/1980', 'Hà Nội', '0363658794', 'tranhung@gmail.com', 10),
(9, 'GV09', 'Dương Thị Yến', 'Nữ', '11/03/1988', 'Hà Nội', '0248557243', 'duongyen@gmail.com', 11),
(10, 'GV10', 'Ngô Thế Hưởng', 'Nam', '15/02/1976', 'Hà Nội', '09753268442', 'ngohuong@gmail.com', 12),
(11, 'GV11', 'Hà Nam Hải', 'Nam', '15/09/1982', 'Hà Nội', '0243698585', 'hahai@gmail.com', 13),
(12, 'GV12', 'Mai Văn Tiến', 'Nam', '22/05/1989', 'Hà Nam', '0258963698', 'maitien@gmail.com', 14),
(13, 'GV13', 'Bùi Quang Thưởng', 'Nam', '10/09/1982', 'Hà Nội', '0321587478', 'buithuong@gmail.com', 15),
(14, 'GV14', 'Bá Văn Hiển', 'Nam', '11/11/1983', 'Hà Nội', '0357841265', 'bahien@gmail.com', 16),
(15, 'GV15', 'Hà Mạnh Đào', 'Nam', '02/05/1977', 'Hà Nội', '0321596857', 'hamanhdao@gmail.com', 17),
(16, 'GV16', 'Dương Văn Nam', 'Nam', '15/09/1979', 'Hà Nội', '0321562486', 'duongnam@gmail.com', 18),
(17, 'GV17', 'Nguyễn Phương Vân', 'Nữ', '25/05/1980', 'Hà Nội', '0369852147', 'nguyenpvan@gmail.com', 19),
(18, 'GV18', 'Vũ Ngọc Hà', 'Nữ', '18/10/1982', 'Hà Nội', '0247852369', 'vuha@gmail.com', 20),
(19, 'GV19', 'Trần Thị Linh', 'Nam', '14/05/1982', 'Hà Nội', '0258741963', 'tranlinhhn@gmail.com', 21),
(20, 'GV20', 'Dương Văn Phong', 'Nữ', '09/12/1972', 'Hà Nội', '0368557098', 'dvphong.hn@gmail.com', 22);

----------------------------------------------------------------
CREATE TABLE tour (
  tourID int(11) NOT NULL,
  code varchar(100) NOT NULL,
  name text NOT NULL,
  description text NOT NULL,
  startDate datetime NOT NULL,
  presentator varchar(100) NOT NULL,
  availables int(11) NOT NULL,
  companyID int(11) DEFAULT NULL,
  teacherID int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO tour (tourID, code, name, description, startDate, presentator, availables, companyID, teacherID) VALUES
(1, 'T2024IT001', 'Chương trình trải nghiệm thực tế tại Doanh nghiệp Công ty Nexle Corporation cho sinh viên các khóa K16, K17 sắp tham gia thực tập doanh nghiệp', 'Chuyến tham quan là cơ hội để sinh viên tìm hiểu về các chương trình thực tập và cơ hội việc làm tại công ty, giúp SV định hướng nghề nghiệp trong tương lai.', '2024-08-07 13:44:34', 'Trần Đức Thịnh- Trưởng phòng nhân sự', 150, 6, 18),
(2, 'T2024IT002', 'Trường HaUI tổ chức tham quan doanh nghiệp cho đối tượng sinh viên K16, K17 tại công ty TMA Solutions', 'Chuyến tham quan sẽ có các buổi hội thảo và thuyết trình về các chủ đề nóng hổi trong ngành công nghệ thông tin, giúp sinh viên cập nhật kiến thức mới nhất và mở rộng tầm nhìn.', '2024-12-17 07:00:00', 'Nguyễn Công Sơn - Trưởng phòng nhân sự', 80, 4, 17),
(3, 'T2024IT003', 'KMS Technology đồng hành cùng khoa Công nghệ thông tin trường Đại học Công Nghiệp Hà Nội tổ chức cho sinh viên các khóa K16, K17 tham quan công ty.', 'Sinh viên sẽ có cơ hội tìm hiểu về văn hóa công ty, các giá trị cốt lõi và cách công ty xây dựng môi trường làm việc tích cực và sáng tạo.', '2024-11-25 13:30:00', 'Dương Văn Phong - Trưởng phòng nhân sự', 150, 7, 18),
(4, 'T2024IT004', 'Chương trình trải nghiệm thực tế tại Doanh nghiệp Công ty FPT Software cho sinh viên các khóa K16, K17 sắp tham gia thực tập doanh nghiệp', 'Chuyến tham quan sẽ bao gồm các buổi thực hành, nơi sinh viên có thể trực tiếp tham gia vào các dự án nhỏ và học hỏi các kiến thức trong dự án thực tế thực tế.', '2024-05-17 08:00:00', 'Trần Thị Linh - Trưởng phòng nhân sự', 200, 2, 10),
(5, 'T2024IT005', 'Tổ chức trải nghiệm thực tế cho sinh viên sắp tham gia thực tập doanh nghiệp các khóa K16, K17 tại công ty Viettel', 'Sinh viên sẽ có cơ hội trải nghiệm các công nghệ thực tế ảo (VR) và thực tế tăng cường (AR), giúp SV hiểu rõ hơn về ứng dụng của các công nghệ này trong cuộc sống và công việc.', '2024-06-02 14:00:00', 'Nguyễn Văn Hiếu - Trưởng phòng nhân sự', 75, 1, 15),
(6, 'T2024IT006', 'Tổ chức trải nghiệm thực tế cho sinh viên sắp tham gia thực tập doanh nghiệp các khóa K16, K17 tại công ty VCCorp', 'Sinh viên sẽ được tham quan các phòng nghiên cứu và phát triển, nơi các kỹ sư và nhà khoa học đang làm việc để tạo ra những công nghệ tiên tiến nhất.', '2024-06-20 14:00:00', 'Vũ Công Minh - Bộ phận tuyển dụng nhân sự', 30, 3, 7),
(7, 'T2024IT007', 'Trường HaUI tổ chức tham quan doanh nghiệp cho đối tượng sinh viên các khóa K16, K17 sắp tham gia thực tập doanh nghiệp tại công ty VNG Corporation', 'Sinh viên sẽ có cơ hội tham quan các văn phòng làm việc hiện đại, được trang bị đầy đủ các thiết bị công nghệ tiên tiến, giúp SV hiểu rõ hơn về môi trường làm việc trong ngành công nghệ thông tin.', '2024-06-02 13:30:00', 'Nguyễn Minh Hiếu - Trưởng phòng nhân sự', 75, 5, 15),
(8, 'T2024IT008', 'Trường HaUI tổ chức tham quan doanh nghiệp cho đối tượng sinh viên các khóa K16, K17 sắp tham gia thực tập doanh nghiệp tại công ty NFQ Asia', 'Sinh viên sẽ được giới thiệu về quy trình làm việc chuyên nghiệp, từ việc phát triển phần mềm, quản lý dự án đến kiểm thử và triển khai sản phẩm.', '2024-12-20 14:00:00', 'Vương Thị Thu Huyền - Bộ phận tuyển dụng nhân sự công ty', 30, 15, 7),
(9, 'T2024IT009', 'Tổ chức trải nghiệm thực tế cho Sinh viên sắp tham gia thực tập doanh nghiệp các khóa K16, K17 tại công ty Merkle Vietnam', 'Chuyến tham quan sẽ có các buổi hội thảo và thuyết trình về các chủ đề nóng hổi trong ngành công nghệ thông tin, giúp sinh viên cập nhật kiến thức mới nhất và mở rộng tầm nhìn.', '2024-06-21 13:30:00', 'Nguyễn Trọng Thắng - Trưởng phòng nhân sự', 25, 19, 7),
(10, 'T2024IT010', 'Tổ chức trải nghiệm thực tế cho Sinh viên sắp tham gia thực tập doanh nghiệp các khóa K16, K17 tại công ty VinTech', 'Sinh viên sẽ được tham quan các dự án và sản phẩm công nghệ đang được phát triển tại công ty, từ đó hiểu rõ hơn về quy trình và công nghệ được sử dụng.', '2024-06-30 08:30:00', 'Nguyễn Thị Minh - Trưởng phòng nhân sự', 50, 8, 5),
(11, 'T2024IT011', 'Chương trình trải nghiệm thực tế doanh nghiệp tại Công ty VSEC cho sinh viên các khóa K16, K17 sắp tham gia thực tập doanh nghiệp', 'Chuyến tham quan sẽ bao gồm các hoạt động nhóm, giúp sinh viên rèn luyện kỹ năng làm việc nhóm và giao tiếp hiệu quả.', '2024-06-29 14:00:00', 'Trần Văn Hiếu - Bộ phận nhân sự', 40, 9, 17),
(12, 'T2024IT012', 'Chương trình trải nghiệm thực tế doanh nghiệp tại Công ty NIFTIT cho sinh viên các khóa K16, K17 sắp tham gia thực tập doanh nghiệp', 'Sinh viên sẽ có cơ hội tìm hiểu về văn hóa công ty, các giá trị cốt lõi và cách công ty xây dựng môi trường làm việc tích cực và sáng tạo.', '2024-12-01 08:00:00', 'Nguyễn Văn Cường - Trưởng phòng nhân sự', 70, 13, 4),
(13, 'T2024IT013', 'Tổ chức trải nghiệm thực tế cho Sinh viên tại công ty CyStack Security', 'Sinh viên sẽ được giới thiệu về các hệ thống bảo mật và cách công ty bảo vệ dữ liệu của mình trước các mối đe dọa an ninh mạng.', '2024-06-07 08:30:00', 'Thư ký Trần Hưng công ty VNG Corporation ', 50, 14, 6),
(14, 'T2024IT014', 'Tổ chức trải nghiệm thực tế kết hơp cùng trường Đại học Công Nghiệp Hà Nội tổ chức tham quan công ty tại VNext Software', 'Chuyến tham quan sẽ bao gồm các buổi thực hành, nơi sinh viên có thể trực tiếp tham gia vào các dự án nhỏ và áp dụng kiến thức đã học vào thực tế.', '2024-12-05 08:30:00', 'Nguyễn Văn Nam - Bộ phận tuyển dụng nhân sự', 100, 20, 3),
(15, 'T2024IT015', 'Trường HaUI tổ chức tham quan doanh nghiệp cho đối tượng sinh viên K16, K17 tại công ty Kyanon Digital', 'Chuyến tham quan sẽ bao gồm các hoạt động nhóm, giúp sinh viên rèn luyện kỹ năng làm việc nhóm và giao tiếp hiệu quả.', '2024-06-29 07:30:00', 'Phan Thị Cẩm Ly - Trưởng phòng nhân sự', 35, 10, 3),
(16, 'T2024IT016', 'Trường HaUI tổ chức tham quan doanh nghiệp cho đối tượng sinh viên K16, K17 tại công ty VinBigdata', 'Sinh viên sẽ có cơ hội tham quan các văn phòng làm việc hiện đại, được trang bị đầy đủ các thiết bị công nghệ tiên tiến, giúp họ hiểu rõ hơn về môi trường làm việc trong ngành công nghệ thông tin.', '2024-11-19 08:00:00', 'Đỗ Phương Thảo - Trưởng phòng nhân sự', 80, 16, 15),
(17, 'T2024IT017', 'Tổ chức trải nghiệm thực tế cho Sinh viên sắp tham gia thực tập doanh nghiệp các khóa K16, K17 tại công ty SotaTek', 'Sinh viên sẽ được giới thiệu về quy trình làm việc chuyên nghiệp, từ việc phát triển phần mềm, quản lý dự án đến kiểm thử và triển khai sản phẩm.', '2024-07-06 08:00:00', 'Nguyễn Thu Vân - Trưởng phòng nhân sự', 74, 11, 14),
(18, 'T2024IT018', 'Tổ chức trải nghiệm thực tế cho Sinh viên sắp tham gia thực tập doanh nghiệp các khóa K16, K17 tại công ty Beetsoft', 'Sinh viên sẽ được tham quan các dự án và sản phẩm công nghệ đang được phát triển tại công ty, từ đó hiểu rõ hơn về quy trình và công nghệ được sử dụng.', '2024-09-14 08:30:00', 'Vũ Công Hoàng - Trưởng phòng nhân sự', 30, 12, 6),
(19, 'T2024IT019', 'Tổ chức trải nghiệm thực tế cho Sinh viên sắp tham gia thực tập doanh nghiệp các khóa K16, K17 tại công ty Nissho Vietnam', 'Chuyến tham quan cũng là cơ hội để sinh viên tìm hiểu về các chương trình thực tập và cơ hội việc làm tại công ty, giúp họ định hướng nghề nghiệp trong tương lai.', '2024-12-03 08:30:00', 'Đỗ Minh Tuấn - Trưởng phòng nhân sự', 60, 18, 11),
(20, 'T2024IT020', 'Tổ chức trải nghiệm thực tế cho Sinh viên sắp tham gia thực tập doanh nghiệp các khóa K16, K17 tại công ty TOG recruitment', 'Sinh viên sẽ có cơ hội trải nghiệm các công nghệ thực tế ảo (VR) và thực tế tăng cường (AR), giúp họ hiểu rõ hơn về ứng dụng của các công nghệ này trong cuộc sống và công việc.', '2024-05-26 13:30:00', 'Trương Minh Hiếu - Trưởng phòng nhân sự', 25, 17, 19);


---------------------------------------------------
CREATE TABLE student_tour (
  studentID int(11) NOT NULL,
  tourID int(11) NOT NULL,
  rate int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO student_tour (studentID, tourID, rate) VALUES
(1, 1, 0),
(1, 2, 0),
(1, 3, 0),
(1, 4, 0),
(1, 5, 0),
(2, 6, 85),
(2, 7, 0),
(2, 10, 0),
(2, 14, 0),
(2, 15, 0),
(2, 16, 0),
(3, 1, 0),
(3, 12, 0),
(3, 16, 0),
(4, 2, 0),
(4, 3, 0),
(4, 4, 0),
(4, 6, 65),
(4, 10, 0),
(4, 15, 0),
(5, 16, 0),
(5, 17, 0),
(6, 1, 0),
(6, 2, 0),
(6, 20, 0),
(7, 3, 0),
(7, 4, 0),
(7, 6, 95),
(7, 10, 0),
(8, 2, 0),
(8, 4, 0),
(8, 10, 0),
(8, 12, 0),
(8, 13, 0),
(8, 18, 0),
(8, 19, 0),
(8, 20, 0),

(9, 1, 0),
(9, 2, 0),
(9, 3, 0),
(9, 4, 0),
(9, 8, 0),
(9, 10, 0),
(9, 15, 0),
(9, 16, 0),
(9, 17, 0),
(9, 20, 0),

(10, 1, 0),
(10, 2, 0),
(10, 3, 0),
(10, 4, 0),
(10, 8, 0),
(10, 10, 0),
(10, 15, 0),
(10, 16, 0),
(10, 17, 0),
(10, 20, 0),

(11, 1, 0),
(11, 2, 0),
(11, 3, 0),
(11, 4, 0),
(11, 8, 0),
(11, 9, 0),
(11, 11, 0),
(11, 14, 0),
(11, 15, 0),
(11, 16, 0),
(11, 17, 0),
(11, 19, 0),
(11, 20, 0),

(12, 1, 0),
(12, 2, 0),
(12, 3, 0),
(12, 5, 0),
(12, 8, 0),
(12, 9, 0),
(12, 11, 0),
(12, 14, 0),
(12, 15, 0),
(12, 16, 0),
(12, 17, 0),
(12, 19, 0),
(12, 20, 0),
(13, 1, 0),
(13, 2, 0),
(13, 3, 0),
(13, 5, 0),
(13, 8, 0),
(13, 9, 0),
(13, 11, 0),
(13, 14, 0),
(13, 15, 0),
(13, 16, 0),
(13, 19, 0),
(13, 20, 0),
(14, 1, 0),
(14, 2, 0),
(14, 3, 0),
(14, 5, 0),
(14, 8, 0),
(14, 9, 0),
(14, 11, 0),
(14, 14, 0),
(14, 15, 0),
(14, 16, 0),
(14, 18, 0),
(14, 20, 0),
(15, 1, 0),
(15, 2, 0),
(15, 3, 0),
(15, 5, 0),
(15, 8, 0),
(15, 9, 0),
(15, 11, 0),
(15, 14, 0),
(15, 15, 0),
(15, 16, 0),
(15, 18, 0),
(15, 20, 0),
(16, 1, 0),
(16, 2, 0),
(16, 3, 0),
(16, 5, 0),
(16, 8, 0),
(16, 9, 0),
(16, 11, 0),
(16, 12, 0),
(16, 13, 0),
(16, 15, 0),
(16, 16, 0),
(16, 18, 0),
(16, 20, 0),
(17, 1, 0),
(17, 2, 0),
(17, 3, 0),
(17, 5, 0),
(17, 9, 0),
(17, 12, 0),
(17, 13, 0),
(17, 15, 0),
(17, 16, 0),
(17, 18, 0),
(17, 20, 0),
(18, 1, 0),
(18, 2, 0),
(18, 3, 0),
(18, 5, 0),
(18, 9, 0),
(18, 12, 0),
(18, 13, 0),
(18, 15, 0),
(18, 16, 0),
(18, 18, 0),
(18, 20, 0),
(19, 1, 0),
(19, 2, 0),
(19, 3, 0),
(19, 5, 0),
(19, 9, 0),
(19, 12, 0),
(19, 13, 0),
(19, 15, 0),
(19, 16, 0),
(19, 18, 0),
(19, 20, 0),
(20, 1, 0),
(20, 2, 0),
(20, 3, 0),
(20, 5, 0),
(20, 9, 0),
(20, 12, 0),
(20, 13, 0),
(20, 15, 0),
(20, 16, 0),
(20, 18, 0),
(20, 20, 0);


ALTER TABLE account
  ADD PRIMARY KEY (accountID);

--
-- Chỉ mục cho bảng class
--
ALTER TABLE class
  ADD PRIMARY KEY (classID);

--
-- Chỉ mục cho bảng company
--
ALTER TABLE company
  ADD PRIMARY KEY (companyID);

--
-- Chỉ mục cho bảng student
--
ALTER TABLE student
  ADD PRIMARY KEY (studentID),
  ADD KEY classID (classID),
  ADD KEY accountID (accountID);

--
-- Chỉ mục cho bảng student_tour
--
ALTER TABLE student_tour
  ADD PRIMARY KEY (studentID,tourID),
  ADD KEY tourID (tourID);

--
-- Chỉ mục cho bảng teacher
--
ALTER TABLE teacher
  ADD PRIMARY KEY (teacherID),
  ADD KEY accountID (accountID);

--
-- Chỉ mục cho bảng tour
--
ALTER TABLE tour
  ADD PRIMARY KEY (tourID),
  ADD KEY teacherID (teacherID),
  ADD KEY companyID (companyID);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng account
--
ALTER TABLE account
  MODIFY accountID int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng class
--
ALTER TABLE class
  MODIFY classID int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng company
--
ALTER TABLE company
  MODIFY companyID int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng student
--
ALTER TABLE student
  MODIFY studentID int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng teacher
--
ALTER TABLE teacher
  MODIFY teacherID int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng tour
--
ALTER TABLE tour
  MODIFY tourID int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng student
--
ALTER TABLE student
  ADD CONSTRAINT student_ibfk_1 FOREIGN KEY (classID) REFERENCES class (classID) ON DELETE CASCADE,
  ADD CONSTRAINT student_ibfk_2 FOREIGN KEY (accountID) REFERENCES account (accountID) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng student_tour
--
ALTER TABLE student_tour
  ADD CONSTRAINT student_tour_ibfk_1 FOREIGN KEY (studentID) REFERENCES student (studentID) ON DELETE CASCADE,
  ADD CONSTRAINT student_tour_ibfk_2 FOREIGN KEY (tourID) REFERENCES tour (tourID) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng teacher
--
ALTER TABLE teacher
  ADD CONSTRAINT teacher_ibfk_1 FOREIGN KEY (accountID) REFERENCES account (accountID) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng tour
--
ALTER TABLE tour
  ADD CONSTRAINT tour_ibfk_1 FOREIGN KEY (teacherID) REFERENCES teacher (teacherID) ON DELETE CASCADE,
  ADD CONSTRAINT tour_ibfk_2 FOREIGN KEY (companyID) REFERENCES company (companyID) ON DELETE CASCADE;

