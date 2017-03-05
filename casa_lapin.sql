-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2017 at 01:33 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `casa_lapin`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Cus_ID` int(11) NOT NULL,
  `Cus_Name` varchar(30) DEFAULT NULL,
  `Cus_Address` varchar(150) DEFAULT NULL,
  `Cus_Email` text,
  `Cus_Tel` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee_info`
--

CREATE TABLE `employee_info` (
  `Emp_ID` int(11) NOT NULL,
  `Emp_Firstname` varchar(30) NOT NULL,
  `Emp_Lastname` varchar(30) NOT NULL,
  `Emp_Nickname` varchar(10) NOT NULL,
  `Emp_Tel` int(10) NOT NULL,
  `Emp_Position` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `INV_ID` int(11) NOT NULL,
  `INV_Time` time NOT NULL,
  `INV_DateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Emp_Nickname` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_detail`
--

CREATE TABLE `invoice_detail` (
  `Order_ID` int(3) NOT NULL,
  `Pro_ID` int(11) NOT NULL,
  `Pro_Unit` varchar(10) NOT NULL,
  `Pro_Name` varchar(30) NOT NULL,
  `Vat_Percent` int(1) NOT NULL,
  `Vat_Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product_info`
--

CREATE TABLE `product_info` (
  `Pro_ID` int(11) NOT NULL,
  `Pro_Name` varchar(30) NOT NULL,
  `Pro_Unit` varchar(10) NOT NULL,
  `Pro_Cost` int(5) NOT NULL,
  `Pro_Price` int(5) NOT NULL,
  `Pro_Stock` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `store_info`
--

CREATE TABLE `store_info` (
  `Store_ID` int(10) NOT NULL,
  `Store_Name` varchar(10) NOT NULL,
  `Store_Company` varchar(50) NOT NULL,
  `Store_AddNo` varchar(5) NOT NULL,
  `Store_Soi` varchar(20) NOT NULL,
  `Store_Soi_No` int(5) NOT NULL,
  `Store_Road` varchar(30) NOT NULL,
  `Store_District` varchar(30) NOT NULL,
  `Store_Province` varchar(20) NOT NULL,
  `Store_PostCode` int(5) NOT NULL,
  `Store_Email` text NOT NULL,
  `Store_Tel` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vat`
--

CREATE TABLE `vat` (
  `Vat_ID` int(3) NOT NULL,
  `Vat_Percent` int(1) NOT NULL,
  `Vat_Description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Cus_ID`);

--
-- Indexes for table `employee_info`
--
ALTER TABLE `employee_info`
  ADD PRIMARY KEY (`Emp_ID`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`INV_ID`);

--
-- Indexes for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  ADD PRIMARY KEY (`Order_ID`);

--
-- Indexes for table `product_info`
--
ALTER TABLE `product_info`
  ADD PRIMARY KEY (`Pro_ID`);

--
-- Indexes for table `vat`
--
ALTER TABLE `vat`
  ADD PRIMARY KEY (`Vat_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Cus_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `INV_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `invoice_detail`
--
ALTER TABLE `invoice_detail`
  MODIFY `Order_ID` int(3) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
