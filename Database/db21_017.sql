-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 25, 2021 at 10:58 PM
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
-- Stand-in structure for view `Q01`
--
CREATE TABLE `Q01` (
`emp_id` varchar(11)
,`empName` varchar(50)
,`username` varchar(20)
,`password` varchar(20)
,`posName` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q02`
--
CREATE TABLE `Q02` (
`posName` varchar(50)
,`COUNT(position)` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q03`
--
CREATE TABLE `Q03` (
`cus_id` varchar(11)
,`cusName` varchar(50)
,`cusAddress` text
,`cusTel` varchar(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q04`
--
CREATE TABLE `Q04` (
`product_id` varchar(20)
,`nameProduct` varchar(100)
,`priceItem` double
,`Total` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q05_1`
--
CREATE TABLE `Q05_1` (
`product_id` varchar(20)
,`nameProduct` varchar(100)
,`priceItem` int(11)
,`totalPrice` bigint(13)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q05_2`
--
CREATE TABLE `Q05_2` (
`product_id` varchar(20)
,`nameProduct` varchar(100)
,`priceItem` double
,`totalPrice` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q05_3`
--
CREATE TABLE `Q05_3` (
`product_id` varchar(20)
,`nameProduct` varchar(100)
,`priceItem` double
,`totalPrice` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q05_4`
--
CREATE TABLE `Q05_4` (
`product_id` varchar(20)
,`nameProduct` varchar(100)
,`priceItem` double
,`totalPrice` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q05_5`
--
CREATE TABLE `Q05_5` (
`product_id` varchar(20)
,`nameProduct` varchar(100)
,`priceItem` double
,`totalPrice` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q06`
--
CREATE TABLE `Q06` (
`product_id` varchar(20)
,`nameProduct` varchar(100)
,`nameType` varchar(100)
,`nameColor` varchar(50)
,`minProduct` int(11)
,`oderQty` bigint(21)
,`totalPerColor` decimal(32,0)
,`oderMore` decimal(33,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q07`
--
CREATE TABLE `Q07` (
`product_id` varchar(20)
,`nameProduct` varchar(100)
,`nameType` varchar(100)
,`COUNT(nameColor)` bigint(21)
,`Total` decimal(54,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q08`
--
CREATE TABLE `Q08` (
`product_id` varchar(20)
,`nameProduct` varchar(100)
,`nameColor` varchar(50)
,`minProduct` int(11)
,`totalPerColor` decimal(32,0)
,`oderMore` decimal(33,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q09`
--
CREATE TABLE `Q09` (
`quo_id` int(11)
,`colorProduct` varchar(50)
,`nameColor` varchar(50)
,`amountProduct` int(11)
,`price` double
,`totalPrice` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q10`
--
CREATE TABLE `Q10` (
`product_id` varchar(20)
,`nameProduct` varchar(100)
,`nameColor` varchar(50)
,`totalInQuotation` decimal(32,0)
,`stock` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q11`
--
CREATE TABLE `Q11` (
`quo_id` int(11)
,`quoDate` date
,`cusName` varchar(50)
,`priceTotal` double
,`priceVat` double(17,0)
,`deposit` double(17,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q12`
--
CREATE TABLE `Q12` (
`empName` varchar(50)
,`countQuotation` bigint(21)
,`priceTotal` double
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q13`
--
CREATE TABLE `Q13` (
`statusName` varchar(30)
,`amount` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q14`
--
CREATE TABLE `Q14` (
`quo_id` int(11)
,`dateTrack` date
,`statusName` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q15`
--
CREATE TABLE `Q15` (
`quo_id` int(11)
,`dateTrack` date
,`statusName` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q16`
--
CREATE TABLE `Q16` (
`quo_id` int(11)
,`payment` double(17,0)
,`shipment` double(17,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q17`
--
CREATE TABLE `Q17` (
`quo_id` int(11)
,`colorProduct` varchar(50)
,`nameProduct` varchar(100)
,`nameColor` varchar(50)
,`amountProduct` int(11)
,`actualProduct` decimal(22,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q18`
--
CREATE TABLE `Q18` (
`colorProduct` varchar(50)
,`nameProduct` varchar(100)
,`nameColor` varchar(50)
,`stock` decimal(33,0)
,`shipping` decimal(32,0)
,`actualProduct` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q19`
--
CREATE TABLE `Q19` (
`colorProduct` varchar(50)
,`nameProduct` varchar(100)
,`nameColor` varchar(50)
,`amount` decimal(34,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q20`
--
CREATE TABLE `Q20` (
`quo_id` int(11)
,`datePay` date
,`payment` double(21,4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q21`
--
CREATE TABLE `Q21` (
`colorProduct` varchar(50)
,`nameProduct` varchar(100)
,`actualProductSuccess` decimal(44,0)
,`shipped` decimal(44,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q22`
--
CREATE TABLE `Q22` (
`quo_id` int(11)
,`totalPrice` double(17,0)
,`paymentAmount` double(21,4)
,`outstanding` double(21,4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Q23`
--
CREATE TABLE `Q23` (
`colorProduct` varchar(50)
,`nameProduct` varchar(100)
,`sale` decimal(32,0)
,`reserve` decimal(43,0)
,`totalPrice` double
);

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

-- --------------------------------------------------------

--
-- Structure for view `Q01`
--
DROP TABLE IF EXISTS `Q01`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_017`@`%` SQL SECURITY DEFINER VIEW `Q01`  AS  select `employee`.`emp_id` AS `emp_id`,`employee`.`empName` AS `empName`,`employee`.`userName` AS `username`,`employee`.`password` AS `password`,`position`.`posName` AS `posName` from (`employee` join `position`) where (`employee`.`position` = `position`.`pos_id`) ;

-- --------------------------------------------------------

--
-- Structure for view `Q02`
--
DROP TABLE IF EXISTS `Q02`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_017`@`%` SQL SECURITY DEFINER VIEW `Q02`  AS  select `position`.`posName` AS `posName`,count(`employee`.`position`) AS `COUNT(position)` from (`employee` join `position`) where (`employee`.`position` = `position`.`pos_id`) group by `position`.`posName` ;

-- --------------------------------------------------------

--
-- Structure for view `Q03`
--
DROP TABLE IF EXISTS `Q03`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_017`@`%` SQL SECURITY DEFINER VIEW `Q03`  AS  select `customer`.`cus_id` AS `cus_id`,`customer`.`cusName` AS `cusName`,`customer`.`cusAddress` AS `cusAddress`,`customer`.`cusTel` AS `cusTel` from `customer` ;

-- --------------------------------------------------------

--
-- Structure for view `Q04`
--
DROP TABLE IF EXISTS `Q04`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_017`@`%` SQL SECURITY DEFINER VIEW `Q04`  AS  select `product`.`product_id` AS `product_id`,`product`.`nameProduct` AS `nameProduct`,(`product_quan_price`.`price` + `product_quan_price`.`price_screen`) AS `priceItem`,((`product_quan_price`.`price` + `product_quan_price`.`price_screen`) * 150) AS `Total` from (`product` join `product_quan_price`) where ((`product_quan_price`.`product_id` = 'PR001') and (`product`.`product_id` = 'PR001') and (`product_quan_price`.`quantity` >= 100) and (`product_quan_price`.`quantity` <= 150)) ;

-- --------------------------------------------------------

--
-- Structure for view `Q05_1`
--
DROP TABLE IF EXISTS `Q05_1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_017`@`%` SQL SECURITY DEFINER VIEW `Q05_1`  AS  select `product`.`product_id` AS `product_id`,`product`.`nameProduct` AS `nameProduct`,`product_quan_price`.`price` AS `priceItem`,(`product_quan_price`.`price` * 50) AS `totalPrice` from (`product` join `product_quan_price`) where ((`product`.`product_id` = `product_quan_price`.`product_id`) and (`product_quan_price`.`quantity` <= 50)) ;

-- --------------------------------------------------------

--
-- Structure for view `Q05_2`
--
DROP TABLE IF EXISTS `Q05_2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_017`@`%` SQL SECURITY DEFINER VIEW `Q05_2`  AS  select `product`.`product_id` AS `product_id`,`product`.`nameProduct` AS `nameProduct`,(`product_quan_price`.`price` + (`product_quan_price`.`price_screen` * 2)) AS `priceItem`,((`product_quan_price`.`price` + (`product_quan_price`.`price_screen` * 2)) * 50) AS `totalPrice` from (`product` join `product_quan_price`) where ((`product`.`product_id` = `product_quan_price`.`product_id`) and (`product_quan_price`.`quantity` between 1 and 50)) ;

-- --------------------------------------------------------

--
-- Structure for view `Q05_3`
--
DROP TABLE IF EXISTS `Q05_3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_017`@`%` SQL SECURITY DEFINER VIEW `Q05_3`  AS  select `product`.`product_id` AS `product_id`,`product`.`nameProduct` AS `nameProduct`,(`product_quan_price`.`price` + (`product_quan_price`.`price_screen` * 4)) AS `priceItem`,((`product_quan_price`.`price` + (`product_quan_price`.`price_screen` * 4)) * 400) AS `totalPrice` from (`product` join `product_quan_price`) where ((`product`.`product_id` = `product_quan_price`.`product_id`) and (`product_quan_price`.`quantity` between 400 and 500)) ;

-- --------------------------------------------------------

--
-- Structure for view `Q05_4`
--
DROP TABLE IF EXISTS `Q05_4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_017`@`%` SQL SECURITY DEFINER VIEW `Q05_4`  AS  select `product`.`product_id` AS `product_id`,`product`.`nameProduct` AS `nameProduct`,(`product_quan_price`.`price` + (`product_quan_price`.`price_screen` * 1)) AS `priceItem`,((`product_quan_price`.`price` + (`product_quan_price`.`price_screen` * 1)) * 1000) AS `totalPrice` from (`product` join `product_quan_price`) where ((`product`.`product_id` = `product_quan_price`.`product_id`) and (`product_quan_price`.`quantity` >= 801)) ;

-- --------------------------------------------------------

--
-- Structure for view `Q05_5`
--
DROP TABLE IF EXISTS `Q05_5`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_017`@`%` SQL SECURITY DEFINER VIEW `Q05_5`  AS  select `product`.`product_id` AS `product_id`,`product`.`nameProduct` AS `nameProduct`,(`product_quan_price`.`price` + (`product_quan_price`.`price_screen` * 3)) AS `priceItem`,((`product_quan_price`.`price` + (`product_quan_price`.`price_screen` * 3)) * 1000) AS `totalPrice` from (`product` join `product_quan_price`) where ((`product`.`product_id` = `product_quan_price`.`product_id`) and (`product_quan_price`.`quantity` >= 801)) ;

-- --------------------------------------------------------

--
-- Structure for view `Q06`
--
DROP TABLE IF EXISTS `Q06`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_017`@`%` SQL SECURITY DEFINER VIEW `Q06`  AS  select `product`.`product_id` AS `product_id`,`product`.`nameProduct` AS `nameProduct`,`type_product`.`nameType` AS `nameType`,`color`.`nameColor` AS `nameColor`,`product`.`minProduct` AS `minProduct`,count(`purchase`.`color_id`) AS `oderQty`,(case when isnull(sum(`purchase`.`amount`)) then 0 else sum(`purchase`.`amount`) end) AS `totalPerColor`,(case when (`product`.`minProduct` > sum(`purchase`.`amount`)) then (`product`.`minProduct` - sum(`purchase`.`amount`)) when isnull(sum(`purchase`.`amount`)) then `product`.`minProduct` else 0 end) AS `oderMore` from (((`product` join `type_product` on((`product`.`type_id` = `type_product`.`type_id`))) join `color` on((`product`.`product_id` = `color`.`colorProduct`))) left join `purchase` on((`color`.`color_id` = `purchase`.`color_id`))) group by `color`.`color_id` ;

-- --------------------------------------------------------

--
-- Structure for view `Q07`
--
DROP TABLE IF EXISTS `Q07`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_017`@`%` SQL SECURITY DEFINER VIEW `Q07`  AS  select `Q06`.`product_id` AS `product_id`,`Q06`.`nameProduct` AS `nameProduct`,`Q06`.`nameType` AS `nameType`,count(`Q06`.`nameColor`) AS `COUNT(nameColor)`,sum(`Q06`.`totalPerColor`) AS `Total` from `Q06` group by `Q06`.`product_id` ;

-- --------------------------------------------------------

--
-- Structure for view `Q08`
--
DROP TABLE IF EXISTS `Q08`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_017`@`%` SQL SECURITY DEFINER VIEW `Q08`  AS  select `product`.`product_id` AS `product_id`,`product`.`nameProduct` AS `nameProduct`,`color`.`nameColor` AS `nameColor`,`product`.`minProduct` AS `minProduct`,(case when isnull(sum(`purchase`.`amount`)) then 0 else sum(`purchase`.`amount`) end) AS `totalPerColor`,(case when (`product`.`minProduct` > sum(`purchase`.`amount`)) then (`product`.`minProduct` - sum(`purchase`.`amount`)) when isnull(sum(`purchase`.`amount`)) then `product`.`minProduct` else 0 end) AS `oderMore` from (((`product` join `type_product` on((`product`.`type_id` = `type_product`.`type_id`))) join `color` on((`product`.`product_id` = `color`.`colorProduct`))) left join `purchase` on((`color`.`color_id` = `purchase`.`color_id`))) group by `color`.`color_id` ;

-- --------------------------------------------------------

--
-- Structure for view `Q09`
--
DROP TABLE IF EXISTS `Q09`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_017`@`%` SQL SECURITY DEFINER VIEW `Q09`  AS  select `quotation_detail`.`quo_id` AS `quo_id`,`color`.`colorProduct` AS `colorProduct`,`color`.`nameColor` AS `nameColor`,`quotation_detail`.`amountProduct` AS `amountProduct`,(case when (`quotation_detail`.`amountProduct` > 800) then (min(`product_quan_price`.`price`) + (min(`product_quan_price`.`price_screen`) * (`quotation_detail`.`amountColor` - 1))) else (max(`product_quan_price`.`price`) + (max(`product_quan_price`.`price_screen`) * (`quotation_detail`.`amountColor` - 1))) end) AS `price`,(case when (`quotation_detail`.`amountProduct` > 800) then ((min(`product_quan_price`.`price`) + (min(`product_quan_price`.`price_screen`) * (`quotation_detail`.`amountColor` - 1))) * `quotation_detail`.`amountProduct`) else ((max(`product_quan_price`.`price`) + (max(`product_quan_price`.`price_screen`) * (`quotation_detail`.`amountColor` - 1))) * `quotation_detail`.`amountProduct`) end) AS `totalPrice` from ((`quotation_detail` join `color` on((`quotation_detail`.`color_id` = `color`.`color_id`))) left join `product_quan_price` on((`color`.`colorProduct` = `product_quan_price`.`product_id`))) where ((`quotation_detail`.`amountProduct` <= `product_quan_price`.`quantity`) or (`quotation_detail`.`amountProduct` > 801)) group by `quotation_detail`.`qd_id` ;

-- --------------------------------------------------------

--
-- Structure for view `Q10`
--
DROP TABLE IF EXISTS `Q10`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_017`@`%` SQL SECURITY DEFINER VIEW `Q10`  AS  select `product`.`product_id` AS `product_id`,`product`.`nameProduct` AS `nameProduct`,`color`.`nameColor` AS `nameColor`,(case when isnull(sum(`quotation_detail`.`amountProduct`)) then 0 else sum(`quotation_detail`.`amountProduct`) end) AS `totalInQuotation`,(case when isnull(sum(`purchase`.`amount`)) then 0 else sum(`purchase`.`amount`) end) AS `stock` from (((`product` left join `color` on((`product`.`product_id` = `color`.`colorProduct`))) left join `quotation_detail` on((`color`.`color_id` = `quotation_detail`.`color_id`))) left join `purchase` on((`color`.`color_id` = `purchase`.`color_id`))) group by `product`.`product_id`,`color`.`nameColor` ;

-- --------------------------------------------------------

--
-- Structure for view `Q11`
--
DROP TABLE IF EXISTS `Q11`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_017`@`%` SQL SECURITY DEFINER VIEW `Q11`  AS  select `quotation`.`quo_id` AS `quo_id`,`quotation`.`quoDate` AS `quoDate`,`customer`.`cusName` AS `cusName`,sum(`Q09`.`totalPrice`) AS `priceTotal`,round((sum(`Q09`.`totalPrice`) * 1.07),0) AS `priceVat`,round(((sum(`Q09`.`totalPrice`) * 1.07) * (`quotation`.`condition_pay` / 100)),0) AS `deposit` from ((`quotation` join `customer`) join `Q09`) where ((`quotation`.`cus_id` = `customer`.`cus_id`) and (`quotation`.`quo_id` = `Q09`.`quo_id`)) group by `quotation`.`quo_id` ;

-- --------------------------------------------------------

--
-- Structure for view `Q12`
--
DROP TABLE IF EXISTS `Q12`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_017`@`%` SQL SECURITY DEFINER VIEW `Q12`  AS  select `employee`.`empName` AS `empName`,count(`quotation`.`quo_id`) AS `countQuotation`,sum(`Q11`.`priceTotal`) AS `priceTotal` from ((`employee` join `quotation` on((`employee`.`emp_id` = `quotation`.`emp_id`))) join `Q11` on((`quotation`.`quo_id` = `Q11`.`quo_id`))) group by `employee`.`emp_id` ;

-- --------------------------------------------------------

--
-- Structure for view `Q13`
--
DROP TABLE IF EXISTS `Q13`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_017`@`%` SQL SECURITY DEFINER VIEW `Q13`  AS  select `quotation_status_detail`.`statusName` AS `statusName`,count(`quotation_tracking`.`status_id`) AS `amount` from (`quotation_tracking` join `quotation_status_detail` on((`quotation_tracking`.`status_id` = `quotation_status_detail`.`status_id`))) group by `quotation_tracking`.`status_id` ;

-- --------------------------------------------------------

--
-- Structure for view `Q14`
--
DROP TABLE IF EXISTS `Q14`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_017`@`%` SQL SECURITY DEFINER VIEW `Q14`  AS  select `quotation_tracking`.`quo_id` AS `quo_id`,`quotation_tracking`.`dateTrack` AS `dateTrack`,`quotation_status_detail`.`statusName` AS `statusName` from (`quotation_tracking` join `quotation_status_detail` on((`quotation_tracking`.`status_id` = `quotation_status_detail`.`status_id`))) order by `quotation_tracking`.`quo_id`,`quotation_tracking`.`dateTrack` ;

-- --------------------------------------------------------

--
-- Structure for view `Q15`
--
DROP TABLE IF EXISTS `Q15`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_017`@`%` SQL SECURITY DEFINER VIEW `Q15`  AS  select `tracking`.`quo_id` AS `quo_id`,`tracking`.`dateTrack` AS `dateTrack`,`quotation_status_detail`.`statusName` AS `statusName` from (`quotation_tracking` `tracking` join `quotation_status_detail` on((`tracking`.`status_id` = `quotation_status_detail`.`status_id`))) where (`tracking`.`dateTrack` = (select max(`quotation_tracking`.`dateTrack`) from `quotation_tracking` where (`quotation_tracking`.`quo_id` = `tracking`.`quo_id`))) order by `tracking`.`quo_id` ;

-- --------------------------------------------------------

--
-- Structure for view `Q16`
--
DROP TABLE IF EXISTS `Q16`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_017`@`%` SQL SECURITY DEFINER VIEW `Q16`  AS  select `quotation_tracking`.`quo_id` AS `quo_id`,`Q11`.`deposit` AS `payment`,(`Q11`.`priceVat` - `Q11`.`deposit`) AS `shipment` from (`quotation_tracking` join `Q11` on((`Q11`.`quo_id` = `quotation_tracking`.`quo_id`))) where ((`quotation_tracking`.`deposited` = 1) or (`quotation_tracking`.`approved` = 1)) group by `Q11`.`quo_id` ;

-- --------------------------------------------------------

--
-- Structure for view `Q17`
--
DROP TABLE IF EXISTS `Q17`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_017`@`%` SQL SECURITY DEFINER VIEW `Q17`  AS  select `quotation_tracking`.`quo_id` AS `quo_id`,`color`.`colorProduct` AS `colorProduct`,`product`.`nameProduct` AS `nameProduct`,`color`.`nameColor` AS `nameColor`,`quotation_detail`.`amountProduct` AS `amountProduct`,round((`quotation_detail`.`amountProduct` * ((`quotation_tracking`.`increased` / 100) + 1)),0) AS `actualProduct` from (((`quotation_tracking` join `quotation_detail` on((`quotation_tracking`.`quo_id` = `quotation_detail`.`quo_id`))) join `color` on((`quotation_detail`.`color_id` = `color`.`color_id`))) join `product` on((`color`.`colorProduct` = `product`.`product_id`))) where (`quotation_tracking`.`approved` > 0) ;

-- --------------------------------------------------------

--
-- Structure for view `Q18`
--
DROP TABLE IF EXISTS `Q18`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_017`@`%` SQL SECURITY DEFINER VIEW `Q18`  AS  select `color`.`colorProduct` AS `colorProduct`,`product`.`nameProduct` AS `nameProduct`,`color`.`nameColor` AS `nameColor`,ifnull((sum(if((`purchase`.`shipping` = 0),`purchase`.`amount`,0)) - `A`.`orderProduct`),0) AS `stock`,sum(if((`purchase`.`shipping` = 1),`purchase`.`amount`,0)) AS `shipping`,(case when NULL then 0 else `A`.`orderProduct` end) AS `actualProduct` from (((`product` join `color` on((`product`.`product_id` = `color`.`colorProduct`))) left join `purchase` on((`color`.`color_id` = `purchase`.`color_id`))) left join (select `color`.`color_id` AS `color_id`,`color`.`colorProduct` AS `colorProduct`,`color`.`nameColor` AS `nameColor`,sum((case when isnull(`quotation_pickup`.`actualProduct`) then 0 else `quotation_pickup`.`actualProduct` end)) AS `orderProduct` from (((`product` join `color` on((`product`.`product_id` = `color`.`colorProduct`))) left join `quotation_detail` on((`color`.`color_id` = `quotation_detail`.`color_id`))) left join `quotation_pickup` on((`quotation_detail`.`qd_id` = `quotation_pickup`.`qd_id`))) group by `color`.`color_id`) `A` on((`color`.`color_id` = `A`.`color_id`))) group by `color`.`color_id` ;

-- --------------------------------------------------------

--
-- Structure for view `Q19`
--
DROP TABLE IF EXISTS `Q19`;
-- in use(#1046 - No database selected)

-- --------------------------------------------------------

--
-- Structure for view `Q20`
--
DROP TABLE IF EXISTS `Q20`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_017`@`%` SQL SECURITY DEFINER VIEW `Q20`  AS  select `quotation_pay`.`quo_id` AS `quo_id`,`quotation_pay`.`datePay` AS `datePay`,((`quotation_pay`.`percentPaid` / 100) * `Q11`.`priceVat`) AS `payment` from (`quotation_pay` left join `Q11` on((`quotation_pay`.`quo_id` = `Q11`.`quo_id`))) order by `quotation_pay`.`quo_id` ;

-- --------------------------------------------------------

--
-- Structure for view `Q21`
--
DROP TABLE IF EXISTS `Q21`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_017`@`%` SQL SECURITY DEFINER VIEW `Q21`  AS  select `Q17`.`colorProduct` AS `colorProduct`,`Q17`.`nameProduct` AS `nameProduct`,sum(`Q17`.`actualProduct`) AS `actualProductSuccess`,sum(if((`tracking_manufacture`.`shipping` = 1),`Q17`.`actualProduct`,0)) AS `shipped` from (`Q17` join `tracking_manufacture` on((`Q17`.`quo_id` = `tracking_manufacture`.`quo_id`))) group by `Q17`.`colorProduct` ;

-- --------------------------------------------------------

--
-- Structure for view `Q22`
--
DROP TABLE IF EXISTS `Q22`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_017`@`%` SQL SECURITY DEFINER VIEW `Q22`  AS  select `Q11`.`quo_id` AS `quo_id`,`Q11`.`priceVat` AS `totalPrice`,ifnull(((sum(`quotation_pay`.`percentPaid`) / 100) * `Q11`.`priceVat`),0) AS `paymentAmount`,ifnull((`Q11`.`priceVat` - ((sum(`quotation_pay`.`percentPaid`) / 100) * `Q11`.`priceVat`)),`Q11`.`priceVat`) AS `outstanding` from ((`quotation_tracking` left join `quotation_pay` on((`quotation_tracking`.`quo_id` = `quotation_pay`.`quo_id`))) join `Q11` on((`quotation_tracking`.`quo_id` = `Q11`.`quo_id`))) where (`quotation_tracking`.`approved` = 1) group by `Q11`.`quo_id` ;

-- --------------------------------------------------------

--
-- Structure for view `Q23`
--
DROP TABLE IF EXISTS `Q23`;

CREATE ALGORITHM=UNDEFINED DEFINER=`db21_017`@`%` SQL SECURITY DEFINER VIEW `Q23`  AS  select `Q09`.`colorProduct` AS `colorProduct`,`A`.`nameProduct` AS `nameProduct`,sum(`Q09`.`amountProduct`) AS `sale`,round(sum(((`Q09`.`amountProduct` * `quotation_tracking`.`increased`) / 100)),0) AS `reserve`,sum(`Q09`.`totalPrice`) AS `totalPrice` from (((`Q22` join `Q09` on((`Q22`.`quo_id` = `Q09`.`quo_id`))) join `quotation_tracking` on((`Q09`.`quo_id` = `quotation_tracking`.`quo_id`))) join (select `Q17`.`colorProduct` AS `colorProduct`,`Q17`.`nameProduct` AS `nameProduct`,sum(`Q17`.`actualProduct`) AS `actualProductSuccess`,sum(if((`tracking_manufacture`.`shipping` = 1),`Q17`.`actualProduct`,0)) AS `shipped` from (`Q17` join `tracking_manufacture` on((`Q17`.`quo_id` = `tracking_manufacture`.`quo_id`))) group by `Q17`.`colorProduct`) `A` on((`Q09`.`colorProduct` = `A`.`colorProduct`))) where (`Q22`.`outstanding` = 0) group by `Q09`.`colorProduct` ;

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
