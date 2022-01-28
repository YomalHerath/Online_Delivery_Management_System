-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2020 at 07:13 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `concrete_workshop_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `added_manufacture_product`
--

CREATE TABLE IF NOT EXISTS `added_manufacture_product` (
  `manufacture_product_id` int(11) NOT NULL,
  `item_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `assigned_orders`
--

CREATE TABLE IF NOT EXISTS `assigned_orders` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `assigned_date` date NOT NULL,
  `delivery_status` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assigned_orders`
--

INSERT INTO `assigned_orders` (`id`, `order_id`, `driver_id`, `assigned_date`, `delivery_status`) VALUES
(1, 2, 3, '2020-10-06', 'assigned'),
(2, 3, 3, '2020-10-07', 'assigned'),
(3, 1, 3, '2020-06-06', 'completed'),
(4, 6, 2, '2020-10-07', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `budget`
--

CREATE TABLE IF NOT EXISTS `budget` (
  `budget_id` int(11) NOT NULL,
  `financial_manager_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `tot_expenses` int(11) NOT NULL,
  `operating_profit` int(11) NOT NULL,
  `net_profit` int(11) NOT NULL,
  `net_profit_margin` int(11) NOT NULL,
  `tot_income` int(11) NOT NULL,
  `cost_of_goods` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `calculate_salary`
--

CREATE TABLE IF NOT EXISTS `calculate_salary` (
  `leave_id` int(11) NOT NULL,
  `salary_id` int(11) NOT NULL,
  `employee_manager_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `card_details`
--

CREATE TABLE IF NOT EXISTS `card_details` (
  `card_id` int(11) NOT NULL,
  `card_number` varchar(16) NOT NULL,
  `card_type` varchar(20) NOT NULL,
  `cvc` int(3) NOT NULL,
  `exp_month` char(3) NOT NULL,
  `exp_year` int(4) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `card_details`
--

INSERT INTO `card_details` (`card_id`, `card_number`, `card_type`, `cvc`, `exp_month`, `exp_year`, `customer_id`) VALUES
(1, '4563728189721234', 'Credit Card', 809, '12', 2025, 1),
(2, '6574839254637465', 'Credit Card', 678, '10', 2024, 2),
(3, '7564372828379273', 'Credit', 888, '11', 2026, 3),
(4, '6574839283446271', 'Debit', 908, '04', 2022, 4),
(5, '3425617225343627', 'Credit', 121, '06', 2023, 5);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `cart_id` int(11) NOT NULL,
  `item_number` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` double NOT NULL,
  `customer_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `item_number`, `qty`, `total`, `customer_id`, `payment_id`) VALUES
(1, 2222, 3, 15000, 1, 1),
(2, 1111, 2, 12000, 2, 2),
(3, 3333, 5, 5000, 3, 3),
(4, 4444, 4, 7000, 5, 5),
(5, 3333, 5, 10000, 4, 4),
(6, 2222, 3, 7000, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `cart_product`
--

CREATE TABLE IF NOT EXISTS `cart_product` (
  `cart_id` int(11) NOT NULL,
  `item_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL,
  `phone_num` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `name` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `phone_num`, `email`, `dob`, `name`, `password`, `address`) VALUES
(1, '0713221576', 'kasun@gmil.com', '1990-05-08', 'kasun', 'kasun123', 'No24/7, Colombo Road, Kandy'),
(2, '0786547382', 'dihara@gmail.com', '1995-07-18', 'dilhara', 'dilhara123', 'No795, Kandy Road, Awissawella'),
(3, '0712736344', 'nimantha@gmail.com', '1992-05-06', 'Nimantha ', 'nimantha123', 'No21, Colombo Road, Kelaniya'),
(4, '0716473288', 'kasun@gmail.com', '1991-10-02', 'Kasun', 'kasun123', 'No302/1, Dabulla Road, Ibbagamuwa'),
(5, '076352411', 'amal@gmail.com', '1996-10-13', 'Amal', 'amal123', 'No450/8, Sumangala Road, Warakapola');

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE IF NOT EXISTS `customer_order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `customer_name` varchar(20) NOT NULL,
  `order_date` date NOT NULL,
  `no` int(11) NOT NULL,
  `assigned_date` date NOT NULL,
  `street` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `postal_code` int(11) NOT NULL,
  `delivery_status` varchar(20) NOT NULL DEFAULT 'processing'
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`order_id`, `customer_id`, `cart_id`, `driver_id`, `customer_name`, `order_date`, `no`, `assigned_date`, `street`, `city`, `postal_code`, `delivery_status`) VALUES
(1, 1, 1, 3121, 'Dilhara', '2020-10-01', 2, '2020-10-03', 'Kandy Road', 'Colombo', 10700, 'Completed'),
(3, 2, 2, 4044, 'Dilhara', '2020-10-05', 2, '2020-09-30', 'Kandy Road', 'Awissawella', 10700, 'Completed'),
(5, 2, 2, 4044, 'Dilhara', '2020-10-02', 3, '2020-10-17', 'Kandy Road', 'Awissawella', 10700, 'Completed'),
(9, 5, 4, 4044, 'Amal', '2020-10-02', 4, '2020-10-15', 'Sumanagala Road', 'Warakapola', 14000, 'Completed'),
(10, 4, 5, 1022, 'Kasun', '2020-10-05', 4, '2020-10-04', 'Dabulla Road', 'Ibbagamuwa', 60000, 'Assigned'),
(12, 5, 6, 5892, 'Amal', '2020-10-06', 2, '2020-10-13', 'Sumanagala Road', 'Warakapola', 60000, 'Assigned'),
(13, 5, 5, 0, 'Amal', '2020-10-04', 4, '0000-00-00', 'Sumangala Road', 'Warakapola', 60000, 'processing'),
(14, 3, 3, 5892, 'Nimantha', '2020-10-02', 3, '2020-10-13', 'Colombo Road', 'Kelaniya', 11600, 'processing');

-- --------------------------------------------------------

--
-- Table structure for table `customer_selected_item`
--

CREATE TABLE IF NOT EXISTS `customer_selected_item` (
  `customer_id` int(11) NOT NULL,
  `item_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `employee_id` int(11) NOT NULL,
  `employee_nic` varchar(20) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone_num` varchar(10) NOT NULL,
  `emp_type` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6210 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `employee_nic`, `full_name`, `address`, `phone_num`, `emp_type`) VALUES
(1, '854623518V', 'N.D.R Kulathunga', 'No85/5, Kandy Road, Warakapola', '0786453721', 'Delivery Manager'),
(1022, '935647387V', 'R.D.B Saman', 'No54, New Kandy Road, Kadawatha', '0715342637', 'Driver'),
(3121, '895647321V', 'H.N.C Thilakarathna', 'No893/5, New Sumangala Road, Halawatha', '0712845365', 'Driver'),
(4044, '895647382V', 'C.P.R Karunarathna', 'No100, Udawatta Road, Malabe', '0774637281', 'Driver'),
(5892, '908847839V', 'R.M.B Rathnayaka', 'No450/8, Negombo Road, Gampaha ', '0713572819', 'Driver'),
(6209, '907463821V', 'R.D.D Kulasekara', 'No29/1, Kandy Road, Halawatha ', '0753425166', 'Driver');

-- --------------------------------------------------------

--
-- Table structure for table `employee_leave`
--

CREATE TABLE IF NOT EXISTS `employee_leave` (
  `leave_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `reason` varchar(50) NOT NULL,
  `no_of_days` int(11) NOT NULL,
  `form_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `income_expenses`
--

CREATE TABLE IF NOT EXISTS `income_expenses` (
  `income_id` int(11) NOT NULL,
  `financial_manager_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `income_budget` int(11) NOT NULL,
  `percentage_of_income` int(11) NOT NULL,
  `expense_budget` int(11) NOT NULL,
  `percentage_of_expenses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `manufacture_product`
--

CREATE TABLE IF NOT EXISTS `manufacture_product` (
  `manufacture_product_id` int(11) NOT NULL,
  `contract_manager_id` int(11) NOT NULL,
  `manufacture_product_name` varchar(20) NOT NULL,
  `no_of_items` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `payment_id` int(11) NOT NULL,
  `method` varchar(20) NOT NULL,
  `card_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `method`, `card_id`, `customer_id`) VALUES
(1, 'Card', 1, 1),
(2, 'Card', 2, 2),
(3, 'Card', 3, 3),
(4, 'Credit', 5, 5),
(5, 'Card', 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `paypal`
--

CREATE TABLE IF NOT EXISTS `paypal` (
  `paypal_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `paypal`
--

INSERT INTO `paypal` (`paypal_id`, `email`, `password`, `customer_id`) VALUES
(1, 'kasun@gmil.com', 'kasun123', 1),
(2, 'dilhara@gmail.com', 'dilhara123', 2);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `item_number` int(11) NOT NULL,
  `item_name` varchar(20) NOT NULL,
  `unit_price` double NOT NULL,
  `qty` int(11) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7778 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`item_number`, `item_name`, `unit_price`, `qty`, `type`) VALUES
(1111, 'Concreate Baluster', 600, 5, 'concrete'),
(2222, 'Concrete Posts', 1000, 15, 'concrete'),
(3333, 'Garden port', 500, 8, 'concrete'),
(4444, 'Concrete Decor', 750, 4, 'concrete'),
(5555, 'Wood and Concrete Po', 450, 10, 'concrete'),
(6666, 'Concrete Garden Tabl', 1000, 15, 'concrete'),
(7777, 'Concrete Garden Chai', 900, 9, 'concrete');

-- --------------------------------------------------------

--
-- Table structure for table `product_in_order`
--

CREATE TABLE IF NOT EXISTS `product_in_order` (
  `order_id` int(11) NOT NULL,
  `item_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ratio`
--

CREATE TABLE IF NOT EXISTS `ratio` (
  `ratio_id` int(11) NOT NULL,
  `financial_manager_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `quick_ratio` int(11) NOT NULL,
  `current_ratio` int(11) NOT NULL,
  `account_receivable` int(11) NOT NULL,
  `account_payble` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `row_materiel`
--

CREATE TABLE IF NOT EXISTS `row_materiel` (
  `row_material_no` int(11) NOT NULL,
  `item_name` varchar(20) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `date` date NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE IF NOT EXISTS `salary` (
  `salary_id` int(11) NOT NULL,
  `dedication` int(11) NOT NULL,
  `basic` int(11) NOT NULL,
  `net` int(11) NOT NULL,
  `working_day` int(11) NOT NULL,
  `epf` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE IF NOT EXISTS `sale` (
  `sale_id` int(11) NOT NULL,
  `sales_manager_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `qty` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `unit_price` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sales_order`
--

CREATE TABLE IF NOT EXISTS `sales_order` (
  `order_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sales_product`
--

CREATE TABLE IF NOT EXISTS `sales_product` (
  `sale_id` int(11) NOT NULL,
  `item_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `stock_item_no` int(11) NOT NULL,
  `inventory_manager_id` int(11) NOT NULL,
  `stock_item_name` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `supplier_id` int(11) NOT NULL,
  `inventory_manager_id` int(11) NOT NULL,
  `supplier_name` varchar(20) NOT NULL,
  `phone_num` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `no` int(11) NOT NULL,
  `street` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_row_materials`
--

CREATE TABLE IF NOT EXISTS `supplier_row_materials` (
  `row_material_no` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE IF NOT EXISTS `vehicle` (
  `vehicle_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `vehicle_type` varchar(10) NOT NULL,
  `reg_no` varchar(7) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `added_manufacture_product`
--
ALTER TABLE `added_manufacture_product`
  ADD PRIMARY KEY (`manufacture_product_id`,`item_number`), ADD KEY `added_item_number` (`item_number`);

--
-- Indexes for table `assigned_orders`
--
ALTER TABLE `assigned_orders`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `order_id` (`order_id`);

--
-- Indexes for table `budget`
--
ALTER TABLE `budget`
  ADD PRIMARY KEY (`budget_id`), ADD KEY `budget_financial_manager_id` (`financial_manager_id`);

--
-- Indexes for table `calculate_salary`
--
ALTER TABLE `calculate_salary`
  ADD PRIMARY KEY (`leave_id`,`salary_id`,`employee_manager_id`), ADD KEY `calculate_salary_id` (`salary_id`), ADD KEY `calculate_employee_id` (`employee_manager_id`);

--
-- Indexes for table `card_details`
--
ALTER TABLE `card_details`
  ADD PRIMARY KEY (`card_id`), ADD KEY `card_details_customer_id` (`customer_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`), ADD KEY `cart_customer_id` (`customer_id`), ADD KEY `cart_payment_id` (`payment_id`);

--
-- Indexes for table `cart_product`
--
ALTER TABLE `cart_product`
  ADD PRIMARY KEY (`cart_id`,`item_number`), ADD KEY `cart_product_item_number` (`item_number`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`order_id`), ADD KEY `order_customer_id` (`customer_id`), ADD KEY `order_cart_id` (`cart_id`), ADD KEY `order_driver_id` (`driver_id`);

--
-- Indexes for table `customer_selected_item`
--
ALTER TABLE `customer_selected_item`
  ADD PRIMARY KEY (`customer_id`,`item_number`), ADD KEY `selected_item_number` (`item_number`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `employee_leave`
--
ALTER TABLE `employee_leave`
  ADD PRIMARY KEY (`leave_id`), ADD KEY `employee_leave_id` (`employee_id`);

--
-- Indexes for table `income_expenses`
--
ALTER TABLE `income_expenses`
  ADD PRIMARY KEY (`income_id`), ADD KEY `income_financial_manager_id` (`financial_manager_id`);

--
-- Indexes for table `manufacture_product`
--
ALTER TABLE `manufacture_product`
  ADD PRIMARY KEY (`manufacture_product_id`), ADD KEY `product_contract_manager_id` (`contract_manager_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`), ADD KEY `payment_card_id` (`card_id`), ADD KEY `payment_customer_id` (`customer_id`);

--
-- Indexes for table `paypal`
--
ALTER TABLE `paypal`
  ADD PRIMARY KEY (`paypal_id`), ADD KEY `paypal_customer_id` (`customer_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`item_number`);

--
-- Indexes for table `product_in_order`
--
ALTER TABLE `product_in_order`
  ADD PRIMARY KEY (`order_id`,`item_number`), ADD KEY `product_in_order_item_number` (`item_number`);

--
-- Indexes for table `ratio`
--
ALTER TABLE `ratio`
  ADD PRIMARY KEY (`ratio_id`), ADD KEY `ratio_financial_manager_id` (`financial_manager_id`);

--
-- Indexes for table `row_materiel`
--
ALTER TABLE `row_materiel`
  ADD PRIMARY KEY (`row_material_no`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`salary_id`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_id`), ADD KEY `sale_sales_manager_id` (`sales_manager_id`);

--
-- Indexes for table `sales_order`
--
ALTER TABLE `sales_order`
  ADD PRIMARY KEY (`order_id`,`sale_id`), ADD KEY `sales_order_sales_id` (`sale_id`);

--
-- Indexes for table `sales_product`
--
ALTER TABLE `sales_product`
  ADD PRIMARY KEY (`sale_id`,`item_number`), ADD KEY `sales_product_item_number` (`item_number`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_item_no`), ADD KEY `inventory_manager_id` (`inventory_manager_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`), ADD KEY `supplier_inventory_manager_id` (`inventory_manager_id`);

--
-- Indexes for table `supplier_row_materials`
--
ALTER TABLE `supplier_row_materials`
  ADD PRIMARY KEY (`row_material_no`,`supplier_id`), ADD KEY `supplier_row_materials_supplier_id` (`supplier_id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`vehicle_id`), ADD KEY `vehicle_employee_id` (`employee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assigned_orders`
--
ALTER TABLE `assigned_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `budget`
--
ALTER TABLE `budget`
  MODIFY `budget_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `card_details`
--
ALTER TABLE `card_details`
  MODIFY `card_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6210;
--
-- AUTO_INCREMENT for table `employee_leave`
--
ALTER TABLE `employee_leave`
  MODIFY `leave_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `income_expenses`
--
ALTER TABLE `income_expenses`
  MODIFY `income_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `manufacture_product`
--
ALTER TABLE `manufacture_product`
  MODIFY `manufacture_product_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `paypal`
--
ALTER TABLE `paypal`
  MODIFY `paypal_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `item_number` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7778;
--
-- AUTO_INCREMENT for table `ratio`
--
ALTER TABLE `ratio`
  MODIFY `ratio_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `row_materiel`
--
ALTER TABLE `row_materiel`
  MODIFY `row_material_no` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `stock_item_no` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `vehicle_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `added_manufacture_product`
--
ALTER TABLE `added_manufacture_product`
ADD CONSTRAINT `added_item_number` FOREIGN KEY (`item_number`) REFERENCES `product` (`item_number`),
ADD CONSTRAINT `added_manufacture_product_id` FOREIGN KEY (`manufacture_product_id`) REFERENCES `manufacture_product` (`manufacture_product_id`);

--
-- Constraints for table `budget`
--
ALTER TABLE `budget`
ADD CONSTRAINT `budget_financial_manager_id` FOREIGN KEY (`financial_manager_id`) REFERENCES `employee` (`employee_id`);

--
-- Constraints for table `calculate_salary`
--
ALTER TABLE `calculate_salary`
ADD CONSTRAINT `calculate_employee_id` FOREIGN KEY (`employee_manager_id`) REFERENCES `employee` (`employee_id`),
ADD CONSTRAINT `calculate_leave_id` FOREIGN KEY (`leave_id`) REFERENCES `employee_leave` (`leave_id`),
ADD CONSTRAINT `calculate_salary_id` FOREIGN KEY (`salary_id`) REFERENCES `salary` (`salary_id`);

--
-- Constraints for table `card_details`
--
ALTER TABLE `card_details`
ADD CONSTRAINT `card_details_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
ADD CONSTRAINT `cart_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
ADD CONSTRAINT `cart_payment_id` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`);

--
-- Constraints for table `cart_product`
--
ALTER TABLE `cart_product`
ADD CONSTRAINT `cart_product_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`),
ADD CONSTRAINT `cart_product_item_number` FOREIGN KEY (`item_number`) REFERENCES `product` (`item_number`);

--
-- Constraints for table `customer_order`
--
ALTER TABLE `customer_order`
ADD CONSTRAINT `order_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`),
ADD CONSTRAINT `order_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `customer_selected_item`
--
ALTER TABLE `customer_selected_item`
ADD CONSTRAINT `selected_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
ADD CONSTRAINT `selected_item_number` FOREIGN KEY (`item_number`) REFERENCES `product` (`item_number`);

--
-- Constraints for table `employee_leave`
--
ALTER TABLE `employee_leave`
ADD CONSTRAINT `employee_leave_id` FOREIGN KEY (`employee_id`) REFERENCES `employee_leave` (`leave_id`);

--
-- Constraints for table `income_expenses`
--
ALTER TABLE `income_expenses`
ADD CONSTRAINT `income_financial_manager_id` FOREIGN KEY (`financial_manager_id`) REFERENCES `employee` (`employee_id`);

--
-- Constraints for table `manufacture_product`
--
ALTER TABLE `manufacture_product`
ADD CONSTRAINT `product_contract_manager_id` FOREIGN KEY (`contract_manager_id`) REFERENCES `employee` (`employee_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
ADD CONSTRAINT `payment_card_id` FOREIGN KEY (`card_id`) REFERENCES `card_details` (`card_id`),
ADD CONSTRAINT `payment_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `paypal`
--
ALTER TABLE `paypal`
ADD CONSTRAINT `paypal_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `product_in_order`
--
ALTER TABLE `product_in_order`
ADD CONSTRAINT `product_in_order_item_number` FOREIGN KEY (`item_number`) REFERENCES `product` (`item_number`),
ADD CONSTRAINT `product_in_order_order_id` FOREIGN KEY (`order_id`) REFERENCES `customer_order` (`order_id`);

--
-- Constraints for table `ratio`
--
ALTER TABLE `ratio`
ADD CONSTRAINT `ratio_financial_manager_id` FOREIGN KEY (`financial_manager_id`) REFERENCES `employee` (`employee_id`);

--
-- Constraints for table `sale`
--
ALTER TABLE `sale`
ADD CONSTRAINT `sale_sales_manager_id` FOREIGN KEY (`sales_manager_id`) REFERENCES `employee` (`employee_id`);

--
-- Constraints for table `sales_order`
--
ALTER TABLE `sales_order`
ADD CONSTRAINT `sales_order_order_id` FOREIGN KEY (`order_id`) REFERENCES `customer_order` (`order_id`),
ADD CONSTRAINT `sales_order_sales_id` FOREIGN KEY (`sale_id`) REFERENCES `sale` (`sale_id`);

--
-- Constraints for table `sales_product`
--
ALTER TABLE `sales_product`
ADD CONSTRAINT `sales_product_item_number` FOREIGN KEY (`item_number`) REFERENCES `product` (`item_number`),
ADD CONSTRAINT `sales_product_sale_id` FOREIGN KEY (`sale_id`) REFERENCES `sale` (`sale_id`);

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
ADD CONSTRAINT `inventory_manager_id` FOREIGN KEY (`inventory_manager_id`) REFERENCES `employee` (`employee_id`);

--
-- Constraints for table `supplier`
--
ALTER TABLE `supplier`
ADD CONSTRAINT `supplier_inventory_manager_id` FOREIGN KEY (`inventory_manager_id`) REFERENCES `employee` (`employee_id`);

--
-- Constraints for table `supplier_row_materials`
--
ALTER TABLE `supplier_row_materials`
ADD CONSTRAINT `supplier_row_materials_id` FOREIGN KEY (`row_material_no`) REFERENCES `row_materiel` (`row_material_no`),
ADD CONSTRAINT `supplier_row_materials_supplier_id` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`);

--
-- Constraints for table `vehicle`
--
ALTER TABLE `vehicle`
ADD CONSTRAINT `vehicle_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
