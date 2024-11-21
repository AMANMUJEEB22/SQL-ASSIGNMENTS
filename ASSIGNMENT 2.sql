-- Create the Sales database
CREATE DATABASE Sales;
USE Sales;

-- Create the Orders table with constraints
CREATE TABLE Orders (
    Order_Id INT AUTO_INCREMENT PRIMARY KEY,              
    Customer_name VARCHAR(50) NOT NULL,    
    Product_Category VARCHAR(50) NOT NULL,
    Ordered_item VARCHAR(50) NOT NULL,
    Contact_No VARCHAR(15) UNIQUE          
);

-- Add the order_quantity column
ALTER TABLE Orders ADD order_quantity INT NOT NULL;

RENAME TABLE Orders TO sales_orders;

-- Insert 10 rows into the sales_orders table
INSERT INTO sales_orders (Order_Id, Customer_name, Product_Category, Ordered_item, Contact_No, order_quantity) 
VALUES
(1, 'Alice', 'Electronics', 'Smartphone', '9876543210', 2),
(2, 'Bob', 'Furniture', 'Chair', '9876543211', 4),
(3, 'Charlie', 'Clothing', 'T-shirt', '9876543212', 5),
(4, 'David', 'Appliances', 'Washing Machine', '9876543213', 1),
(5, 'Eva', 'Books', 'Novel', '9876543214', 3),
(6, 'Frank', 'Electronics', 'Laptop', '9876543215', 1),
(7, 'Grace', 'Furniture', 'Table', '9876543216', 2),
(8, 'Hannah', 'Clothing', 'Jacket', '9876543217', 2),
(9, 'Ian', 'Appliances', 'Refrigerator', '9876543218', 1),
(10, 'Jack', 'Books', 'Notebook', '9876543219', 10);

SELECT * FROM sales_orders;

-- Select customer_name and Ordered_Item
SELECT Customer_name, Ordered_item FROM sales_orders;

SELECT * FROM sales_orders;

-- Update the Ordered_item for Order_Id 3
UPDATE sales_orders
SET Ordered_item = 'Hoodie'
WHERE Order_Id = 3;

SELECT * FROM sales_orders;

DROP TABLE sales_orders;
