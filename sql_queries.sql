CREATE DATABASE Starbucks;
USE Starbucks;
CREATE TABLE customers (
    customer_id VARCHAR(10) PRIMARY KEY,
    customer_name VARCHAR(100),
    customer_email VARCHAR(100),
    customer_phone VARCHAR(15),
    customer_age INT,
    customer_gender VARCHAR(20)
);

CREATE TABLE items (
    id INT PRIMARY KEY,
    item VARCHAR(100),
    calories INT,
    fat DECIMAL(5,2),
    carb INT,
    fiber INT,
    protein INT,
    type VARCHAR(50)
);


CREATE TABLE sales (
    transaction_id VARCHAR(20) PRIMARY KEY,
    store_id INT,
    datetime DATETIME,
    customer_id VARCHAR(10),
    item_id INT,
    quantity INT,
    price DECIMAL(10,2),
    total_amount DECIMAL(10,2),
    payment_mode VARCHAR(20),
    customer_type VARCHAR(20),

    CONSTRAINT fk_customer
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),

    CONSTRAINT fk_item
        FOREIGN KEY (item_id)
        REFERENCES items(id)
);

INSERT INTO customers
(customer_id, customer_name, customer_email, customer_phone, customer_age, customer_gender)
VALUES
('C001','Ayan Khan','ayan@gmail.com','9876543210',25,'Male'),
('C002','Riya Sharma','riya@gmail.com','9123456780',23,'Female'),
('C003','Arjun Verma','arjun@gmail.com','9988776655',30,'Male'),
('C004','Sneha Gupta','sneha@gmail.com','9871234567',28,'Female'),
('C005','Rahul Mehta','rahul@gmail.com','9012345678',35,'Male'),
('C006','Neha Singh','neha@gmail.com','9001112233',26,'Female'),
('C007','Vikram Patel','vikram@gmail.com','9112233445',32,'Male'),
('C008','Amit Yadav','amit@gmail.com','9223344556',29,'Male'),
('C009','Pooja Verma','pooja@gmail.com','9334455667',24,'Female'),
('C010','Rohit Sharma','rohit@gmail.com','9445566778',31,'Male'),
('C011','Anjali Mehra','anjali@gmail.com','9556677889',27,'Female'),
('C012','Karan Malhotra','karan@gmail.com','9667788990',34,'Male'),
('C013','Simran Kaur','simran@gmail.com','9778899001',22,'Female'),
('C014','Manish Jain','manish@gmail.com','9889900112',36,'Male'),
('C015','Priya Nair','priya@gmail.com','9990011223',28,'Female'),
('C016','Saurabh Mishra','saurabh@gmail.com','9001122334',33,'Male'),
('C017','Kavya Reddy','kavya@gmail.com','9112233446',26,'Female'),
('C018','Nikhil Kapoor','nikhil@gmail.com','9223344557',29,'Male'),
('C019','Meera Iyer','meera@gmail.com','9334455668',27,'Female'),
('C020','Aditya Roy','aditya@gmail.com','9445566779',30,'Male');

INSERT INTO items
(id, item, calories, fat, carb, fiber, protein, type)
VALUES
(1,'Caffe Latte',190,7.00,19,0,12,'Beverage'),
(2,'Cappuccino',120,4.50,12,0,8,'Beverage'),
(3,'Espresso',5,0.20,1,0,1,'Beverage'),
(4,'Americano',15,0.10,3,0,1,'Beverage'),
(5,'Mocha',290,10.00,35,1,9,'Beverage'),
(6,'Caramel Macchiato',250,10.00,34,1,8,'Beverage'),
(7,'Vanilla Latte',210,8.00,27,0,9,'Beverage'),
(8,'Iced Coffee',120,3.50,20,0,2,'Beverage'),
(9,'Cold Brew',5,0.10,2,0,1,'Beverage'),
(10,'Frappuccino',300,12.00,40,1,6,'Beverage'),
(11,'Blueberry Muffin',320,14.00,45,2,5,'Food'),
(12,'Chocolate Croissant',300,18.00,30,2,6,'Food'),
(13,'Veg Sandwich',350,12.00,40,4,10,'Food'),
(14,'Chicken Sandwich',380,14.00,35,2,18,'Food'),
(15,'Paneer Wrap',400,15.00,45,3,12,'Food'),
(16,'Cheese Burger',450,20.00,38,2,15,'Food'),
(17,'Grilled Chicken Wrap',420,16.00,30,2,20,'Food'),
(18,'Veg Puff',280,13.00,32,2,6,'Food'),
(19,'Brownie',350,18.00,42,2,5,'Food'),
(20,'Chocolate Donut',270,14.00,33,1,4,'Food');


INSERT INTO sales
(transaction_id, store_id, datetime, customer_id, item_id,
 quantity, price, total_amount, payment_mode, customer_type)
VALUES
('T200',101,'2025-04-19 08:10:00','C001',1,2,250.00,500.00,'UPI','Regular'),
('T201',102,'2025-04-19 09:20:00','C002',2,1,200.00,200.00,'Card','New'),
('T202',103,'2025-04-19 10:30:00','C003',3,3,100.00,300.00,'Cash','Regular'),
('T203',101,'2025-04-19 11:15:00','C004',4,2,150.00,300.00,'UPI','Regular'),
('T204',102,'2025-04-19 12:40:00','C005',5,1,180.00,180.00,'Card','New'),
('T205',103,'2025-04-19 13:10:00','C006',6,2,300.00,600.00,'UPI','Regular'),
('T206',101,'2025-04-19 14:25:00','C007',7,1,220.00,220.00,'Cash','New'),
('T207',102,'2025-04-19 15:35:00','C008',8,3,150.00,450.00,'UPI','Regular'),
('T208',103,'2025-04-19 16:50:00','C009',9,2,200.00,400.00,'Card','Regular'),
('T209',101,'2025-04-19 17:15:00','C010',10,1,320.00,320.00,'UPI','New'),
('T210',102,'2025-04-19 18:20:00','C011',11,2,250.00,500.00,'Cash','Regular'),
('T211',103,'2025-04-19 19:40:00','C012',12,1,180.00,180.00,'UPI','New'),
('T212',101,'2025-04-19 20:10:00','C013',13,2,240.00,480.00,'Card','Regular'),
('T213',102,'2025-04-19 21:30:00','C014',14,1,260.00,260.00,'Cash','New'),
('T214',103,'2025-04-19 22:00:00','C015',15,2,280.00,560.00,'UPI','Regular');


USE Starbucks;
SHOW TABLES;

SELECT VERSION();
SHOW VARIABLES LIKE 'port';
