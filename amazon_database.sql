CREATE DATABASE Amazon_SQL;

USE Amazon_SQL;

-- Customers
CREATE TABLE Customers (
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(100),
  email VARCHAR(100),
  country VARCHAR(50)
);

-- Sellers
CREATE TABLE Sellers (
  seller_id INT PRIMARY KEY,
  seller_name VARCHAR(100),
  rating DECIMAL(3,2)
);

-- Category
CREATE TABLE Category (
  category_id INT PRIMARY KEY,
  category_name VARCHAR(50)
);

-- Product
CREATE TABLE Product (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(100),
  category_id INT,
  seller_id INT,
  price DECIMAL(10,2),
  FOREIGN KEY (category_id) REFERENCES Category(category_id),
  FOREIGN KEY (seller_id) REFERENCES Sellers(seller_id)
);

-- Inventory
CREATE TABLE Inventory (
  inventory_id INT PRIMARY KEY,
  product_id INT,
  stock_quantity INT,
  last_updated DATE,
  FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

-- Orders
CREATE TABLE Orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  order_date DATE,
  total_amount DECIMAL(10,2),
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Order Items
CREATE TABLE Order_Items (
  order_item_id INT PRIMARY KEY,
  order_id INT,
  product_id INT,
  quantity INT,
  item_price DECIMAL(10,2),
  FOREIGN KEY (order_id) REFERENCES Orders(order_id),
  FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

-- Payment
CREATE TABLE Payment (
  payment_id INT PRIMARY KEY,
  order_id INT,
  payment_method VARCHAR(50),
  payment_status VARCHAR(50),
  payment_date DATE,
  FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

-- Customers (120 records with Indian names)
INSERT INTO Customers VALUES
(1, 'Aarav Sharma', 'aarav@mail.com', 'India'),
(2, 'Neha Verma', 'neha@mail.com', 'India'),
(3, 'Rohit Singh', 'rohit@mail.com', 'India'),
(4, 'Ishita Mehta', 'ishita@mail.com', 'India'),
(5, 'Vikram Reddy', 'vikram@mail.com', 'India'),
(6, 'Simran Kaur', 'simran@mail.com', 'India'),
(7, 'Karan Patel', 'karan@mail.com', 'India'),
(8, 'Divya Nair', 'divya@mail.com', 'India'),
(9, 'Ankit Joshi', 'ankit@mail.com', 'India'),
(10, 'Sneha Pillai', 'sneha@mail.com', 'India'),
(11, 'Pooja Desai', 'pooja@mail.com', 'India'),
(12, 'Amit Malhotra', 'amit@mail.com', 'India'),
(13, 'Meena Bhatia', 'meena@mail.com', 'India'),
(14, 'Tushar Rao', 'tushar@mail.com', 'India'),
(15, 'Priya Kapoor', 'priya@mail.com', 'India'),
(16, 'Manish Jain', 'manish@mail.com', 'India'),
(17, 'Ritika Aggarwal', 'ritika@mail.com', 'India'),
(18, 'Yash Chaudhary', 'yash@mail.com', 'India'),
(19, 'Ravi Tripathi', 'ravi@mail.com', 'India'),
(20, 'Alok Sinha', 'alok@mail.com', 'India'),
(21, 'Aman Sharma', 'amansharma@mail.com', 'India'),
(22, 'Bhavya Reddy', 'bhavyareddy@mail.com', 'India'),
(23, 'Chirag Joshi', 'chiragjoshi@mail.com', 'India'),
(24, 'Deepa Mehta', 'deepamehta@mail.com', 'India'),
(25, 'Esha Kapoor', 'eshakapoor@mail.com', 'India'),
(26, 'Farhan Khan', 'farhankhan@mail.com', 'India'),
(27, 'Garima Nair', 'garimanair@mail.com', 'India'),
(28, 'Harshita Iyer', 'harshitaiyer@mail.com', 'India'),
(29, 'Indrajit Das', 'indrajitdas@mail.com', 'India'),
(30, 'Jaya Lamba', 'jayalamba@mail.com', 'India'),
(31, 'Kunal Bansal', 'kunalbansal@mail.com', 'India'),
(32, 'Lavanya Pillai', 'lavanyapillai@mail.com', 'India'),
(33, 'Mayank Sinha', 'mayanksinha@mail.com', 'India'),
(34, 'Nikita Rao', 'nikitarao@mail.com', 'India'),
(35, 'Om Prakash', 'omprakash@mail.com', 'India'),
(36, 'Pallavi Desai', 'pallavidesai@mail.com', 'India'),
(37, 'Qasim Ali', 'qasimali@mail.com', 'India'),
(38, 'Ruchi Sharma', 'ruchisharma@mail.com', 'India'),
(39, 'Siddharth Jain', 'siddharthjain@mail.com', 'India'),
(40, 'Tanya Arora', 'tanyaarora@mail.com', 'India'),
(41, 'Ujjwal Mishra', 'ujjwal@mail.com', 'India'),
(42, 'Vaishnavi Menon', 'vaishnavimenon@mail.com', 'India'),
(43, 'Wasim Shaikh', 'wasimshaikh@mail.com', 'India'),
(44, 'Xavier Fernandes', 'xavierfernandes@mail.com', 'India'),
(45, 'Yamini Dubey', 'yaminidubey@mail.com', 'India'),
(46, 'Zoya Khan', 'zoyakhan@mail.com', 'India'),
(47, 'Akhil Rathi', 'akhilrathi@mail.com', 'India'),
(48, 'Barkha Patil', 'barkhapatil@mail.com', 'India'),
(49, 'Chetan Solanki', 'chetansolanki@mail.com', 'India'),
(50, 'Diya Shetty', 'diyashetty@mail.com', 'India'),
(51, 'Eshan Bhardwaj', 'eshanbhardwaj@mail.com', 'India'),
(52, 'Fatima Noor', 'fatimanoor@mail.com', 'India'),
(53, 'Gaurav Singh', 'gauravsingh@mail.com', 'India'),
(54, 'Heena Kaul', 'heenakaul@mail.com', 'India'),
(55, 'Iqbal Hussain', 'iqbalhussain@mail.com', 'India'),
(56, 'Jatin Sethi', 'jatinsethi@mail.com', 'India'),
(57, 'Kritika Yadav', 'kritikayadav@mail.com', 'India'),
(58, 'Lalit Dugar', 'lalitdugar@mail.com', 'India'),
(59, 'Manju Rao', 'manjurao@mail.com', 'India'),
(60, 'Neeraj Chauhan', 'neerajchauhan@mail.com', 'India'),
(61, 'Ojaswini Gupta', 'ojaswinigupta@mail.com', 'India'),
(62, 'Parth Rawal', 'parthrawal@mail.com', 'India'),
(63, 'Radhika Bansal', 'radhikabansal@mail.com', 'India'),
(64, 'Sahil Syed', 'sahilsyed@mail.com', 'India'),
(65, 'Tanvi Jain', 'tanvijain@mail.com', 'India'),
(66, 'Usha Devi', 'ushadevi@mail.com', 'India'),
(67, 'Varun Kohli', 'varunkohli@mail.com', 'India'),
(68, 'Wamiq Ansari', 'wamiqansari@mail.com', 'India'),
(69, 'Yashasvi Nigam', 'yashasvinigam@mail.com', 'India'),
(70, 'Zakir Siddiqui', 'zakirsiddiqui@mail.com', 'India'),
(71, 'Abhishek Tiwari', 'abhishektiwari@mail.com', 'India'),
(72, 'Bharti Sharma', 'bhartisharma@mail.com', 'India'),
(73, 'Chandan Jha', 'chandanjha@mail.com', 'India'),
(74, 'Devika Rani', 'devikarani@mail.com', 'India'),
(75, 'Ekta Thakur', 'ektathakur@mail.com', 'India'),
(76, 'Faizan Ahmad', 'faizanahmad@mail.com', 'India'),
(77, 'Gargi Kulkarni', 'gargikulkarni@mail.com', 'India'),
(78, 'Himanshu Rana', 'himanshurana@mail.com', 'India'),
(79, 'Ira Deshmukh', 'iradeshmukh@mail.com', 'India'),
(80, 'Jayant Naik', 'jayantnaik@mail.com', 'India'),
(81, 'Kashish Goel', 'kashishgoel@mail.com', 'India'),
(82, 'Lakshmi Venkat', 'lakshmivenkat@mail.com', 'India'),
(83, 'Mohit Mathur', 'mohitmathur@mail.com', 'India'),
(84, 'Nandini Tripathi', 'nandinitripathi@mail.com', 'India'),
(85, 'Omkar Kulkarni', 'omkarkulkarni@mail.com', 'India'),
(86, 'Puneet Saxena', 'puneetsaxena@mail.com', 'India'),
(87, 'Ritika Nanda', 'ritikananda@mail.com', 'India'),
(88, 'Samarjeet Kaur', 'samarjeetkaur@mail.com', 'India'),
(89, 'Trisha Batra', 'trishabatra@mail.com', 'India'),
(90, 'Umer Qureshi', 'umerqureshi@mail.com', 'India'),
(91, 'Vineet Dubey', 'vineetdubey@mail.com', 'India'),
(92, 'Waseem Khan', 'waseemkhan@mail.com', 'India'),
(93, 'Yuvraj Ghosh', 'yuvrajghosh@mail.com', 'India'),
(94, 'Zeenat Rizvi', 'zeenatrizvi@mail.com', 'India'),
(95, 'Aanya Mahajan', 'aanyamahajan@mail.com', 'India'),
(96, 'Bilal Pasha', 'bilalpasha@mail.com', 'India'),
(97, 'Chitra Lal', 'chitralal@mail.com', 'India'),
(98, 'Dhruv Bhalla', 'dhruvbhalla@mail.com', 'India'),
(99, 'Eshanvi Patil', 'eshanvipatil@mail.com', 'India'),
(100, 'Farid Shaikh', 'faridshaikh@mail.com', 'India'),
(101, 'Gitanjali Narang', 'gitanjalinarang@mail.com', 'India'),
(102, 'Harshit Thakur', 'harshitthakur@mail.com', 'India'),
(103, 'Ipsita Bose', 'ipsitabose@mail.com', 'India'),
(104, 'Jayshree Sinha', 'jayshreesinha@mail.com', 'India'),
(105, 'Kashvi Rathi', 'kashvirathi@mail.com', 'India'),
(106, 'Luv Arora', 'luvarora@mail.com', 'India'),
(107, 'Mehul Anand', 'mehulanand@mail.com', 'India'),
(108, 'Nidhi Saxena', 'nidhisaxena@mail.com', 'India'),
(109, 'Oviya Krishnan', 'oviyakrishnan@mail.com', 'India'),
(110, 'Pushkar Sharma', 'pushkarsharma@mail.com', 'India'),
(111, 'Riya Sen', 'riyasen@mail.com', 'India'),
(112, 'Saanvi Bhat', 'saanvibhat@mail.com', 'India'),
(113, 'Taranjit Kaur', 'taranjitkaur@mail.com', 'India'),
(114, 'Utkarsh Pandey', 'utkarshpandey@mail.com', 'India'),
(115, 'Vasudha Jain', 'vasudhajain@mail.com', 'India'),
(116, 'Waleed Khan', 'waleedkhan@mail.com', 'India'),
(117, 'Yogita Sharma', 'yogitasharma@mail.com', 'India'),
(118, 'Zahid Sheikh', 'zahidsheikh@mail.com', 'India'),
(119, 'Akhila Iyer', 'akhilaiyer@mail.com', 'India'),
(120, 'Bhavin Shah', 'bhavinshah@mail.com', 'India');

-- Sellers (5 Indian-style names)
INSERT INTO Sellers VALUES
(1, 'TechIndia', 4.5),
(2, 'BookMandir', 4.3),
(3, 'GadgetBazaar', 4.6),
(4, 'HomeKart', 4.2),
(5, 'StyleDesi', 4.7);

-- Category remains the same
INSERT INTO Category VALUES
(1, 'Electronics'),
(2, 'Books'),
(3, 'Home'),
(4, 'Fashion'),
(5, 'Grocery');

-- Product (first 10 rows same; you can add more below as needed)
INSERT INTO Product VALUES
(101, 'Echo Dot', 1, 1, 49.99),
(102, 'Kindle', 2, 2, 89.99),
(103, 'Mixer Grinder', 3, 4, 129.50),
(104, 'LED Lamp', 3, 4, 25.75),
(105, 'Bluetooth Speaker', 1, 3, 55.00),
(106, 'Smart Watch', 1, 1, 199.99),
(107, 'Cookbook', 2, 2, 19.99),
(108, 'Jeans', 4, 5, 39.95),
(109, 'T-shirt', 4, 5, 15.99),
(110, 'Organic Rice', 5, 5, 10.25);

INSERT INTO Inventory VALUES
(1, 101, 250, '2025-07-01'),
(2, 102, 180, '2025-07-01'),
(3, 103, 120, '2025-07-01'),
(4, 104, 90, '2025-07-01'),
(5, 105, 300, '2025-07-01'),
(6, 106, 75, '2025-07-01'),
(7, 107, 200, '2025-07-01'),
(8, 108, 400, '2025-07-01'),
(9, 109, 500, '2025-07-01'),
(10, 110, 600, '2025-07-01');


INSERT INTO Orders VALUES
(1, 1, '2025-06-15', 105.98),
(2, 3, '2025-06-20', 199.99),
(3, 5, '2025-06-25', 145.74),
(4, 7, '2025-06-28', 59.94),
(5, 9, '2025-07-01', 89.99),
(6, 2, '2025-07-02', 65.94),
(7, 4, '2025-07-03', 25.75),
(8, 6, '2025-07-03', 49.99),
(9, 8, '2025-07-04', 109.95),
(10, 10, '2025-07-05', 39.95);


INSERT INTO Order_Items VALUES
(1, 1, 101, 1, 49.99),
(2, 1, 105, 1, 55.99),
(3, 2, 106, 1, 199.99),
(4, 3, 103, 1, 129.50),
(5, 3, 104, 1, 16.24),
(6, 4, 109, 2, 29.97),
(7, 5, 102, 1, 89.99),
(8, 6, 107, 2, 39.98),
(9, 6, 110, 1, 25.96),
(10, 7, 104, 1, 25.75),
(11, 8, 101, 1, 49.99),
(12, 9, 108, 2, 69.95),
(13, 10, 109, 2, 39.95);


INSERT INTO Payment VALUES
(1, 1, 'UPI', 'Completed', '2025-06-15'),
(2, 2, 'Credit Card', 'Completed', '2025-06-20'),
(3, 3, 'Debit Card', 'Completed', '2025-06-25'),
(4, 4, 'Cash on Delivery', 'Pending', '2025-06-28'),
(5, 5, 'UPI', 'Completed', '2025-07-01'),
(6, 6, 'Credit Card', 'Completed', '2025-07-02'),
(7, 7, 'UPI', 'Completed', '2025-07-03'),
(8, 8, 'Net Banking', 'Pending', '2025-07-03'),
(9, 9, 'Credit Card', 'Completed', '2025-07-04'),
(10, 10, 'Debit Card', 'Completed', '2025-07-05');

