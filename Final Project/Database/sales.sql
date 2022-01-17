-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2022 at 04:48 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sales`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(24) NOT NULL,
  `password` varchar(12) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `middlename` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `firstname`, `middlename`, `lastname`) VALUES
(1, 'admin', 'admin', 'Administrator', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(3, 'Beverages'),
(4, 'Medicines'),
(5, 'Snacks');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `membership_number` varchar(100) NOT NULL,
  `prod_name` varchar(550) NOT NULL,
  `expected_date` varchar(500) NOT NULL,
  `note` varchar(500) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `address`, `contact`, `membership_number`, `prod_name`, `expected_date`, `note`) VALUES
(2, 'Umar Farooq', 'N/A', 'N/A', '200', 'Lays (Salted)', '2022-01-05', 'Unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(200) NOT NULL,
  `gen_name` varchar(200) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `o_price` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `onhand_qty` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `qty_sold` int(10) NOT NULL,
  `expiry_date` varchar(500) NOT NULL,
  `date_arrival` varchar(500) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_code`, `gen_name`, `product_name`, `cost`, `o_price`, `price`, `profit`, `supplier`, `onhand_qty`, `qty`, `qty_sold`, `expiry_date`, `date_arrival`) VALUES
(2, 'PC-0ee5', 'Beverages', 'Coca Cola 1.5L', '', '80', '120', '40', 'M Saad', 0, 90, 100, '2022-02-03', '2022-01-01'),
(3, 'PC-ec9a', 'Medicines', 'Zuring 10mg', '', '310', '400', '90', 'M Saad', 0, 248, 250, '2022-06-03', '2021-12-19'),
(4, 'PC-d0af', 'Snacks', 'Lays (Salted)', '', '2', '10', '8', 'M Saad', 0, 41, 50, '2022-12-03', '2021-12-03'),
(5, 'PC-65cf', 'Medicines', 'Paracetamol', '', '12', '20', '8', 'M Saad', 0, 49, 50, '2022-02-04', '2022-01-02');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE IF NOT EXISTS `purchases` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `suplier` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`transaction_id`, `invoice_number`, `date`, `suplier`, `remarks`) VALUES
(2, 'RS-10041', '', 'M Saad', '');

-- --------------------------------------------------------

--
-- Table structure for table `purchases_item`
--

CREATE TABLE IF NOT EXISTS `purchases_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `purchases_item`
--

INSERT INTO `purchases_item` (`id`, `name`, `qty`, `cost`, `invoice`) VALUES
(4, 'PC-ec9a', 2, '800', 'RS-10041'),
(5, 'PC-d0af', 1, '10', 'RS-10041');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE IF NOT EXISTS `sales` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(100) NOT NULL,
  `cashier` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `due_date` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `balance` varchar(100) NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`transaction_id`, `invoice_number`, `cashier`, `date`, `type`, `amount`, `profit`, `due_date`, `name`, `balance`) VALUES
(1, 'RS-0262328', 'Admin', '02/08/18', 'cash', '150', '85', '200', '', ''),
(2, 'RS-233323', 'Admin', '02/08/18', 'cash', '13650', '7735', '14000', '', ''),
(3, 'RS-0233302', 'Cashier Pharmacy', '02/12/18', 'cash', '150', '85', '100', '', ''),
(4, 'RS-02003029', 'Administrator', '01/03/22', 'cash', '150', '85', '150', 'Furqan', ''),
(5, 'RS-2032350', 'Administrator', '01/03/22', 'cash', '1220', '348', '1300', 'Umar', ''),
(6, 'RS-935020', 'Administrator', '01/05/22', 'cash', '10', '8', '10', '', ''),
(7, 'RS-222440', 'Umar Farooq', '01/05/22', 'cash', '800', '180', '800', 'Umar Farooq', ''),
(8, 'RS-233287', 'Umar Farooq', '01/05/22', 'cash', '120', '40', '120', '', ''),
(9, 'SR-500003', 'Umar Farooq', '01/05/22', 'cash', '10', '8', '10', 'M Saad', ''),
(10, 'RS-235422', 'Umar Farooq', '01/05/22', 'cash', '120', '40', '120', '', ''),
(11, 'RS-08302', 'Umar Farooq', '01/05/22', 'cash', '120', '40', '120', '', ''),
(12, 'RS-032003', 'Umar Farooq', '01/06/22', 'cash', '400', '144', '400', 'Umar', '');

-- --------------------------------------------------------

--
-- Table structure for table `sales_order`
--

CREATE TABLE IF NOT EXISTS `sales_order` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `product_code` varchar(150) NOT NULL,
  `gen_name` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` varchar(100) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `date` varchar(500) NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `sales_order`
--

INSERT INTO `sales_order` (`transaction_id`, `invoice`, `product`, `qty`, `amount`, `profit`, `product_code`, `gen_name`, `name`, `price`, `discount`, `date`) VALUES
(1, 'RS-0262328', '1', '1', '150', '85', 'RBH-f881', 'Drinks', 'Coke', '150', '', '02/08/18'),
(2, 'RS-233323', '1', '91', '13650', '7735', 'RBH-f881', 'Drinks', 'Coke ', '150', '', '02/08/18'),
(3, 'RS-0233302', '1', '1', '150', '85', 'RBH-f881', 'Drinks', 'Coke ', '150', '', '02/12/18'),
(4, 'RS-86033', '1', '1', '150', '85', 'RBH-f881', 'Drinks', 'Coke ', '150', '', '02/13/18'),
(5, 'RS-86033', '1', '1', '150', '85', 'RBH-f881', 'Drinks', 'Coke ', '150', '', '02/13/18'),
(6, 'RS-23332024', '1', '1', '150', '85', 'RBH-f881', 'Drinks', 'Coke ', '150', '', '02/25/18'),
(7, 'RS-0202829', '1', '1', '150', '85', 'RBH-f881', 'Drinks', 'Coke ', '150', '', '01/03/22'),
(8, 'RS-02003029', '1', '1', '150', '85', 'RBH-f881', 'Drinks', 'Coke ', '150', '', '01/03/22'),
(9, 'RS-2032350', '3', '2', '800', '180', 'PC-ec9a', 'Medicines', 'Zuring 10mg', '400', '', '01/03/22'),
(10, 'RS-2032350', '2', '3', '360', '120', 'PC-0ee5', 'Beverages', 'Coca Cola 1.5L', '120', '', '01/03/22'),
(11, 'RS-2032350', '4', '6', '60', '48', 'PC-d0af', 'Snacks', 'Lays (Salted)', '10', '', '01/03/22'),
(13, 'RS-935020', '4', '1', '10', '8', 'PC-d0af', 'Snacks', 'Lays (Salted)', '10', '', '01/05/22'),
(14, 'RS-222440', '3', '2', '800', '180', 'PC-ec9a', 'Medicines', 'Zuring 10mg', '400', '', '01/05/22'),
(15, 'RS-233287', '2', '1', '120', '40', 'PC-0ee5', 'Beverages', 'Coca Cola 1.5L', '120', '', '01/05/22'),
(16, 'SR-500003', '4', '1', '10', '8', 'PC-d0af', 'Snacks', 'Lays (Salted)', '10', '', '01/05/22'),
(17, 'RS-235422', '2', '1', '120', '40', 'PC-0ee5', 'Beverages', 'Coca Cola 1.5L', '120', '', '01/05/22'),
(18, 'RS-3022', '2', '1', '120', '40', 'PC-0ee5', 'Beverages', 'Coca Cola 1.5L', '120', '', '01/05/22'),
(19, 'RS-08302', '2', '1', '120', '40', 'PC-0ee5', 'Beverages', 'Coca Cola 1.5L', '120', '', '01/05/22'),
(20, 'RS-032003', '2', '3', '360', '120', 'PC-0ee5', 'Beverages', 'Coca Cola 1.5L', '120', '', '01/06/22'),
(21, 'RS-032003', '4', '2', '20', '16', 'PC-d0af', 'Snacks', 'Lays (Salted)', '10', '', '01/06/22'),
(22, 'RS-032003', '5', '1', '20', '8', 'PC-65cf', 'Medicines', 'Paracetamol', '20', '', '01/06/22');

-- --------------------------------------------------------

--
-- Table structure for table `supliers`
--

CREATE TABLE IF NOT EXISTS `supliers` (
  `suplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `suplier_name` varchar(100) NOT NULL,
  `suplier_address` varchar(100) NOT NULL,
  `suplier_contact` varchar(100) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `note` varchar(500) NOT NULL,
  PRIMARY KEY (`suplier_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `supliers`
--

INSERT INTO `supliers` (`suplier_id`, `suplier_name`, `suplier_address`, `suplier_contact`, `contact_person`, `note`) VALUES
(3, 'Usman', 'N/A', 'Usman', '0300-0010011', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `position`) VALUES
(4, 'Cashier', 'Cashier123', 'Furqan', 'Cashier'),
(5, 'Administrator', 'Admin123', 'Umar', 'Admin'),
(6, 'Pharma', 'Pharma123', 'Ali', 'Pharmacist'),
(7, 'Manager', 'Manager123', 'Habib', 'Manager');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
