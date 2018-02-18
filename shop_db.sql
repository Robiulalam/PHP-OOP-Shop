-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2018 at 03:57 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminEmail` varchar(255) NOT NULL,
  `adminPass` varchar(32) NOT NULL,
  `level` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminUser`, `adminEmail`, `adminPass`, `level`) VALUES
(1, 'Robi ul alam', 'admin', 'admin@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(1, 'Ascer'),
(2, 'Nokia'),
(3, 'Lava'),
(4, 'Samsung'),
(5, 'Canon');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `sId`, `productId`, `productName`, `price`, `quantity`, `image`) VALUES
(10, 'oheoi5e8jr3f2i3gnpn0ccsna4', 10, ' Lorem Ipsum available', 7000.00, 1, 'uploads/e8939bde8d.jpg'),
(14, 'qtedh1r7be10n47uks6h24bp22', 4, 'Where can I get some?', 8100.00, 1, 'uploads/a7c89ef4db.jpg'),
(15, 'e2201hh8a0opj5pklqmhpffct0', 10, ' Lorem Ipsum available', 7000.00, 1, 'uploads/e8939bde8d.jpg'),
(16, 'te2n8dqaeif3am0b6rk0r96d12', 10, ' Lorem Ipsum available', 7000.00, 1, 'uploads/e8939bde8d.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(1, 'Desktop'),
(3, 'Mobile Phones'),
(4, 'Accessories'),
(5, 'Software'),
(6, 'Sports Fitness'),
(7, 'Footwear'),
(8, 'Jewellery'),
(10, 'Footwear'),
(11, 'Camara');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(32) NOT NULL,
  `country` varchar(30) NOT NULL,
  `zip` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zip`, `phone`, `email`, `pass`) VALUES
(3, 'Robi ul alam', 'Banani', 'Dhaka', 'Bangladesh', '1212', '01829268780', 'robi@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `cmrId`, `productId`, `productName`, `quantity`, `price`, `image`, `date`, `status`) VALUES
(1, 3, 10, ' Lorem Ipsum available', 1, 7000.00, 'uploads/e8939bde8d.jpg', '2018-01-19 23:28:39', 0),
(2, 3, 19, 'Samsung S3', 1, 13000.00, 'uploads/a35e700447.jpg', '2018-01-23 08:47:12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `body` text NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `body`, `price`, `image`, `type`) VALUES
(2, 'Lorem Ipsum is simply dummy', 8, 3, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br /><br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 10000.00, 'uploads/85c120f68a.jpg', 0),
(3, 'Why do we use it?', 6, 4, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br /><br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br /><br /><br /></p>', 8000.00, 'uploads/b0e0927a6a.jpg', 0),
(4, 'Where can I get some?', 6, 1, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br /><br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br /><br /><br /></p>', 8100.00, 'uploads/a7c89ef4db.jpg', 1),
(5, ' function in php returns a ', 7, 2, '<p>function in php returns a list of response headers send Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br /><br />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br /><br /><br /></p>', 15000.00, 'uploads/baca7805c5.jpg', 0),
(6, 'generator on the Internet.', 10, 3, '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 11223.00, 'uploads/529b64c93c.jpg', 0),
(8, ' It uses a dictionary of ', 6, 2, '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 5000.00, 'uploads/ac18336809.jpg', 0),
(9, ' It uses a dictionary of ', 3, 4, '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 200000.00, 'uploads/e52c50a49f.gif', 1),
(10, ' Lorem Ipsum available', 7, 3, '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 7000.00, 'uploads/e8939bde8d.jpg', 0),
(12, 'Praesent finibus velit', 5, 4, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent lobortis blandit fringilla. Aliquam non faucibus libero. Duis sollicitudin dapibus nisi vel fermentum. Nullam lobortis feugiat arcu ac imperdiet. Nulla et ante vel nibh scelerisque placerat id non massa. Praesent finibus velit non eros convallis, quis efficitur erat congue. Vestibulum dapibus mauris a nunc semper facilisis. Pellentesque iaculis hendrerit erat quis lobortis. Vestibulum placerat ornare mauris sit amet gravida. Praesent ornare neque non ligula vulputate suscipit.</p>\r\n<p>Phasellus leo neque, egestas eu pharetra sit amet, pretium sed arcu. In efficitur scelerisque tempor. Nunc neque quam, maximus porttitor velit nec, mollis consequat purus. Nulla ut dolor sed lectus euismod commodo. Aliquam eget ullamcorper velit, id luctus nulla. Aenean dui purus, euismod eget tincidunt a, vestibulum vel elit. Suspendisse eu nunc at lorem consectetur blandit. Nunc feugiat, mauris id aliquam vehicula, urna diam imperdiet felis, et fringilla nibh ligula a dolor. Aenean ligula augue, accumsan vitae ultrices vel, fringilla eu arcu. Nunc dapibus porttitor urna, lacinia sollicitudin turpis porta et. Duis tincidunt elementum nunc ac egestas. Aliquam ornare felis in metus dictum feugiat. Proin pretium lobortis nisi, ac euismod lacus aliquam dapibus. Fusce volutpat tristique pretium. Nullam lobortis turpis nisl, sit amet luctus quam porta non. Nam pulvinar pellentesque lectus eget efficitur.</p>', 15000.00, 'uploads/7254d6e48d.jpg', 0),
(13, 'Nunc semper sit amet mi nec', 3, 2, '<p>Nunc semper sit amet mi nec lobortis. Fusce ac tristique augue, in accumsan sem. Curabitur egestas viverra varius. Duis ut libero in lectus aliquam elementum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse sagittis malesuada gravida. Integer convallis sem ac varius convallis. Etiam commodo condimentum porttitor. Ut vitae dignissim sem. Ut eu consequat erat. Phasellus porttitor, dolor quis tempus mattis, diam mauris mattis tellus, ut tempus eros turpis sed quam. Morbi sit amet massa at est interdum egestas. Proin non porta sem, a aliquam dui. Suspendisse vitae auctor ex. Proin egestas tortor eu turpis ultrices sollicitudin.</p>\r\n<p>Quisque a consectetur sem. Maecenas vitae tortor et quam convallis dapibus. In sagittis consequat sodales. Donec molestie mollis elit, nec consequat purus. Nullam blandit sagittis condimentum. Donec sit amet felis cursus, sagittis ante nec, blandit massa. Donec ullamcorper, eros quis volutpat pellentesque, nisi orci ullamcorper ex, a dignissim lorem diam sit amet tellus. Fusce commodo dictum lacinia. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla tristique justo at tempor luctus. Nunc accumsan rhoncus malesuada. Donec sollicitudin arcu at felis mollis, at imperdiet eros ultricies. Aliquam fermentum lorem quis lacinia porta.</p>\r\n<p>Curabitur fringilla nibh urna, id pellentesque dui facilisis vitae. Donec lorem magna, mattis ut mi vitae, facilisis molestie nisi. Sed in finibus urna. Phasellus quis sollicitudin ipsum. Duis fermentum efficitur metus non tempor. Aliquam erat volutpat. Phasellus congue mollis semper. Phasellus aliquet faucibus faucibus. Ut suscipit tristique lacinia.</p>', 25000.00, 'uploads/0fd2fe85c7.jpg', 0),
(14, 'F1 Camara', 11, 5, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent lobortis blandit fringilla. Aliquam non faucibus libero. Duis sollicitudin dapibus nisi vel fermentum. Nullam lobortis feugiat arcu ac imperdiet. Nulla et ante vel nibh scelerisque placerat id non massa. Praesent finibus velit non eros convallis, quis efficitur erat congue. Vestibulum dapibus mauris a nunc semper facilisis. Pellentesque iaculis hendrerit erat quis lobortis. Vestibulum placerat ornare mauris sit amet gravida. Praesent ornare neque non ligula vulputate suscipit.</p>\r\n<p>Phasellus leo neque, egestas eu pharetra sit amet, pretium sed arcu. In efficitur scelerisque tempor. Nunc neque quam, maximus porttitor velit nec, mollis consequat purus. Nulla ut dolor sed lectus euismod commodo. Aliquam eget ullamcorper velit, id luctus nulla. Aenean dui purus, euismod eget tincidunt a, vestibulum vel elit. Suspendisse eu nunc at lorem consectetur blandit. Nunc feugiat, mauris id aliquam vehicula, urna diam imperdiet felis, et fringilla nibh ligula a dolor. Aenean ligula augue, accumsan vitae ultrices vel, fringilla eu arcu. Nunc dapibus porttitor urna, lacinia sollicitudin turpis porta et. Duis tincidunt elementum nunc ac egestas. Aliquam ornare felis in metus dictum feugiat. Proin pretium lobortis nisi, ac euismod lacus aliquam dapibus. Fusce volutpat tristique pretium. Nullam lobortis turpis nisl, sit amet luctus quam porta non. Nam pulvinar pellentesque lectus eget efficitur.</p>', 5000.00, 'uploads/6dfa8dd662.jpg', 0),
(15, 'F2', 11, 5, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent lobortis blandit fringilla. Aliquam non faucibus libero. Duis sollicitudin dapibus nisi vel fermentum. Nullam lobortis feugiat arcu ac imperdiet. Nulla et ante vel nibh scelerisque placerat id non massa. Praesent finibus velit non eros convallis, quis efficitur erat congue. Vestibulum dapibus mauris a nunc semper facilisis. Pellentesque iaculis hendrerit erat quis lobortis. Vestibulum placerat ornare mauris sit amet gravida. Praesent ornare neque non ligula vulputate suscipit.</p>\r\n<p>Phasellus leo neque, egestas eu pharetra sit amet, pretium sed arcu. In efficitur scelerisque tempor. Nunc neque quam, maximus porttitor velit nec, mollis consequat purus. Nulla ut dolor sed lectus euismod commodo. Aliquam eget ullamcorper velit, id luctus nulla. Aenean dui purus, euismod eget tincidunt a, vestibulum vel elit. Suspendisse eu nunc at lorem consectetur blandit. Nunc feugiat, mauris id aliquam vehicula, urna diam imperdiet felis, et fringilla nibh ligula a dolor. Aenean ligula augue, accumsan vitae ultrices vel, fringilla eu arcu. Nunc dapibus porttitor urna, lacinia sollicitudin turpis porta et. Duis tincidunt elementum nunc ac egestas. Aliquam ornare felis in metus dictum feugiat. Proin pretium lobortis nisi, ac euismod lacus aliquam dapibus. Fusce volutpat tristique pretium. Nullam lobortis turpis nisl, sit amet luctus quam porta non. Nam pulvinar pellentesque lectus eget efficitur.</p>', 7000.00, 'uploads/912ef1e79c.jpg', 0),
(16, 'F5 Camara', 11, 5, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent lobortis blandit fringilla. Aliquam non faucibus libero. Duis sollicitudin dapibus nisi vel fermentum. Nullam lobortis feugiat arcu ac imperdiet. Nulla et ante vel nibh scelerisque placerat id non massa. Praesent finibus velit non eros convallis, quis efficitur erat congue. Vestibulum dapibus mauris a nunc semper facilisis. Pellentesque iaculis hendrerit erat quis lobortis. Vestibulum placerat ornare mauris sit amet gravida. Praesent ornare neque non ligula vulputate suscipit.</p>\r\n<p>Phasellus leo neque, egestas eu pharetra sit amet, pretium sed arcu. In efficitur scelerisque tempor. Nunc neque quam, maximus porttitor velit nec, mollis consequat purus. Nulla ut dolor sed lectus euismod commodo. Aliquam eget ullamcorper velit, id luctus nulla. Aenean dui purus, euismod eget tincidunt a, vestibulum vel elit. Suspendisse eu nunc at lorem consectetur blandit. Nunc feugiat, mauris id aliquam vehicula, urna diam imperdiet felis, et fringilla nibh ligula a dolor. Aenean ligula augue, accumsan vitae ultrices vel, fringilla eu arcu. Nunc dapibus porttitor urna, lacinia sollicitudin turpis porta et. Duis tincidunt elementum nunc ac egestas. Aliquam ornare felis in metus dictum feugiat. Proin pretium lobortis nisi, ac euismod lacus aliquam dapibus. Fusce volutpat tristique pretium. Nullam lobortis turpis nisl, sit amet luctus quam porta non. Nam pulvinar pellentesque lectus eget efficitur.</p>', 11000.00, 'uploads/ef09597e8a.png', 1),
(17, 'Samsung F5', 3, 4, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent lobortis blandit fringilla. Aliquam non faucibus libero. Duis sollicitudin dapibus nisi vel fermentum. Nullam lobortis feugiat arcu ac imperdiet. Nulla et ante vel nibh scelerisque placerat id non massa. Praesent finibus velit non eros convallis, quis efficitur erat congue. Vestibulum dapibus mauris a nunc semper facilisis. Pellentesque iaculis hendrerit erat quis lobortis. Vestibulum placerat ornare mauris sit amet gravida. Praesent ornare neque non ligula vulputate suscipit.</p>\r\n<p>Phasellus leo neque, egestas eu pharetra sit amet, pretium sed arcu. In efficitur scelerisque tempor. Nunc neque quam, maximus porttitor velit nec, mollis consequat purus. Nulla ut dolor sed lectus euismod commodo. Aliquam eget ullamcorper velit, id luctus nulla. Aenean dui purus, euismod eget tincidunt a, vestibulum vel elit. Suspendisse eu nunc at lorem consectetur blandit. Nunc feugiat, mauris id aliquam vehicula, urna diam imperdiet felis, et fringilla nibh ligula a dolor. Aenean ligula augue, accumsan vitae ultrices vel, fringilla eu arcu. Nunc dapibus porttitor urna, lacinia sollicitudin turpis porta et. Duis tincidunt elementum nunc ac egestas. Aliquam ornare felis in metus dictum feugiat. Proin pretium lobortis nisi, ac euismod lacus aliquam dapibus. Fusce volutpat tristique pretium. Nullam lobortis turpis nisl, sit amet luctus quam porta non. Nam pulvinar pellentesque lectus eget efficitur.</p>', 15000.00, 'uploads/15c80a587c.png', 0),
(18, 'Samsung G-neo', 3, 4, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent lobortis blandit fringilla. Aliquam non faucibus libero. Duis sollicitudin dapibus nisi vel fermentum. Nullam lobortis feugiat arcu ac imperdiet. Nulla et ante vel nibh scelerisque placerat id non massa. Praesent finibus velit non eros convallis, quis efficitur erat congue. Vestibulum dapibus mauris a nunc semper facilisis. Pellentesque iaculis hendrerit erat quis lobortis. Vestibulum placerat ornare mauris sit amet gravida. Praesent ornare neque non ligula vulputate suscipit.</p>\r\n<p>Phasellus leo neque, egestas eu pharetra sit amet, pretium sed arcu. In efficitur scelerisque tempor. Nunc neque quam, maximus porttitor velit nec, mollis consequat purus. Nulla ut dolor sed lectus euismod commodo. Aliquam eget ullamcorper velit, id luctus nulla. Aenean dui purus, euismod eget tincidunt a, vestibulum vel elit. Suspendisse eu nunc at lorem consectetur blandit. Nunc feugiat, mauris id aliquam vehicula, urna diam imperdiet felis, et fringilla nibh ligula a dolor. Aenean ligula augue, accumsan vitae ultrices vel, fringilla eu arcu. Nunc dapibus porttitor urna, lacinia sollicitudin turpis porta et. Duis tincidunt elementum nunc ac egestas. Aliquam ornare felis in metus dictum feugiat. Proin pretium lobortis nisi, ac euismod lacus aliquam dapibus. Fusce volutpat tristique pretium. Nullam lobortis turpis nisl, sit amet luctus quam porta non. Nam pulvinar pellentesque lectus eget efficitur.</p>', 18000.00, 'uploads/a01db99ef3.jpg', 1),
(19, 'Samsung S3', 3, 4, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent lobortis blandit fringilla. Aliquam non faucibus libero. Duis sollicitudin dapibus nisi vel fermentum. Nullam lobortis feugiat arcu ac imperdiet. Nulla et ante vel nibh scelerisque placerat id non massa. Praesent finibus velit non eros convallis, quis efficitur erat congue. Vestibulum dapibus mauris a nunc semper facilisis. Pellentesque iaculis hendrerit erat quis lobortis. Vestibulum placerat ornare mauris sit amet gravida. Praesent ornare neque non ligula vulputate suscipit.</p>\r\n<p>Phasellus leo neque, egestas eu pharetra sit amet, pretium sed arcu. In efficitur scelerisque tempor. Nunc neque quam, maximus porttitor velit nec, mollis consequat purus. Nulla ut dolor sed lectus euismod commodo. Aliquam eget ullamcorper velit, id luctus nulla. Aenean dui purus, euismod eget tincidunt a, vestibulum vel elit. Suspendisse eu nunc at lorem consectetur blandit. Nunc feugiat, mauris id aliquam vehicula, urna diam imperdiet felis, et fringilla nibh ligula a dolor. Aenean ligula augue, accumsan vitae ultrices vel, fringilla eu arcu. Nunc dapibus porttitor urna, lacinia sollicitudin turpis porta et. Duis tincidunt elementum nunc ac egestas. Aliquam ornare felis in metus dictum feugiat. Proin pretium lobortis nisi, ac euismod lacus aliquam dapibus. Fusce volutpat tristique pretium. Nullam lobortis turpis nisl, sit amet luctus quam porta non. Nam pulvinar pellentesque lectus eget efficitur.</p>', 13000.00, 'uploads/a35e700447.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wlist`
--

CREATE TABLE `tbl_wlist` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_wlist`
--

INSERT INTO `tbl_wlist` (`id`, `cmrId`, `productId`, `productName`, `price`, `image`) VALUES
(16, 3, 10, ' Lorem Ipsum available', 7000.00, 'uploads/e8939bde8d.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `tbl_wlist`
--
ALTER TABLE `tbl_wlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_wlist`
--
ALTER TABLE `tbl_wlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
