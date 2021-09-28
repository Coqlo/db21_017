-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 28, 2021 at 11:31 PM
-- Server version: 5.7.33-0ubuntu0.16.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db21_017`
--

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE `color` (
  `color_id` int(11) NOT NULL,
  `nameColor` varchar(50) CHARACTER SET utf8 NOT NULL,
  `colorProduct` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`color_id`, `nameColor`, `colorProduct`) VALUES
(1, 'เทา-น้ำตาล', 'PR001'),
(2, 'น้ำตาล-น้ำตาล', 'PR001'),
(3, 'น้ำตาล', 'PR002'),
(4, 'เทา', 'PR003'),
(5, 'แดง', 'PR004'),
(6, 'ส้ม', 'PR004'),
(7, 'เขียว', 'PR004'),
(8, 'ฟ้า', 'PR005'),
(9, 'แดง', 'PR005'),
(10, 'ฟ้า', 'PR006'),
(11, 'เขียว', 'PR006');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cus_id` varchar(11) CHARACTER SET utf8 NOT NULL,
  `cusName` varchar(50) CHARACTER SET utf8 NOT NULL,
  `cusAddress` text CHARACTER SET utf8 NOT NULL,
  `cusTel` varchar(11) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cus_id`, `cusName`, `cusAddress`, `cusTel`) VALUES
('C01', 'คุณแก้ว', 'กำแพงแสน', '081321654'),
('C02', 'คุณอุดร	', 'บางเลน', '0825689865'),
('C03', 'คุณพิพัฒน์', 'ดอนตูม', '087996554'),
('C04', 'คุณน้ำใส', 'สามพราน', '0855888855');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` varchar(11) CHARACTER SET utf8 NOT NULL,
  `userName` varchar(20) CHARACTER SET utf8 NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 NOT NULL,
  `empName` varchar(50) CHARACTER SET utf8 NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `userName`, `password`, `empName`, `position`) VALUES
('S11', 'S11', 'S111111', 'นายสมชาย', 1),
('S12', 'S12', 'S121111', 'นายสมศักดิ์', 1),
('S13', 'S13', 'S131111', 'นางสมสมร', 1),
('S21', 'S21', 'S211111', 'นางสาวพรศรี', 2),
('S22', 'S22', 'S221111', 'นางพรพรรณ', 2),
('S31', 'S31', 'S311111', 'นายยิ่งยง', 3),
('S32', 'S32', 'S321111', 'นายบัวขาว', 3),
('S41', 'S41', 'S411111', 'นายนิมิต', 4),
('S42', 'S42', 'S421111', 'นางประนอม', 4);

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `pos_id` int(11) NOT NULL,
  `posName` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`pos_id`, `posName`) VALUES
(1, 'ฝ่ายขาย'),
(2, 'ฝ่ายจัดซื้อ'),
(3, 'ฝ่ายผลิต'),
(4, 'ผู้จัดการ');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` varchar(20) CHARACTER SET utf8 NOT NULL,
  `nameProduct` varchar(100) CHARACTER SET utf8 NOT NULL,
  `detailProduct` varchar(250) CHARACTER SET utf8 NOT NULL,
  `noteProduct` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type_id` int(11) NOT NULL,
  `minProduct` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `nameProduct`, `detailProduct`, `noteProduct`, `type_id`, `minProduct`) VALUES
('PR001', 'ชุดเครื่องเขียน "Back to Nature"', 'ดินสอ ปากกา กระดาษ ยางลบ ไม้\r\nไผ่ ไฮไลท์ กบเหลาไม้ Eco Bag', 'สินค้าสต๊อก', 1, 800),
('PR002', '"Leaf Message" memo box\r\nกล่องกระดาษโน้ต ดินสอ', 'กระดาษโน้ต 150 แผ่น ดินสอ 3.5 นิ้ว', 'สินค้าสต๊อก', 1, 600),
('PR003', 'Natural Post it', 'Post it 3x3" และ 1x3" อย่างละ 50 แผ่น', 'สินค้าสต๊อก', 1, 400),
('PR004', '“recycle pen” ปากการีไซเคิล', 'ปากกาแบบกด ด้ามท่าจากกระดาษรีไซเคิลม้วน\r\nเป็นโรล หมึกสีน้่าเงิน', 'สินค้าสต๊อก', 1, 300),
('PR005', 'พัดลมมือถือเด็กอ้วน', 'พัดลมมือถือรูปเด็กอ้วน ขนาดกะทัดรัด', 'สินค้าสต๊อก', 2, 200),
('PR006', 'พัดลมมือถือcool', 'พัดลมมือถือสีใส ปุ่มเปิดด้านข้าง', 'by order', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_quan_price`
--

CREATE TABLE `product_quan_price` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `price_screen` float NOT NULL,
  `product_id` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_quan_price`
--

INSERT INTO `product_quan_price` (`id`, `quantity`, `price`, `price_screen`, `product_id`) VALUES
(1, 50, 150, 18, 'PR001'),
(2, 100, 120, 15, 'PR001'),
(3, 200, 98, 12, 'PR001'),
(4, 400, 90, 10, 'PR001'),
(5, 600, 86, 9, 'PR001'),
(6, 800, 83, 8, 'PR001'),
(7, 801, 81, 7, 'PR001'),
(8, 100, 69, 9, 'PR002'),
(9, 200, 63, 7, 'PR002'),
(10, 300, 56, 6, 'PR002'),
(11, 500, 50, 5.5, 'PR002'),
(12, 800, 49, 5, 'PR002'),
(13, 801, 48, 4.5, 'PR002'),
(14, 100, 57, 9, 'PR003'),
(15, 200, 50, 8, 'PR003'),
(16, 300, 45, 7.5, 'PR003'),
(17, 500, 39, 6, 'PR003'),
(18, 800, 37, 5, 'PR003'),
(19, 801, 34, 4.5, 'PR003'),
(20, 50, 30, 9, 'PR004'),
(21, 100, 20, 8, 'PR004'),
(22, 200, 18, 7, 'PR004'),
(23, 300, 15, 7.5, 'PR004'),
(24, 500, 12, 6, 'PR004'),
(25, 800, 10, 5, 'PR004'),
(26, 801, 8, 4, 'PR004'),
(27, 50, 80, 20, 'PR005'),
(28, 100, 75, 18, 'PR005'),
(29, 200, 68, 14, 'PR005'),
(30, 500, 64, 12, 'PR005'),
(31, 800, 60, 10, 'PR005'),
(32, 801, 58, 9, 'PR005'),
(33, 100, 75, 25, 'PR006'),
(34, 300, 70, 22, 'PR006'),
(35, 500, 64, 20, 'PR006'),
(36, 700, 62, 16, 'PR006'),
(37, 800, 55, 15, 'PR006'),
(38, 801, 52, 12, 'PR006');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `pruch_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `amount` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `shipping` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`pruch_id`, `date`, `amount`, `color_id`, `shipping`) VALUES
(1, '2021-07-08', 500, 1, 0),
(2, '2021-07-08', 1000, 2, 0),
(3, '2021-07-08', 700, 4, 0),
(4, '2021-07-08', 300, 6, 0),
(5, '2021-07-08', 1000, 8, 0),
(6, '2021-07-09', 600, 2, 0),
(7, '2021-07-09', 300, 4, 0),
(8, '2021-07-09', 1000, 5, 0),
(9, '2021-07-10', 400, 2, 0),
(10, '2021-07-10', 500, 3, 0),
(11, '2021-07-10', 500, 8, 0),
(12, '2021-07-10', 1000, 9, 0),
(13, '2021-08-05', 1000, 5, 0),
(14, '2021-08-05', 1200, 6, 0),
(15, '2021-08-05', 800, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `quotation`
--

CREATE TABLE `quotation` (
  `quo_id` int(11) NOT NULL,
  `quoDate` date NOT NULL,
  `condition_pay` int(11) NOT NULL,
  `emp_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `cus_id` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quotation`
--

INSERT INTO `quotation` (`quo_id`, `quoDate`, `condition_pay`, `emp_id`, `cus_id`) VALUES
(11001, '2021-07-11', 40, 'S11', 'C01'),
(11002, '2021-07-12', 0, 'S12', 'C02'),
(11003, '2021-07-13', 30, 'S13', 'C03'),
(11004, '2021-07-14', 0, 'S11', 'C03'),
(11005, '2021-07-15', 0, 'S12', 'C01'),
(11006, '2021-07-16', 40, 'S13', 'C02'),
(11007, '2021-07-17', 30, 'S11', 'C03'),
(11008, '2021-07-18', 40, 'S12', 'C04'),
(11009, '2021-07-19', 0, 'S13', 'C01'),
(11010, '2021-07-20', 50, 'S11', 'C02');

-- --------------------------------------------------------

--
-- Table structure for table `quotation_detail`
--

CREATE TABLE `quotation_detail` (
  `qd_id` int(11) NOT NULL,
  `amountColor` int(11) NOT NULL,
  `amountProduct` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `quo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quotation_detail`
--

INSERT INTO `quotation_detail` (`qd_id`, `amountColor`, `amountProduct`, `color_id`, `quo_id`) VALUES
(1, 2, 450, 5, 11001),
(2, 1, 580, 6, 11002),
(3, 2, 1200, 8, 11003),
(4, 1, 1500, 10, 11004),
(5, 2, 500, 5, 11005),
(6, 2, 800, 6, 11005),
(7, 2, 200, 8, 11005),
(8, 1, 1500, 11, 11005),
(9, 2, 180, 5, 11006),
(10, 2, 400, 6, 11006),
(11, 2, 600, 8, 11006),
(12, 3, 200, 3, 11007),
(13, 1, 600, 4, 11008),
(14, 1, 440, 7, 11009),
(15, 1, 850, 8, 11009),
(16, 2, 200, 6, 11010),
(17, 1, 670, 5, 11010),
(18, 2, 900, 10, 11010);

-- --------------------------------------------------------

--
-- Table structure for table `quotation_pay`
--

CREATE TABLE `quotation_pay` (
  `pay_id` int(11) NOT NULL,
  `quo_id` int(11) NOT NULL,
  `datePay` date NOT NULL,
  `percentPaid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quotation_pay`
--

INSERT INTO `quotation_pay` (`pay_id`, `quo_id`, `datePay`, `percentPaid`) VALUES
(1, 11006, '2021-08-02', 40),
(2, 11007, '2021-08-05', 30),
(3, 11010, '2021-08-02', 50),
(4, 11005, '2021-08-22', 40),
(5, 11005, '2021-08-30', 60),
(6, 11006, '2021-08-25', 40);

-- --------------------------------------------------------

--
-- Table structure for table `quotation_pickup`
--

CREATE TABLE `quotation_pickup` (
  `pick_id` int(11) NOT NULL,
  `qd_id` int(11) NOT NULL,
  `datePickup` date NOT NULL,
  `actualProduct` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quotation_pickup`
--

INSERT INTO `quotation_pickup` (`pick_id`, `qd_id`, `datePickup`, `actualProduct`) VALUES
(1, 5, '2021-08-15', 505),
(2, 6, '2021-08-15', 808),
(3, 7, '2021-08-15', 202),
(4, 8, '2021-08-15', 1515),
(5, 9, '2021-08-15', 182),
(6, 10, '2021-08-15', 404),
(7, 11, '2021-08-15', 606),
(8, 14, '2021-08-15', 449),
(9, 15, '2021-08-15', 867),
(10, 16, '2021-08-15', 204);

-- --------------------------------------------------------

--
-- Table structure for table `quotation_status_detail`
--

CREATE TABLE `quotation_status_detail` (
  `status_id` int(11) NOT NULL,
  `statusName` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quotation_status_detail`
--

INSERT INTO `quotation_status_detail` (`status_id`, `statusName`) VALUES
(1, 'ตกลงตามที่เสนอราคา'),
(2, 'ยกเลิก'),
(3, 'ลูกค้ายังไม่ตัดสินใจ');

-- --------------------------------------------------------

--
-- Table structure for table `quotation_tracking`
--

CREATE TABLE `quotation_tracking` (
  `track_id` int(11) NOT NULL,
  `quo_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `dateTrack` date NOT NULL,
  `approved` int(11) DEFAULT NULL,
  `deposited` int(11) DEFAULT NULL,
  `dateApproved` date DEFAULT NULL,
  `dateDeposited` date DEFAULT NULL,
  `increased` int(11) DEFAULT NULL,
  `emp_id` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quotation_tracking`
--

INSERT INTO `quotation_tracking` (`track_id`, `quo_id`, `status_id`, `dateTrack`, `approved`, `deposited`, `dateApproved`, `dateDeposited`, `increased`, `emp_id`) VALUES
(1, 11001, 3, '2021-07-27', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 11002, 2, '2021-07-27', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 11003, 3, '2021-07-27', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 11004, 3, '2021-07-27', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 11005, 1, '2021-07-27', 1, 0, '2021-08-03', NULL, 1, 'S41'),
(6, 11006, 1, '2021-07-27', 1, 1, '2021-08-03', '2021-08-02', 1, 'S42'),
(7, 11007, 1, '2021-07-27', NULL, 1, NULL, '2021-08-05', NULL, NULL),
(8, 11008, 1, '2021-07-27', NULL, 0, NULL, NULL, NULL, NULL),
(9, 11009, 1, '2021-07-27', 1, NULL, '2021-08-03', NULL, 2, 'S41'),
(10, 11010, 3, '2021-07-27', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 11001, 2, '2021-07-30', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 11003, 3, '2021-07-30', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 11004, 1, '2021-07-30', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 11010, 3, '2021-07-30', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 11010, 1, '2021-07-31', 1, 1, '2021-08-03', '2021-08-02', 2, 'S41');

-- --------------------------------------------------------

--
-- Table structure for table `tracking_manufacture`
--

CREATE TABLE `tracking_manufacture` (
  `tm_id` int(11) NOT NULL,
  `quo_id` int(11) NOT NULL,
  `dateFinish` date NOT NULL,
  `shipping` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tracking_manufacture`
--

INSERT INTO `tracking_manufacture` (`tm_id`, `quo_id`, `dateFinish`, `shipping`) VALUES
(1, 11005, '2021-08-20', 1),
(2, 11006, '2021-08-22', 1),
(3, 11009, '2021-08-23', 0);

-- --------------------------------------------------------

--
-- Table structure for table `type_product`
--

CREATE TABLE `type_product` (
  `type_id` int(11) NOT NULL,
  `nameType` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type_product`
--

INSERT INTO `type_product` (`type_id`, `nameType`) VALUES
(1, 'หมวดเครื่องเขียน'),
(2, 'หมวดพัดลมมือถือ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`color_id`),
  ADD KEY `colorProduct` (`colorProduct`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `position` (`position`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`pos_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `type` (`type_id`);

--
-- Indexes for table `product_quan_price`
--
ALTER TABLE `product_quan_price`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`product_id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`pruch_id`),
  ADD KEY `id_color` (`color_id`);

--
-- Indexes for table `quotation`
--
ALTER TABLE `quotation`
  ADD PRIMARY KEY (`quo_id`),
  ADD KEY `id_cus` (`cus_id`),
  ADD KEY `id_emp` (`emp_id`);

--
-- Indexes for table `quotation_detail`
--
ALTER TABLE `quotation_detail`
  ADD PRIMARY KEY (`qd_id`),
  ADD KEY `id_quo` (`quo_id`),
  ADD KEY `id_color` (`color_id`);

--
-- Indexes for table `quotation_pay`
--
ALTER TABLE `quotation_pay`
  ADD PRIMARY KEY (`pay_id`),
  ADD KEY `quo_id` (`quo_id`);

--
-- Indexes for table `quotation_pickup`
--
ALTER TABLE `quotation_pickup`
  ADD PRIMARY KEY (`pick_id`),
  ADD KEY `qd_id` (`qd_id`);

--
-- Indexes for table `quotation_status_detail`
--
ALTER TABLE `quotation_status_detail`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `quotation_tracking`
--
ALTER TABLE `quotation_tracking`
  ADD PRIMARY KEY (`track_id`),
  ADD KEY `quo_id` (`quo_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `emp_id` (`emp_id`);

--
-- Indexes for table `tracking_manufacture`
--
ALTER TABLE `tracking_manufacture`
  ADD PRIMARY KEY (`tm_id`),
  ADD KEY `quo_id` (`quo_id`);

--
-- Indexes for table `type_product`
--
ALTER TABLE `type_product`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `product_quan_price`
--
ALTER TABLE `product_quan_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `pruch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `quotation_detail`
--
ALTER TABLE `quotation_detail`
  MODIFY `qd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `quotation_pay`
--
ALTER TABLE `quotation_pay`
  MODIFY `pay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `quotation_pickup`
--
ALTER TABLE `quotation_pickup`
  MODIFY `pick_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `quotation_status_detail`
--
ALTER TABLE `quotation_status_detail`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `quotation_tracking`
--
ALTER TABLE `quotation_tracking`
  MODIFY `track_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tracking_manufacture`
--
ALTER TABLE `tracking_manufacture`
  MODIFY `tm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `color`
--
ALTER TABLE `color`
  ADD CONSTRAINT `color_ibfk_1` FOREIGN KEY (`colorProduct`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`position`) REFERENCES `position` (`pos_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `type_product` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_quan_price`
--
ALTER TABLE `product_quan_price`
  ADD CONSTRAINT `product_quan_price_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `purchase_ibfk_1` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quotation`
--
ALTER TABLE `quotation`
  ADD CONSTRAINT `quotation_ibfk_1` FOREIGN KEY (`cus_id`) REFERENCES `customer` (`cus_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quotation_ibfk_2` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quotation_detail`
--
ALTER TABLE `quotation_detail`
  ADD CONSTRAINT `quotation_detail_ibfk_1` FOREIGN KEY (`quo_id`) REFERENCES `quotation` (`quo_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quotation_detail_ibfk_2` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`);

--
-- Constraints for table `quotation_pay`
--
ALTER TABLE `quotation_pay`
  ADD CONSTRAINT `quotation_pay_ibfk_1` FOREIGN KEY (`quo_id`) REFERENCES `quotation` (`quo_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quotation_pickup`
--
ALTER TABLE `quotation_pickup`
  ADD CONSTRAINT `quotation_pickup_ibfk_1` FOREIGN KEY (`qd_id`) REFERENCES `quotation_detail` (`qd_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quotation_tracking`
--
ALTER TABLE `quotation_tracking`
  ADD CONSTRAINT `quotation_tracking_ibfk_1` FOREIGN KEY (`quo_id`) REFERENCES `quotation` (`quo_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quotation_tracking_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `quotation_status_detail` (`status_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quotation_tracking_ibfk_3` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tracking_manufacture`
--
ALTER TABLE `tracking_manufacture`
  ADD CONSTRAINT `tracking_manufacture_ibfk_1` FOREIGN KEY (`quo_id`) REFERENCES `quotation` (`quo_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
