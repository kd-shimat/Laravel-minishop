
set names utf8;


DROP TABLE IF EXISTS `items`;


CREATE TABLE `items` (
  `ident` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `maker` varchar(50) NOT NULL,
  `price` int NOT NULL,
  `image` varchar(20) NOT NULL,
  `genre` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT INTO `items` (`ident`, `name`, `maker`, `price`, `image`, `genre`) VALUES
(1, 'NEC LAVIE', 'NEC', 61980, 'pc001.jpg', 'pc'),
(2, 'dynabook AZ45', '東芝', 80784, 'pc002.jpg', 'pc'),
(3, 'Surface Pro', 'マイクロソフト', 167980, 'pc003.jpg', 'pc'),
(4, 'FMV LIFEBOOK', '富士通', 221480, 'pc004.jpg', 'pc'),
(5, 'MacBook Pro', 'Apple', 142800, 'pc005.jpg', 'pc'),
(6, '確かな力が身につくPHP「超」入門', '松浦健一郎/司ゆき', 2678, 'book001.jpg', 'book'),
(7, 'スラスラわかるJavaScript', '生形　可奈子', 2484, 'book002.jpg', 'book'),
(8, 'SCRUM BOOT CAMP THE BOOK', '西村　直人ほか', 2592, 'book003.jpg', 'book'),
(9, 'かんたんUML入門 (プログラミングの教科書)', '大西　洋平ほか', 3218, 'book004.jpg', 'book'),
(10, 'Webデザイナーのための jQuery入門', '高津戸 壮', 3110, 'book005.jpg', 'book'),
(11, '÷(ディバイド)', 'エド・シーラン', 1818, 'music001.jpg', 'music'),
(12, 'Live in San Diego [12 inch Analog]', 'Eric Clapton', 3956, 'music002.jpg', 'music'),
(13, '25(UK盤)', 'Adele', 1205, 'music003.jpg', 'music'),
(14, 'Somehow,Someday,Somewhere', 'ai kuwabara trio project', 2700, 'music004.jpg', 'music'),
(15, 'Singles[Explicit]', 'マルーン5', 1530, 'music005.jpg', 'music');

ALTER TABLE `items`
  ADD PRIMARY KEY (`ident`);

ALTER TABLE `items`
  MODIFY `ident` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;


DROP TABLE IF EXISTS `cart`;


CREATE TABLE `cart` (
  `ident` int NOT NULL,
  `quantity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

ALTER TABLE `cart`
  ADD PRIMARY KEY (`ident`);
COMMIT;
