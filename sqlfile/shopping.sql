-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2018 at 12:37 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 21:21:18', '21-06-2018 08:27:55 PM'),
(2, 'rahul', '21232f297a57a5a743894a0e4a801fc3', '2018-11-26 05:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Laptop', 'Laptop', '2018-11-22 00:17:37', '2018-11-22 19:17:37'),
(4, 'Mobiles', 'Mobile Products', '2017-01-25 00:19:32', ''),
(5, 'Tablet', 'Tablet Products', '2017-01-25 00:19:54', ''),
(6, 'HeadPhones', 'HeadPhone Products', '2017-02-21 00:18:52', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '3', 1, '2017-03-08 00:32:57', 'COD', NULL),
(4, 1, '17', 1, '2017-03-08 21:14:17', 'COD', 'in Process'),
(5, 1, '3', 1, '2017-03-09 00:21:38', 'COD', NULL),
(6, 1, '4', 1, '2017-03-09 00:21:38', 'COD', NULL),
(7, 4, '2', 2, '2018-11-27 03:07:29', 'Debit / Credit card', 'Delivered'),
(8, 4, '12', 2, '2018-11-29 15:51:51', 'Debit / Credit card', NULL),
(9, 4, '2', 3, '2018-11-29 22:28:14', 'Internet Banking', NULL),
(10, 4, '3', 1, '2018-11-30 01:26:44', 'Debit / Credit card', NULL),
(11, 4, '4', 1, '2018-12-02 05:21:44', 'Debit / Credit card', NULL),
(12, 4, '2', 2, '2018-12-02 15:17:08', 'COD', NULL),
(13, 4, '2', 2, '2018-12-02 15:18:42', 'COD', NULL),
(14, 4, '7', 1, '2018-12-02 22:27:14', 'Debit / Credit card', NULL),
(15, 4, '4', 1, '2018-12-02 22:44:40', 'Internet Banking', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-11 00:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-11 00:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-11 00:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-11 00:50:36'),
(5, 7, 'Delivered', 'Delivered on Time!', '2018-12-02 23:29:39');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-27 01:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-27 01:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-27 01:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `productVideo` varchar(250) NOT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `productVideo`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(2, 4, 17, 'Apple iPhone 6 (Silver, 16 GB)', 'Apple INC', 1100, 0, '<div class=\"_2PF8IO\" style=\"box-sizing: border-box; margin: 0px 0px 0px 110px; padding: 0px; flex: 1 1 0%; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px;\"><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">1 GB RAM | 16 GB ROM |</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">4.7 inch Retina HD Display</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">8MP Primary Camera | 1.2MP Front</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Li-Ion Battery</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">A8 Chip with 64-bit Architecture and M8 Motion Co-processor Processor</li></ul></div>', 'apple-iphone-6-1.jpeg', 'apple-iphone-6-2.jpeg', 'apple-iphone-6-3.jpeg', '', 0, 'In Stock', '2017-01-30 21:59:00', ''),
(3, 4, 18, 'Samsung Note 4 (Gold, 32 GB)', 'Redmi', 899, 1000, '<br><div><ol><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5.5 inch Full HD Display<br></li><li>13MP Primary Camera | 5MP Front<br></li><li>4100 mAh Li-Polymer Battery<br></li><li>Qualcomm Snapdragon 625 64-bit Processor<br></li></ol></div>', 'mi-redmi-note-4-1.jpeg', 'mi-redmi-note-4-2.jpeg', 'mi-redmi-note-4-3.jpeg', '', 0, 'In Stock', '2017-02-04 09:03:15', ''),
(4, 4, 19, 'Google K6 Power (Silver, 32 GB) ', 'Google', 600, 0, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5 inch Full HD Display<br></li><li>13MP Primary Camera | 8MP Front<br></li><li>4000 mAh Li-Polymer Battery<br></li><li>Qualcomm Snapdragon 430 Processor<br></li></ul>', 'lenovo-k6-power-k33a42-1.jpeg', 'lenovo-k6-power-k33a42-2.jpeg', 'lenovo-k6-power-k33a42-3.jpeg', '', 45, 'In Stock', '2017-02-04 09:04:43', ''),
(5, 4, 17, 'Apple Vibe K5 Note (Gold, 32 GB)  ', 'Apple', 990, 0, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5.5 inch Full HD Display<br></li><li>13MP Primary Camera | 8MP Front<br></li><li>3500 mAh Li-Ion Polymer Battery<br></li><li>Helio P10 64-bit Processor<br></li></ul>', 'lenovo-k5-note-pa330010in-1.jpeg', 'lenovo-k5-note-pa330116in-2.jpeg', 'lenovo-k5-note-pa330116in-3.jpeg', '', 0, 'In Stock', '2017-02-04 09:06:17', ''),
(7, 4, 4, 'SAMSUNG Galaxy On5', 'SAMSUNG', 490, 0, '<ul><li>1.5 GB RAM | 8 GB ROM | Expandable Upto 128 GB<br></li><li>5 inch HD Display<br></li><li>8MP Primary Camera | 5MP Front<br></li><li>2600 mAh Li-Ion Battery<br></li><li>Exynos 3475 Processor<br></li></ul>', 'samsung-galaxy-on7-sm-1.jpeg', 'samsung-galaxy-on5-sm-2.jpeg', 'samsung-galaxy-on5-sm-3.jpeg', '', 20, 'In Stock', '2017-02-04 09:10:17', ''),
(11, 3, 16, 'Acer ES 15 Pentium Quad Core', 'Acer', 560, 0, '<ul><li>Intel Pentium Quad Core Processor ( )<br></li><li>4 GB DDR3 RAM<br></li><li>Linux/Ubuntu Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul>', 'acer-aspire-notebook-original-1.jpeg', 'acer-aspire-notebook-original-2.jpeg', 'acer-aspire-notebook-original-3.jpeg', '', 0, 'In Stock', '2017-02-04 09:26:17', ''),
(12, 3, 16, 'Acer Canvas Laptab II (WIFI) Atom 4th Gen', 'Acer', 500, 0, '<ul><li>Intel Atom Processor ( 4th Gen )<br></li><li>2 GB DDR3 RAM<br></li><li>32 bit Windows 10 Operating System<br></li><li>11.6 inch Touchscreen Display<br></li></ul>', 'micromax-lt777w-2-in-1-laptop-original-1.jpeg', 'micromax-lt777w-2-in-1-laptop-original-2.jpeg', 'micromax-lt777w-2-in-1-laptop-original-3.jpeg', '', 0, 'In Stock', '2017-02-04 09:28:17', ''),
(13, 3, 13, 'HP Core i5 5th Gen', 'HP', 1200, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">HP Core i5 5th Gen - (4 GB/1 TB HDD/Windows 10 Home/2 GB Graphics) N8M28PA 15-ac123tx Notebook</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(15.6 inch, Turbo SIlver, 2.19 kg)</span><br><div><ul><li>Intel Core i5 Processor ( 5th Gen )<br></li><li>4 GB DDR3 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul></div>', 'hp-notebook-original-1.jpeg', 'hp-notebook-original-2.jpeg', 'hp-notebook-original-3.jpeg', '', 0, 'In Stock', '2017-02-04 09:30:24', ''),
(15, 3, 15, 'Apple MacBook Air (13\", 1.8GHz dual-core Intel Core i5, 8GB RAM, 128GB SSD) - Silver', 'Apple', 1500, 250, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">The Wimpy Kid Do -It- Yourself Book</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(English, Paperback, Jeff Kinney)</span><br><div><ul><li>Language: English<br></li><li>Binding: Paperback<br></li><li>Publisher: Penguin Books Ltd<br></li><li>ISBN: 9780141339665, 0141339667<br></li><li>Edition: 1<br></li></ul></div>', '1.jpg', '2.jpg', '3.jpg', '', 50, 'Out of Stock', '2017-02-04 09:35:13', ''),
(16, 6, 22, 'Skull Candy Headphone 1', 'XYZ', 240, 0, '<ul><li>Language: English<br></li><li>Binding: Paperback<br></li><li>Publisher: Scholastic<br></li><li>ISBN: 9789351032083, 9351032086<br></li><li>Edition: 2015<br></li><li>Pages: 176<br></li></ul>', '1.png', '1.png', '1.png', '', 30, 'In Stock', '2017-02-04 09:36:23', ''),
(19, 6, 23, 'Bose HeadPhone( Black, Black)', 'Bose', 379, 0, '<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Colour: White, White</li><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;\">Outer Material: Denim</li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><br></div></li></ul>', '1.png', '2.png', '3.png', '', 45, 'In Stock', '2018-12-07 01:16:03', ''),
(20, 6, 12, 'Bose Headphone 2 (Gray, Gray)', 'Bose', 299, 50, '<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Colour: Blue</li><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;\">Closure: Laced</li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Weight</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>200 g (per single Shoe) - Weight of the product may vary depending on size.</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Style</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>Panel and Stitch Detail, Textured Detail</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Tip Shape</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>Round</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Season</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>AW16</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Closure</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>Laced</b></li></ul></li></ul>', '1.jpg', '2.jpg', '3.jpg', '', 0, 'In Stock', '2018-10-11 00:19:22', ''),
(21, 5, 20, 'Apple Ipad 1', 'Apple', 300, 10, 'abc', '1.jpg', '2.jpg', '3.jpg', '1.mp4', NULL, 'In Stock', '2018-11-30 00:31:19', NULL),
(22, 5, 21, 'SAMSUNG TABLET 1', 'SAMSUNG', 300, 20, 'xyz', '1.jpg', '2.jpg', '3.jpg', '', NULL, 'In STock', '2018-11-30 00:34:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(13, 3, 'Hp', '2018-11-29 23:25:38', NULL),
(14, 3, 'Dell', '2018-11-29 23:25:55', NULL),
(15, 3, 'MacBook', '2018-11-29 23:26:21', NULL),
(16, 3, 'Acer', '2018-11-29 23:26:21', NULL),
(17, 4, 'Iphone', '2018-11-29 23:27:30', NULL),
(18, 4, 'Samsung Phone', '2018-11-29 23:27:30', NULL),
(19, 4, 'Google', '2018-11-29 23:27:41', NULL),
(20, 5, 'Ipad', '2018-11-29 23:28:28', NULL),
(21, 5, 'Samsung Tablet', '2018-11-29 23:28:28', NULL),
(22, 6, 'SkullCandy', '2018-11-29 23:29:01', NULL),
(23, 6, 'Bose', '2018-11-29 23:29:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(23, 'hgfhgf@gmass.com', 0x3a3a3100000000000000000000000000, '2018-04-29 13:30:40', '', 1),
(24, 'mandal.rahul2@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-27 03:07:23', '27-11-2018 08:42:29 AM', 1),
(25, 'mandal.rahul2@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-29 15:51:17', '30-11-2018 03:56:41 AM', 1),
(26, 'mandal.rahul2@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-29 22:27:37', '30-11-2018 04:00:51 AM', 1),
(27, 'mandal.rahul2@gmail.com', 0x3a3a3100000000000000000000000000, '2018-11-30 00:51:39', NULL, 1),
(28, 'mandal.rahul2@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-02 02:32:05', NULL, 0),
(29, 'mandal.rahul2@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-02 02:32:18', NULL, 0),
(30, 'mandal.rahul2@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-02 02:33:55', NULL, 1),
(31, 'mandal.rahul2@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-02 04:10:34', NULL, 1),
(32, 'mandal.rahul2@gmail.com', 0x3132372e302e302e3100000000000000, '2018-12-02 15:13:15', NULL, 1),
(33, 'mandal.rahul2@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-02 15:47:13', NULL, 1),
(34, 'mandal.rahul2@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-02 19:57:51', '03-12-2018 02:56:33 AM', 1),
(35, 'mandal.rahul2@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-02 21:35:21', '03-12-2018 03:08:14 AM', 1),
(36, 'mandal.rahul2@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-02 21:38:21', '03-12-2018 03:09:11 AM', 1),
(37, 'mandal.rahul2@gmail.com', 0x3a3a3100000000000000000000000000, '2018-12-02 21:39:15', '03-12-2018 04:20:47 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` varchar(10) DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` varchar(10) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(3, 'hg', 'hgfhgf@gmass.com', 1121312312, '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', '0', '', '', '', '0', '2018-04-29 13:30:32', ''),
(4, 'Rahul Mandal', 'mandal.rahul2@gmail.com', 5198600396, '26b47461aa5d9fe1f2ac62983ee18ba8', '120 Old Carriage Drive', 'Ontario', 'Kitchener', 'N2P1Z3', '100 Old Carriage Drive', 'Ontario', 'Kitchener', 'N2P1Z3', '2018-11-27 03:07:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 23:53:17'),
(4, 4, 9, '2018-11-27 03:09:30'),
(5, 4, 12, '2018-12-02 15:17:55'),
(6, 4, 15, '2018-12-02 21:41:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
