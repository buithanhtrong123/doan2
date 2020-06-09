-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sqlserver`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `ID` int(11) NOT NULL,
  `User` varchar(50) NOT NULL,
  `Pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`ID`, `User`, `Pass`) VALUES
(1, 'thanhtrong', '123456');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dmloai`
--

CREATE TABLE `tbl_dmloai` (
  `IDLoai` int(11) NOT NULL,
  `TenLoai` varchar(100) NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_dmloai`
--

INSERT INTO `tbl_dmloai` (`IDLoai`, `TenLoai`, `TrangThai`) VALUES
(1, 'Truyện thiếu nhi', 0),
(2, 'Truyện hành động', 1),
(3, 'Truyện khám phá', 1),
(4, 'Truyện ma', 1),
(5, 'Truyện cười', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dmsp`
--

CREATE TABLE `tbl_dmsp` (
  `ID` int(11) NOT NULL,
  `MaSP` varchar(50) NOT NULL,
  `TenSP` varchar(100) NOT NULL,
  `DienGiai` longtext NOT NULL,
  `DonGia` decimal(10,0) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `HinhAnh` varchar(100) NOT NULL,
  `IDLoai` int(11) NOT NULL,
  `IDHang` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `SoLuongBan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_dmsp`
--

INSERT INTO `tbl_dmsp` (`ID`, `MaSP`, `TenSP`, `DienGiai`, `DonGia`, `SoLuong`, `HinhAnh`, `IDLoai`, `IDHang`, `TrangThai`, `SoLuongBan`) VALUES

	(1,'SP001','Truyện thiếu nhi','Câu chuyện về chú thỏ bị cáo cướp nhà.

Ngày xửa ngày xưa, trong khu rừng nọ, có một con Cáo và một con Thỏ. Cáo có một ngôi nhà bằng băng, còn Thỏ có một ngôi nhà bằng gỗ. Mùa xuân đến, nhà Cáo tan ra thành nước, Cáo xin sang nhà Thỏ sưởi nhờ rồi đuổi luôn Thỏ ra ngoài.Thỏ vừa đi vừa khóc. Một lát sau Thỏ gặp bầy Chó.

Bầy Chó hỏi Thỏ:

- Tại sao Thỏ khóc?

- Làm sao mà tôi không khóc được. Tôi có một ngôi nhà bằng gỗ, còn Cáo, Cáo có một ngôi nhà bằng băng. Mùa xuân đến nhà Cáo tan ra thành nước, Cáo xin sang nhà tôi sưởi nhờ rồi đuổi luôn tôi ra khỏi nhà.

- Thỏ ơi, đừng khóc nữa!

Bầy Chó an ủi Thỏ.

- Chúng tôi sẽ đuổi được Cáo đi.

Bầy Chó cùng Thỏ đi về nhà Thỏ. Bầy Chó nói:

- Gâu! Gâu! Gâu! Cáo cút mau!

Cáo ngồi trên bệ lò sưởi nói vọng ra:

- Ta mà nhảy ra thì chúng mày tan xác!

Bầy Chó sợ quá chạy mất.

Thỏ lại ngồi dưới bụi cây và khóc. Một con Gấu đi qua, Gấu hỏi:

- Tại sao Thỏ khóc?

- Làm sao mà tôi không khóc được. Tôi có một ngôi nhà bằng gỗ, còn Cáo, Cáo có một ngôi nhà bằng băng. Mùa xuân đến nhà Cáo tan ra thành nước, Cáo xin sang nhà tôi sưởi nhờ rồi đuổi luôn tôi ra khỏi nhà.

- Thỏ ơi! Thỏ đừng khóc nữa! Ta sẽ đuổi được Cáo đi!

- Không, Bác Gấu ơi, Bác không đuổi được đâu. Chó đuổi mãi không được thì bác đuổi làm sao được!

- Đuổi được chứ!

Gấu nói giọng cương quyết. Gấu và Thỏ về đến nhà Thỏ, Gấu gầm lên:

- Cáo, cút ngay!

Cáo ngồi trên bệ lò sưởi nói vọng ra:..........','60000000', 10, './images/Sonic 2019.jpg', 1, 1, 1, 0),


(2,'SP002','Solo leveling','Xa xưa thì  những Cánh Cổng kết nối thế giới thật với thế giới ma thú luôn luôn đóng lại vậy mà vào mười năm trước đã được mở ra. Thợ săn là những con người có được siêu năng lực chiến đấu với các ma thú khi cảnh cống kết nối được mở ra.

Tuy nhiên, những người thợ săn đó không phải ai cũng mạnh.

Tên tôi là Sung Jin-Woo, Thợ Săn hạng E. Tôi phải mạo hiểm mạng sống ngay trong cả những hầm ngục yếu nhất, và được mệnh danh là “Thợ Săn yếu nhất”. Không có lấy một kĩ năng nào, tôi chỉ có thể kiếm chút tiền còm từ việc chiến đấu với ma thú ở những hầm ngục cấp thấp... ít nhất là cho đến khi tôi tìm thấy một hầm ngục bí mật với độ khó cao kỳ quặc!

Vào phút cuối cùng, lúc mà tôi đã sẵn sàng để đón nhận cái chết, tôi nhận được một sức mạnh lạ lùng, một bảng nhiệm vụ mà chỉ mỗi tôi có thể thấy, một hệ thống tăng cấp bí mật mà chỉ mình tôi biết! Nếu tôi rèn luyện theo như các nhiệm vụ và săn ma thú, tôi sẽ được tăng cấp.
', '450000', 10, './images/truyenhanhdong.jpg', 2, 1, 1, 0),
(3, 'SP003', 'Tích chu', 'Ngày xưa, có một bạn tên là Tích Chu. Bố mẹ Tích Chu mất sớm, Tích Chu ở với bà.

Hàng ngày bà phải làm việc quần quật kiếm tiền nuôi Tích Chu, có thức gì ngon bà cũng dành cho Tích Chu. Ban đêm, khi Tích Chu ngủ thì bà thức quạt. Thấy bà thương Tích Chu, có người bảo:

– Bà ơi! Lòng bà thương Tích Chu cao hơn trời, rộng hơn biển. Lớn lên, Tích Chu sẽ không khi nào quên ơn bà.

Thế nhưng lớn lên, Tích Chu lại chẳng thương bà. Bà thì suốt ngày làm việc vất vả, còn Tích Chu suốt ngày rong chơi. Vì làm việc vất vả, ăn uống lại kham khổ nên bà bị ốm. Bà lên cơn sốt nhưng chẳng ai trông nom. Tích Chu mãi rong chơi với bạn bè, chẳng nghĩ gì đến bà đang ốm. Một buổi trưa, trời nóng nực, cơn sốt lên cao, bà khát nước quá liền gọi:

– Tích Chu ơi, cho bà ngụm nước. Bà khát khô cổ rồi!

Bà gọi một lần, hai lần…rồi ba lần nhưng vẫn không thấy Tích Chu đáp lại. Mãi sau Tích Chu thấy đói mới chạy về nhà kiếm cái ăn. Tích Chu ngạc nhiên hết sức thấy bà biến thành chim và vỗ cánh bay lên trời. Tích Chu hoảng quá kêu lên:

– Bà ơi! Bà đi đâu? Bà ở lại với cháu. Cháu sẽ mang nước cho bà, bà ơi!', '8000', 10, './images/truyenthieunhi1.jpg', 1, 1, 1, 0),

(4, 'SP004', 'Mẹ ơi con chưa chết', 'Cụ Cẩm khóc hu hu. Cố gượng cầm bát cháo đưa lên miệng để húp ít nước. Dẫu vậy, dường như bát cháo tanh quá, cụ không ăn nổi. Cụ quay mặt đi, lại đặt bát cháo xuống bàn nấc lên từng tiếng. Nhưng cụ khóc cứ nhỏ dần, vì chừng mụ Diễm vẫn còn đang trợn mắt nhìn cụ. Cụ lại liếc về phía bát cháo. Bát cháo ấy tanh tưởi còn mùi hôi của thịt lợn đã hơi thiu. Chắc mụ Diễm mua phải thịt ôi, không ăn được nên nấu cháo đem cho cụ ăn.

Cụ nghĩ ngợi một hồi thế nào rồi lại nôn ra nên đất. Mụ Diễm gầm lên:

- Trời ơi là trời! Đã không ăn được lại còn nôn ra, khổ cái thân tôi không. Sao mà bà ngu thế hả bà, ngu như lợn ấy!

Rồi mụ sấn sổ lồng lộn lao tới túm đầu cụ Cẩm, dùng tay bóp miệng cụ và đổ bát cháo đó vào miệng cụ. Vừa đổ mụ vừa quát:

- Đây ăn đi! Ăn nhanh không tôi giết bà…

Bát cháo chảy đến đâu, cái mùi tanh thiu lại xộc lên đến đấy khiến cụ Cẩm giãy đành đạch. Nước cháo vung ra bắn toe toét vào tay mụ Diễm. Mụ càng tức giận, đem cái thìa sắt chọc chọc vào miệng cụ Cẩm hòng ép cụ ăn cho nhanh. Đổ xong bát cháo, cụ Cẩm đã ngất ra nên không còn nôn nữa.', '47000', 10, './images/truyenma.jpg', 4, 1, 1, 0),
(5, 'SP005', 'Kiếm nghịch thương khung', 'Kỳ Hoàng Thảo vẫn còn hấp thu nguyên khí thiên địa, Huyền Thiên lẳng lặng chờ đợi đến khi Kỳ Hoàng Thảo thành thục. Càng hấp thu nhiều nguyên khí thiên địa thì hiệu quả càng lớn, tỉ lệ tăng tiến cảnh giới khi phục dụng cũng tăng lên nhiều hơn.

Ước chừng qua 10 phút, tất cả nguyên khí thiên địa đều bị Kỳ Hoàng Thảo hấp thu, lúc này cả thân cây Kỳ Hoàng Thảo đã có chút ánh sáng long lanh, tựa hồ là là hấp thu nguyên khí thiên địa mà thành.

Bịch bịch bịch bịch bịch...

Lúc này, một hồi tiếng bước chân vang lên ở ngoài động, Huyền Thiên cũng không bị cảm giác hưng phấn làm đầu óc choáng vàng, thời thời khắc khắc đều đề cao cảnh giác nên hắn liền nghe được tiếng bước chân ngoài động.

- Không tốt!

Huyền Thiên thầm kêu không ổn trong nội tâm. Những võ giả ở gần đây có thể là bị nguyên khí thiên địa bạo động hấp dẫn tới.

Giá trị cây Kỳ Hoàng Thảo này vô cùng phi phàm, Võ Giả Tiên Thiên trở xuống đều liều mạng cướp đoạt.

Huyền Thiên lập tức hái cây Kỳ Hoàng Thảo này, cắt một góc áo để gói lại, bỏ vào ngực, tránh bị người khác phát hiện.', '55000', 10, './images/truyenhanhdong1.jpg', 2, 2, 1, 0),
(6, 'SP006', 'Truyên cười', 'Một anh chàng hoạ sĩ nhìn thấy một cô gái đẹp đến nỗi làm anh ta đâm ra si mê. Tất cả ý nghĩ của anh chỉ xoay quanh cái đích làm thế nào để chinh phục người đẹp và được làm tình với cô gái.
Anh ta nghĩ, nghĩ mãi cách tiếp cận và chinh phục người đẹp rồi cuối cùng quyết định:
– Em có biết không – anh ta nói, – anh là một họa sĩ. Em đồng ý làm mẫu để anh vẽ chứ?
– Dạ được. Em đồng ý với giá 20 ngàn rúp.
Chàng họa sĩ vét túi đủ số tiền và bắt đầu vẽ cô gái.
Buổi thứ hai anh nói với cô gái:
– Xin lỗi, anh vẽ em để ngực trần nhé.
– Được ạ, nhưng giá là 30 ngàn rúp.
Anh chàng vay mượn bạn bè và bắt đầu vẽ cô gái hở ngực.
Đến buổi tiếp theo, anh chàng gạ:
– Em nghe này! anh chưa nói hết ý, thực sự là anh muốn vẽ em khỏa thân hoàn toàn cơ.
– Vẽ cởi truồng á? Vậy thì 60 ngàn rúp.
– Anh họa sĩ bán bàn ghế đồ đạc trong nhà và cầm cố ngân hàng. Đến buổi vẽ cô gái ở tư thể hoàn toàn trần truồng, anh chàng không cầm lòng được nữa, la lên:
– Em hiểu cho, anh quá thèm muốn được chiếm hữu em. Anh hiểu… tóm lại, em đòi bao nhiêu, đừng làm khổ…!”
Ý anh muốn nói là ngủ qua đêm chứ gì? Cô gái ngắt lời, – Vậy thì là 5 ngàn rúp, cũng giống như với người khác thôi ạ.', '7500', 10, './images/truyencuoi.jpg', 5, 2, 1, 0),
(7, 'SP007', 'Truyện cười', 'Bức ảnh thứ 1 vẽ một cái bánh mì đen thui.

Bức ảnh thứ 2 vẽ cảnh một trận chiến với một đoàn quân bị tiêu diệt hoàn toàn, những chiến sĩ chết như ngả rạ.

Bức ảnh thứ 3 vẽ một người phụ nữ đang mang bầu.

Vị giáo sư nói:

– Ai mà có thể đặt 1 tên chung cho cả 3 bức tranh sẽ được một phần thưởng.

Và phần thưởng thuộc về một sinh viên với câu trả lời ngắn nhất và hợp lý nhất: “Rút không kịp”', '69000', 10, './images/truyencuoi1.jpg', 5, 5, 1, 0),
(8, 'SP008', 'Sự tích con muỗi', 'Có hai vợ chồng nhà nọ yêu nhau rất mực. Ngày mới lấy nhau, họ đã từng ăn thề hẹn không bỏ nhau. Nếu không may một trong hai người chết đi thì người kia sẽ chết theo để xuống âm ty cho có bạn.

Sau đó không bao lâu, người vợ trẻ tự nhiên bị chết mang đi một cách đột ngột. Không ai có thẻ tả được hết tình cảnh đau thương của người chồng. Anh chàng đã mấy lần toan tự tử, nhưng bị người nhà ngăn trở và canh phòng ráo riết. Hôm sắp sửa cất đám bỗng có một đạo sĩ đến bày cho chàng phép cải tử hoàn sinh mà theo lời ông ta, đã từng có nhiều người dùng rất ứng nghiệm. Phép của ông ta chẳng có gì khó, chỉ cần người sống gan dạ và kiên trì một chút là được. Nghĩa là người sống mỗi ngày ba lần ôm ấp và truyền hơi ấm của mình vào cho tử thi. Làm luôn như thế không nghỉ ngày nào thì chỉ trong khoảng ba tháng mười ngày là người chết sẽ sống lại.

Người chồng cảm ơn đạo sĩ và làm đúng như lời dặn, hi vọng đưa người yêu trở lại cõi thế. Ngày ngày chàng ôm ấp vợ, truyền sức nóng, hơi thở của mình vào cái xác đã lạnh toát.

Nhưng sau đó ba ngày, mùi thối của tử thi bay ra khắp xóm làm cho mọi người không chịu được. Họ kéo nhau đến nhà bắt chàng phải chôn lập tức.

Bất đắc dĩ, người chông nhờ xóm giềng chặt nứa làm giúp một cái bè để mình đưa xác vợ đi một nơi khác. Nhiều người vui lòng giúp anh chàng trong việc này. Chỉ trong nửa ngày, hắn đã chở xác người yêu đi biệt.

Chiếc bè theo dòng nước trôi mãi. Người chồng vẫn ngày ngày ấp ủ vợ không thôi. Cái tử thi đó trông vẫn như người nằm ngủ. Lòng anh chàng tràn trề hy vọng. Đến một nơi kia, hắn cắm bè lại kề một bãi cỏ rộng, lên bộ nấu ăn.', '79000', 10, './images/truyenthieunhi2.jpg', 1, 1, 1, 0),
(9, 'SP009', 'Truyện khám phá', 'Khám phá và phát minh công nghệ', '79000', 10, './images/truyenkhampha.jpg', 3, 4, 1, 0),
(10, 'SP010', 'Truyện trạng cười', 'truyện trạng cười Việt Nam', '7900', 10, './images/truyencuoi2.jpg', 5, 3, 1, 0),
(11, 'SP011', 'Truyện ma 12 cung hoàng đạo', 'Truyện ma 12 cung hoàng đạo', '50000', 10, './images/truyenma1.jpg', 4, 5, 1, 0),
(12, 'SP012', 'Phong quỷ truyền thuyết', 'Thượng Quan Tú gặp may đúng dịp được Thượng Cổ Cấm Võ tùy cơ biến, cũng trong lúc vô tình phát hiện gia truyền Cấm Võ linh phách nuốt chửng chính xác phương thức tu luyện, từ đây thay đổi mình một đời. hắn thiên biến vạn hóa, hình dạng như quỷ; hắn tới vô ảnh đi vô tung, bộ dạng như quỷ; hắn tâm tư giảo hoạt nhiều lần Vô Thường, tính tình như quỷ; quyển sách giảng giải một vị thanh niên bình thường làm sao từ bình thường hướng đi không tầm thường, từ thung lũng leo lên đỉnh cao nhiệt huyết tranh bá lịch trình.

Nhân vật chính vốn là kẻ vô tích sự thanh niên, nhưng thông qua liên tiếp cơ duyên, kỳ ngộ, từng bước một trưởng thành, mạnh mẽ, cuối cùng rốt cục leo lên quyền lợi tối Cao Phong.

Trong lúc trải qua quốc cùng Quốc Chi minh tranh ám đấu, quân đoàn cùng quân đoàn đánh với chém giết, chính trị trong âm mưu tính toán, cùng với cùng Linh Võ cao thủ quyết đấu đỉnh cao.

Thượng Quan Tú thiện biến, không chỉ có ngoại hình thiện biến, tính tình cũng thiện biến, khi thì như Thiên Sứ, khi thì vừa giống như ác ma, vì lẽ đó hắn mới có 'Phong Quỷ' danh hiệu này.', '50000', 10, './images/truyenhanhdong2.jpg', 2, 5, 1, 0),
(13, 'SP013', 'Truyện cô bé bán diêm', 'Cô bé bán diêm', '5000', 10, './images/truyenthieunhi3.jpg', 1, 1, 1, 0),
(14, 'SP014', 'Truyện khám phá', 'Truyện khám phá về thế giới động vật', '45000', 10, './images/truyenkhampha1.jpg', 3, 4, 1, 0),
(15, 'SP015', 'Truyện ma', 'Con bé bị câm từ nhỏ và bị ngược đãi, bỗng một ngày nó cất tiếng nói, những điều nó nói ra thật bí ẩn và thành sự thật ghê rợn...

Trong hàng trăm hàng ngàn truyện ma mà người ta vẫn thường kể cho nhau nghe, chưa chắc đã có một chuyện thật, phần lớn là do trí tưởng tượng do cảm giác sợ hãi khiến người ta vội vàng kết luận là mình đã gặp ma. Các nhà khoa học đều đồng ý với nhau rằng ma hay nói cách khác là hồn của người đã khuất, có thể lúc nào cũng hiện diện trong không gian bên cạnh chúng ta. Nhưng không phải ai cũng gặp được, người dễ gặp ma thường là người có giác quan thứ 6, có thần giao cách cảm mới có thể tiếp xúc với cõi âm, tức là thế giới bên kia thế giới của những kẻ không còn trên dương gian nữa...

Thưa quý thính giả mới đây 1 đồng hương từ Việt Nam qua thăm thân nhân ở Mỹ, tình cờ gặp tôi sau buổi văn nghệ vì đã có nhiều dịp nghe băng đọc truyện của tôi cho nên bà tha thiết yêu cầu tôi dành cho bà chút ít thì giờ để kể câu chuyện xảy ra bên nhà hàng xóm của bà mà chính bà chứng kiến. Tôi xin viết lại câu chuyện ấy và đặt tên là "Bóng Ma Bên Cửa"', '35000', 10, './images/truyenma2.jpg', 4, 4, 1, 0),
(16, 'SP016', 'Truyện khám phá', 'Truyện khám phá vũ trụ', '5000', 10, './images/truyenkhampha2.jpg', 3, 4, 1, 0),
(17, 'SP017', 'Truyện khám phá', 'truyện khám phá cơ thể con người', '40000', 10, './images/truyenkhampha3.jpg', 3, 4, 1, 0),


(20, 'SP020', 'Thôn phệ lịnh vực', 'Thấy được Lý Thiên Trạch quanh thân lĩnh vực, kính thông lộ ra chấn kinh thần sắc.

"Cái này ... Đây là Lĩnh Vực Chi Lực! Ngươi sao có thể sáng tạo ra lĩnh vực ?"

Kính thông tức khắc sợ ngây người.

Lý Thiên Trạch quanh thân hắc vụ khu vực, thình lình là Lĩnh Vực Chi Lực!

Nhưng là Lĩnh Vực Chi Lực, rõ ràng là tấn thăng đến cực cảnh sau, mới có thể nắm giữ chí cường lực lượng.

Mà Lý Thiên Trạch liền Thiên Hoàng cảnh tu vi đều không có, tại sao có thể sử dụng Lĩnh Vực Chi Lực đây ?

"Không sai, cái này chính là ta lĩnh vực - - thôn phệ lĩnh vực!"

Lý Thiên Trạch một mặt bình tĩnh, thôn phệ to lớn nguyên lực trường thương, mà hắn lại không có chút nào tổn hại.

Thôn phệ thần mạch Nhị Đoạn thức tỉnh, không những nhượng hắn thực lực tăng nhiều, còn nhượng hắn lấy được Lĩnh Vực Chi Lực.

Thái Hư Thanh Lục tu luyện các loại (chờ) cấp, theo thứ tự là địa chi ngũ cảnh - - Địa Nguyên Cảnh, u cảnh, độn cảnh, Địa Tôn cảnh, Địa Hoàng cảnh.

Thiên chi ngũ cảnh - - Thiên Nguyên Cảnh, Thiên U cảnh, thiên độn cảnh, thiên Tôn cảnh, Thiên Hoàng cảnh.

Mà ở thiên chi ngũ cảnh trên, còn có cường hoành vô cùng cực kỳ tam cảnh - - Cực Đế cảnh, Cực Niệm Cảnh, cực kỳ hằng cảnh!

Cực kỳ tam cảnh cùng thiên chi ngũ cảnh, có thể nói là trời cùng đất chênh lệch, rất khác nhiều liền là Lĩnh Vực Chi Lực.

Tấn thăng đến cực kỳ tam cảnh sau, sẽ lấy được chuyên môn Lĩnh Vực Chi Lực.

Mà thôn phệ thần mạch Nhị Đoạn thức tỉnh, nhượng Lý Thiên Trạch tại thiên chi ngũ cảnh lúc, liền nắm giữ kinh khủng Lĩnh Vực Chi Lực!

Thôn phệ lĩnh vực.

Tên như ý nghĩa, tất cả tiến nhập lĩnh vực sự vật, đều sẽ sa vào là Lý Thiên Trạch "Nuốt vật" !

"Tuyệt không có khả năng! Ngươi một cái Thiên Cảnh nhân tộc, làm sao có thể nắm giữ Lĩnh Vực Chi Lực ?"

Cho dù nguyên lực trường thương bị thôn phệ, kính thông ném là tràn ngập nghi ngờ, lạnh lùng nói: "Thiếu cho ta giả thần giả quỷ! Ngươi nhất định sử cái gì oai môn tà đạo, ngụy trang trở thành lĩnh vực bộ dáng!"

"Nga, đã ngươi không tin, liền tự mình tới thể nghiệm một cái đi!"

Lý Thiên Trạch lộ ra trêu tức tiếu dung.


"Thực sự là cuồng vọng, nhìn ta nghiền nát ngươi xương cốt!"', '42000', 10, './images/truyencuoi4.jpg', 2, 4, 1, 0),



(23,'SP023','truyện cười song ngữ','truyện cười song ngữ nhật việt','120000', 10, './images/R3 2020.jpg', 5, 2, 1, 0),


(25,'SP025','Trọng sinh sau tám vạn năm','Đệ nhất cường giả Tinh Trần Đại Đế chết tại tiểu nhân tay, ngoài ý muốn ngã xuống. Khi tỉnh lại, đã là tám vạn năm vội vã qua, cảnh còn người mất. Năm đó thu dưỡng bốn cái nghĩa tử, sớm đã trở thành đại lục cường giả; đã từng cứu một đầu dã cẩu, càng là trở thành Yêu Giới Chí Tôn... Nhất khỏa liễu thụ, nghe nói hai vạn năm trước đắc đạo thành tinh, hóa thành hình người! Đứa trẻ kia, nghe nói bốn vạn năm trước siêu thoát phàm tục, bước vào Chí Tôn! Nhìn mấy vạn năm trước tiểu bi thương môn từng cái nổi danh khắp thiên hạ, Dương Trần cảm giác áp lê sơn đại! Ps: Đây là một cái có chút trang bức, có chút phong tao cố sự.', '60000', 10, './images/truyenhanhdong5.jpg', 2, 1, 1, 0);
INSERT INTO `tbl_dmsp` (`ID`, `MaSP`, `TenSP`, `DienGiai`, `DonGia`, `SoLuong`, `HinhAnh`, `IDLoai`, `IDHang`, `TrangThai`, `SoLuongBan`) VALUES

(26,'SP026','Truyện cười','Truyện cười mới','20000', 10, './images/truyencuoi5.jpg', 5, 5, 1, 0);


INSERT INTO `tbl_dmsp` (`ID`, `MaSP`, `TenSP`, `DienGiai`, `DonGia`, `SoLuong`, `HinhAnh`, `IDLoai`, `IDHang`, `TrangThai`, `SoLuongBan`) VALUES


(30,'SP030','Thôi phệ tinh không','Bầu trời xanh thẳm như một khối ngọc bích màu xanh lam thật lớn, mặt trời giữa hè như một quả cầu lửa lơ lửng trong khối ngọc bích khổng lồ này. Nhìn vị trí của mặt trời, có lẽ cũng đã quá ngọ chừng ba tiếng.
Tại trường cao trung số 3 khu Nghi An.
Reng reng…
Tiếng chuông vang vọng khắp nơi, nhất thời cả sân trường vang lên những tiếng rào rào. Từ những phòng học trên các dãy lầu, hàng đoàn học sinh nối đuôi nhau tràn ra, tụm năm tụm ba cười nói đi về phía cửa.
- La Phong sư huynh! La Phong sư huynh!
Một giọng nói ồm ồm vang lên.
- A Phong, có người gọi cậu kìa!
Giữa đám học sinh, một thanh niên cùng đi với bạn học, cầm một bộ sách, mặc quần áo thể dục bình thường màu xanh lam, cao khoảng một thước bảy mươi lăm, có vẻ khá là cơ bắp. Lúc này hắn nghi hoặc quay đầu nhìn lại, chỉ thấy người gọi hắn là một nam sinh, cao khoảng một thước chín, lưng hùm vai gấu, cánh tay to lớn kinh người.
- Cậu là ai?
La Phong nghi hoặc nhìn người trước mắt, tỏ vẻ không quen biết.
Hai người, một người cường tráng như một con gấu đen, còn "La Phong sư huynh" thì lại giống như người bình thường.
Còn nói về chiều cao…
Hai người này chênh lệch rất lớn, nhưng nam sinh lưng hùm vai gấu này lại có vẻ hơi thận trọng. Hắn nhìn "La Phong sư huynh" mà hắn sùng bái, thầm nghĩ: "Có lẽ lời đồn là đúng, La Phong sư huynh rất dễ nói chuyện."
- La Phong sư huynh, tôi… tôi có việc muốn nhờ sư huynh giúp đỡ.
Nam sinh cường tráng thấp thỏm nói.
- Chuyện gì?
La Phong cười hỏi.
- Lúc tôi luyện quyền, ra quyền phát kình luôn cảm giác có gì không ổn, không biết sư huynh có thời gian chỉ điểm một chút hay không?
Nam sinh cường tráng này tiếp tục nói:
- Theo như sư phụ của võ quán nói, với khí lực của tôi, theo lý thì một quyền có thể đánh ra lực đạo mạnh hơn 50%. Nhưng tôi ra quyền phát kình luôn không đạt đến mức như vậy.
Nam sinh cường tráng mong đợi nhìn La Phong.
- À, ra thế…
La Phong hơi dừng lại một chút, rồi gật gù.','70000', 10, './images/truyenhanhdong8.jpg', 2, 3, 1, 0),

(31,'SP031','Truyện ma','Truyện ma Cô Hường','25000', 10, './images/truyenma4.jpg', 4, 3, 1, 0),

(32,'SP032','Inuyasha','truyện tranh inuyasha','60000', 10, './images/truyenhanhdong7.jpg', 2, 3, 1, 0),

(33,'SP033','Quản gia đại ma hoàng','Ma Hoàng Trác Nhất Phàm nhân được đến Thượng Cổ Ma Đế truyền thừa, dẫn tới họa sát thân. Sống lại sau khi hắn nhưng lại bởi vì tâm ma quấy phá, không thể không thành vì một cái gia tộc xuống cấp quản gia. Lại nhìn một cái thủ đoạn độc ác đại ma hoàng, như thế nào đem một cái gia tộc nhỏ yếu mang hướng đỉnh phong tồn tại.
Trác Phàm mi đầu mãnh liệt run run, một chân đem bọn hắn đá văng ra, mắng: "Thật mẹ hắn không có cốt khí!"

"Cái gì, lão cha muốn chúng ta biểu hiện được có cốt khí?"

Ánh mắt bất giác sáng lên, bốn người liếc nhìn nhau, lập tức lại tập hợp một chỗ, bày ra cái kia nhị bức tạo hình, quát to: "Chúng ta thì là ma đạo anh kiệt, yêu ma quỷ quái, Ma Sách Tứ Quỷ! Chúng ta lão cha chính là. . . Ách, lão cha, xin hỏi quý danh?"

Ba một tiếng, Trác Phàm vỗ trán một cái, kém chút một miệng lão huyết không có phun ra ngoài. Lệ Kinh Thiên càng là cười đến nghiêng nghiêng ngửa ngửa, nhanh đau sốc hông.
','50000', 10, './images/truyenhanhdong6.jpg', 5, 3, 1, 0);
INSERT INTO `tbl_dmsp` (`ID`, `MaSP`, `TenSP`, `DienGiai`, `DonGia`, `SoLuong`, `HinhAnh`, `IDLoai`, `IDHang`, `TrangThai`, `SoLuongBan`) VALUES

(34,'SP034','Truyện khám phá','Khám phá loại vật','50000', 10, './images/truyenkhampha5.jpg', 3, 2, 1, 0),

(37,'SP037','Truyện khám phá ','khám phá về loại vật','42000', 10, './images/truyenkhampha6.jpg', 3, 3, 1, 1),

(38,'SP038','Truyện ma','Quỷ tóc đỏ','30000', 10, './images/truyenma5.jpg', 4, 2, 1, 1),

(39,'SP039','Truyện cười','Truyện cười phần mới nhất','10000', 10, './images/truyencuoi6.jpg', 5, 2, 1, 1);
-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_hangsx`
--

CREATE TABLE `tbl_hangsx` (
  `IDHang` int(11) NOT NULL,
  `TenHang` varchar(100) CHARACTER SET utf8 NOT NULL,
  `Nuoc` varchar(50) NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_hangsx`
--

INSERT INTO `tbl_hangsx` (`IDHang`, `TenHang`, `Nuoc`, `TrangThai`) VALUES
(1, 'truyện cười', 'Việt Nam', 1),
(2, 'truyện ma', 'Mỹ', 1),
(3, 'truyện tranh', 'Nhật', 1),
(4, 'truyện lạ', 'Hàn Quốc', 1),
(5, 'truyện hay', 'Không có', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_hoadon`
--

CREATE TABLE `tbl_hoadon` (
  `MaHD` int(11) NOT NULL,
  `IDKH` int(11) NOT NULL,
  `HoTen` varchar(50) NOT NULL,
  `SDT` varchar(12) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `DiaChiNhan` varchar(100) NOT NULL,
  `NgayDatHang` date NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_hoadon`
--

INSERT INTO `tbl_hoadon` (`MaHD`, `IDKH`, `HoTen`, `SDT`, `Email`, `DiaChiNhan`, `NgayDatHang`, `TrangThai`) VALUES
(42, 31, 'Bui thanh trong', '01265', 'buithanhtrong32@gmail.com', 'TP.HCM', '2020-06-09', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_hoadonchitiet`
--

CREATE TABLE `tbl_hoadonchitiet` (
  `MaHD` int(11) NOT NULL,
  `MaSP` varchar(50) NOT NULL,
  `TenSP` varchar(50) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `Gia` int(11) NOT NULL,
  `PTTT` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_hoadonchitiet`
--

INSERT INTO `tbl_hoadonchitiet` (`MaHD`, `MaSP`, `TenSP`, `SoLuong`, `Gia`, `PTTT`) VALUES

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_member`
--

CREATE TABLE `tbl_member` (
  `ID` int(11) NOT NULL,
  `User` varchar(50) NOT NULL,
  `PassWord` varchar(50) NOT NULL,
  `HoTen` varchar(50) NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `SDT` varchar(12) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_member`
--

INSERT INTO `tbl_member` (`ID`, `User`, `PassWord`, `HoTen`, `DiaChi`, `SDT`, `Email`) VALUES

(31, 'thanhtrong', 'e10adc3949ba59abbe56e057f20f883e', 'trong', '123 huynh tan phat', '0132465789', 'asda@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_tintuc`
--

CREATE TABLE `tbl_tintuc` (
  `MaTT` int(11) NOT NULL,
  `NgayNhap` date NOT NULL,
  `AnhTinTuc` varchar(100) NOT NULL,
  `TieuDe` varchar(250) NOT NULL,
  `NoiDungTT` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_tintuc`
--

INSERT INTO `tbl_tintuc` (`MaTT`, `NgayNhap`, `AnhTinTuc`, `TieuDe`, `NoiDungTT`, `TrangThai`) VALUES
--
(4,'2020-06-09','./images/DPTK.jpg','Tập truyện Đấu Phá Thương Khung mới nhất','<h2> đấu phá thương khung mới nhất</h2>
<br>Bộ Ân mang theo đội quân hộ vệ rất nhanh chạy tới, bàn tay vung lên, dám hộ vệ dưới tay nhất thời hung hăng kiềm chế đám gia nhân của Gia Liệt Áo, trong khoảng thời gian ngắn song phương có chút khẩn trương bạt kiếm trương nỏ.

" Tam thiếu gia, có chuyện gì vậy?" Đến phía sau Tiên Viêm, Bội Ân đầu tiên là nhìn lướt qua bọn ngưòi Gia Liêt Áo đối diện rồi lập túc cung kính cười hỏi.

Tiên Viêm mỉm cười,nghiêng đầu nhìn khuôn mặt khó coi của Gia Liệt Áo, chậm rãi nói: " Gia Liệt Áo thiếu gia, khu vực này là địa bàn của Tiêu gia, ngươi nghĩ lúc này có thể động thủ?"

Gia Liệt Áo ánh mắt có chút kiêng kị,sau đó quay đầu đối với Tiêu Viêm cười lạnh nói: "Ngươi chẳng lẻ chỉ biết dựa vào thế lực gia tộc? Nếu ngươi là nam nhân …"

"Ngươi muốn nói với ta nếu ta là nam nhân liền cùng ngưoi tỷ thí công bình phải không?" Tiêu Viêm bỗng khoát tay áo,cưòi nói cắt ngang lời Gia Liệt Áo.

Gia Liệt Áo cưòi lạnh một tiếng, khiêu khich nói: "Đúng vậy, ngươi có dám?"

Nhìn vẻ mặt khiêu khich của Gia Liệt Áo, Tiêu Viêm làm như có chút bất đắc dĩ thở dài,tay sờ trán, một lát sau mới ngẩng đầu lên, khẻ nhún vai,vẻ mặt thành thực vô tội nói: "Gia Liệt Áo thiếu gia,ta hỏi chút vấn đề, ngài năm nay bao nhiêu tuổi?"

Gia Liệt Áo khoé miệng giật giật, âm trầm nghiêm mặt không nói một lời.

"Đại ca, ngươi năm nay hai mốt tuổi, còn ta bao nhiêu tuổi? Mười lăm tuổi! Ngươi muốn cùng một cái tiểu hài tử chưa cử hành nghi thức trưởng thành quyết đấu? Ngươi chẳng lẻ không biết yêu cầu của mình làm cho người khác đỏ mặt sao?" Tiêu Viêm thở dài,trên khuôn măt lộ ra bộ dáng bất đắc dĩ, làm Huân Nhi bên cạnh có chút nhịn không được hé miệng cười khẽ.

"Ha ha."

Nghe mấy lời nói vô tội của thiếu niên, dong binh và thương nhân ở xung quanh nhất thời phát ra tiếng cười. đích xác, lấy tuổi Tiêu Viêm giờ phút này nhiều lắm chỉ tính là môt thiếu niên ngây thơ miệng còn hôi sữa, mà Gia Liệt Áo lại sớm đả trưởng thành, khiêu chiến loại này, thật sự làm mọi người không thể không khinh bỉ trong lòng.</br>',1),

(5,'2020-06-09','./images/DPTK2.jpg','Truyện đấu phá thương khung ','<h2> đấu phá thương khung </h2>
<br>"Đấu kỹ thì có gì hay ho? Đợi ngươi học xong luyện dược thuật, trực tiếp có người tranh nhau đến tận cửa tặng cho ngươi." Dược lão cười nhạt nói, hoàn toàn không để ý đến vẻ mặt u oán của Tiêu Viêm.

"Nhưng bây giờ ta cần cao cấp đấu kỹ a, sư phụ!" Tiêu Viêm buồn phiền nói.

Nhìn bộ dạng buồn phiền của Tiêu Viêm, dược lão cười to hai tiếng, lắc lắc đầu, rồi hài hước cười nói: "Được rồi, ai bảo ta thu một đồ đệ đáng thương như ngươi? Để cho ngươi không bị người ta đánh thành tàn tật, ta dạy ngươi vài thứ vậy."

Nghe lời dược lão nói, Tiêu Viêm tinh thần chấn động, cậu rất hiếu kỳ vị sư phụ thần bí này cuối cùng có thể đem ra đấu kỹ đẳng cấp nào đây?

"Hấp chưởng của ngươi tuy là huyền giai đấu kỹ, nhưng có chút hữu danh vô thực, bây giờ thực lực của ngươi không đủ, trước tiên dạy ngươi một loại huyền giai đấu kỹ dựa vào lực công kích mà nổi danh đi. Đấu kỹ này yêu cầu không cao, ngũ đoạn đấu khí, là đã có thể phát huy một chút uy lực rồi." Dược lão cười mỉm nói.

"Huyền giai đẳng cấp nào?" Nghe dược lão nói là huyền giai đấu kỹ, Tiêu Viêm hai mắt sáng lên, liếm liếm môi, vội vàng hỏi.

"Là huyền giai cao cấp, ta nhớ đấu kỹ này hồi đó có người khóc lóc cầu xin ta nhận lấy, nhưng ta đối với những thứ như vậy không có hứng thú, nếu không phải là ta không muốn chuốc lấy phiền não, ta cũng đã không đáp ứng luyện chế đan dược cho hắn." Dược lão vẻ mặt như thường nói, bộ dạng không thèm quan tâm đó, như là đang nói về những thứ rác rưởi đầy đất vậy. Bạn đang đọc truyện tại - http://truyenfull.vn
"Huyền giai cao cấp? Khóc lóc cầu xin ngươi nhận lấy?" Đầu óc có chút mơ hồ, trong lòng Tiêu Viêm cũng có chút bị đả kích, tối cao đấu kỹ được xưng tụng là gia tộc tuyệt học trong gia tộc của hắn, cũng chỉ là huyền giai trung cấp, mà dược lão tuỳ tiện đem ra, lại là huyền giai cao cấp, loại khác biệt đẳng cấp kinh khủng này, thật sự là khiến Tiêu Viêm dở khóc dở cười.

"Nhắm mắt ngưng thần, ta truyền cho ngươi." Tuỳ ý phân phó một câu, dược lão giơ ngón tay ra, sau đó nhè nhẹ chạm vào trán của Tiêu Viêm. Đầu óc đau đớn một trận, Tiêu Viêm đột nhiên cảm giác được một lượng tin tức rất lớn tràn vào trong não, tin tức đột nhiên mà đến, lập tức làm cho đầu óc Tiêu Viêm có chút phát trướng lên.

"Bát cấp băng, huyền giai cao cấp đấu kỹ, cận thân công kích đấu kỹ, dựa vào công kích lực mạnh mẽ mà nổi danh, luyện đến đại thành, công kích sẽ ẩn chứa tám lớp kình khí, kình khí tám lần điệp gia, uy lực có thể so với địa giai sơ cấp đấu kỹ!"

Đầu óc từ từ tỉnh táo lại, kiểm tra kỹ càng mớ tư liệu "thô" ( như là công đoạn edit lại bản dịch của các bác editor ấy mà…), có đến nửa ngày sau, Tiêu Viêm mới khe khẽ hít vào một hơi khí lạnh, lực công kích có thể so với địa giai sơ cấp đấu kỹ? Trên đấu khí đại lục, dù là công pháp hay là đấu kỹ, huyền giai và địa giai, khác biệt giữa hai thứ, đều là khác nhau như trời và đất vậy, không thể so sánh với nhau, mà hiện tại thứ đấu kỹ chỉ là huyền giai cao cấp bát cực băng này (thay đổi thái độ nhanh nhỉ…), lại có thể tự xưng rằng về phương diện lực công kích, có thể so với địa giai đấu kỹ, điều này khiến Tiêu Viêm không thể không rung động.</br>
<h2> muốn xem tiếp thì mua</h2>',1),

(6,'2020-06-09','./images/TDDV1.jpg','Thần đồng đất việt','<h2> Thần đồng đất việt </h2>
<br>Truyện lấy bối cảnh là thời Hậu Lê, nhưng những sự kiện xảy ra trong truyện không trùng lặp với những sự kiện xảy ra trên thực tế. Tuy vậy, hầu hết những sự kiện chính xảy ra trong Thần Đồng Đất Việt đều dựa trên những câu truyện, điển tích lịch sử có thật của Việt Nam. Tác phẩm này kể lại những câu chuyện về cuộc đời của Lê Tí, một Trạng nguyên của Đại Việt cùng với những người bạn thân của cậu là Sửu Ẹo, Dần Béo và Cả Mẹo. Sự ra đời của Trạng Tí cũng không bình thường. Kiếp trước cậu vốn là một bậc thần tiên có kiến thức uyên bác trên Thiên Đình, sau đó được đầu thai xuống trần gian để giúp đỡ Đại Việt. Mẹ của Tí là bà Hai hậu, sau khi đi cày về mệt mỏi đã ngồi lên một hòn đá để nghỉ ngơi và có mang rồi sau đó sinh ra cậu.

Từ nhỏ, Tí đã thể hiện mình là một người con hiếu thảo, ham học và có trí thông minh hơn người. Ngay cả Đồ Kiết, thầy dạy của cậu cũng phải ngạc nhiên về kiến thức của cậu. Ở làng Phan Thị, với tài trí của mình, cậu cũng đã giúp mẹ, các bạn của mình và những người dân trong làng giải quyết nhiều vấn đề khó khăn. Vượt qua ba kì thi Hương, Hội, Đình một cách xuất sắc, cậu trở thành trạng nguyên nhỏ tuổi nhất của Đại Việt. Sau đó, cậu cũng được Đại Minh công nhận là Lưỡng Quốc Trạng nguyên.

Tí cùng Sửu, Dần và Cả Mẹo cũng đã có công lớn trong việc phò trợ vua Lê chống lại sự xâm lược của Đại Minh và đối phó với các sứ thần mà Đại Minh cử sang. Trong triều đình, cậu là một vị quan thanh liêm chính trực nên được công chúa Phương Thìn yêu mến, nhưng cũng chính vì vậy mà cậu luôn bị Tể Tướng Tào Hống và những người trong gia đình là hai đứa con ông coi là cái gai trong mắt và tìm mọi cách để hạ nhục cậu, tuy nhiên trong phần lớn các câu chuyện cậu là người chiến thắng. Cũng nhờ tài trí vượt bậc, Trạng Tí được vua tin tưởng giao trọng trách đi sứ Bắc Quốc nhiều lần. Ở đó, Tí cũng gặp phải nhiều khó khăn do vua Bắc Quốc và Vương Thừa Tướng tạo ra nhằm ám hại cậu và làm tổn hại uy tín Đại Việt, thậm chí có lần suýt chút nữa thì cậu thiệt mạng. Tuy đã ra làm quan nhưng đôi lúc cậu vẫn được vua cho phép về quê để chăm sóc mẹ và giúp đỡ dân làng. Và tất nhiên, tài trí và sự giúp đỡ nhiệt tình từ những người bạn tốt đã giúp những người dân rất nhiều.</br>
<h2> muốn xem tiếp thì mua</h2>',1),

(17,'2020-06-09','./images/TQ.jpg','Trạng quỷnh','<h2> Trạng quỷnh </h2>
<br>Truyện lấy bối cảnh cả 2 Đàng thời Trịnh - Nguyễn phân tranh, nếu xét riêng theo bố cục bộ truyện, thì thời gian này ở Đàng Ngoài vào những năm Bảo Thái dưới thời Hoàng đế Lê Dụ Tông và Nhiếp chính Định Nam Vương Trịnh Căn, Đàng Trong dưới thời Đức Tộ Quốc Công Minh Vương Nguyễn Phúc Chu, những sự kiện xảy ra trong truyện không chính xác tuyệt đối với những gì xảy ra trên thực tế. Tác phẩm này ban đầu kể lại về cuộc đời của Trạng Quỳnh – một người có tính cách trào phúng dân gian Việt Nam. Trong truyện này, Trạng Quỳnh vốn thông minh từ trong bụng mẹ. Trước khi cậu sinh ra, một lần bà mẹ ra ao giặt đồ, bỗng nhìn thấy một con vịt, bà mẹ liền ngâm câu thơ, và lập tức có tiếng đối đáp lại trong bụng vịt. Bà cho rằng đó là điềm lạ, nghĩ rằng bà sẽ sinh ra một quý tử, hiểu biết hơn người, sẽ là người có tiếng tăm. Thời gian trôi qua, bà hạ sinh một bé trai, tư dung thông minh lạ thường, đặt tên là Quỳnh.

Từ nhỏ, Quỳnh đã tỏ ra thông minh, học đâu nhớ đấy. Cậu ước mơ sau này sẽ làm ông trạng. Mặt khác, cậu cũng khá quậy, thường ở bẩn. Cậu gặp chuyện gì cũng có thể giải quyết, đối đáp rất giỏi. Ngay cả thầy và chúng bạn cũng khâm phục về tài trí của cậu.

Khi cậu trưởng thành, người ta bảo nhau rằng cậu ấy vẫn nghịch ngợm, nhưng điều đặc biệt là cậu không nghịch bằng hành động mà bằng trí thức của mình. Một ngày nọ, cậu bỗng gặp Quỷnh – đứa con nuôi của quan thái y sau này, rất quậy, đang bị một người chủ đuổi đánh. Từ đó, cậu đặt cho Quỷnh là Quỷnh "tai to" và nhận cậu làm tiểu đồng. Sau đó, Quỷnh cũng đã trở nên thông minh như cậu. Tuy nhiên, điều đáng buồn là Quỳnh đã bị Định Nam Vương mời ăn một bữa cơm báo thù, cậu được chúa mời ăn toàn thịt, nhưng đó lại có độc, riêng về phần chúa thì chỉ ăn rau vì không có độc. Cậu về nhà bảo với vợ nếu thấy cậu úp sách lên ngực thì thôi, còn nếu úp lên mặt thì cậu đã đi rồi, và hãy chờ trong 3 ngày đừng làm ma chay mà chỉ mở tiệc mừng, khi nào nghe tin chúa băng hà hãy làm đám ma, để giống như Quỳnh nằm đọc sách trên võng, mà không biết rằng cậu đã chết. Tin lọt đến tai chúa Trịnh. Chúa liền thử những món thịt đã cho Quỳnh ăn thì chúa trúng độc băng hà, nên có câu "Trạng chết, Chúa cũng băng hà", Khi cậu chết, gia đình và dân làng đều thương tiếc. Sau khi cậu mất, Quỷnh đã quyết tâm để trở thành một người thông minh, sáng dạ giống như cậu Quỳnh đời trước. Cậu thường hay giúp người, trừ bạo, nhưng đôi khi còn nghịch ngợm.</br>
<h2> muốn xem tiếp thì mua</h2>',1);
--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `tbl_dmloai`
--
ALTER TABLE `tbl_dmloai`
  ADD PRIMARY KEY (`IDLoai`);

--
-- Chỉ mục cho bảng `tbl_dmsp`
--
ALTER TABLE `tbl_dmsp`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SP_LOAI` (`IDLoai`),
  ADD KEY `SP_HANG` (`IDHang`);

--
-- Chỉ mục cho bảng `tbl_hangsx`
--
ALTER TABLE `tbl_hangsx`
  ADD PRIMARY KEY (`IDHang`);

--
-- Chỉ mục cho bảng `tbl_hoadon`
--
ALTER TABLE `tbl_hoadon`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `HD_KH` (`IDKH`);

--
-- Chỉ mục cho bảng `tbl_hoadonchitiet`
--
ALTER TABLE `tbl_hoadonchitiet`
  ADD PRIMARY KEY (`MaHD`,`MaSP`);

--
-- Chỉ mục cho bảng `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `tbl_tintuc`
--
ALTER TABLE `tbl_tintuc`
  ADD PRIMARY KEY (`MaTT`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_dmloai`
--
ALTER TABLE `tbl_dmloai`
  MODIFY `IDLoai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_dmsp`
--
ALTER TABLE `tbl_dmsp`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `tbl_hangsx`
--
ALTER TABLE `tbl_hangsx`
  MODIFY `IDHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbl_hoadon`
--
ALTER TABLE `tbl_hoadon`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `tbl_tintuc`
--
ALTER TABLE `tbl_tintuc`
  MODIFY `MaTT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_dmsp`
--
ALTER TABLE `tbl_dmsp`
  ADD CONSTRAINT `SP_HANG` FOREIGN KEY (`IDHang`) REFERENCES `tbl_hangsx` (`IDHang`),
  ADD CONSTRAINT `SP_LOAI` FOREIGN KEY (`IDLoai`) REFERENCES `tbl_dmloai` (`IDLoai`);

--
-- Các ràng buộc cho bảng `tbl_hoadon`
--
ALTER TABLE `tbl_hoadon`
  ADD CONSTRAINT `HD_KH` FOREIGN KEY (`IDKH`) REFERENCES `tbl_member` (`ID`);

--
-- Các ràng buộc cho bảng `tbl_hoadonchitiet`
--
ALTER TABLE `tbl_hoadonchitiet`
  ADD CONSTRAINT `CTHD_HD` FOREIGN KEY (`MaHD`) REFERENCES `tbl_hoadon` (`MaHD`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
