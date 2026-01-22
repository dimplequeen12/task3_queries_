CREATE DATABASE task3_sql;
USE task3_sql;
CREATE TABLE superstore (
  Row_ID INT,
  Order_ID VARCHAR(30),
  Order_Date DATE,
  Ship_Date DATE,
  Ship_Mode VARCHAR(30),
  Customer_ID VARCHAR(30),
  Customer_Name VARCHAR(100),
  Segment VARCHAR(30),
  Country VARCHAR(50),
  City VARCHAR(50),
  State VARCHAR(50),
  Postal_Code VARCHAR(20),
  Region VARCHAR(30),
  Product_ID VARCHAR(30),
  Category VARCHAR(30),
  Sub_Category VARCHAR(30),
  Product_Name VARCHAR(200),
  Sales DECIMAL(10,2),
  Quantity INT,
  Discount DECIMAL(4,2),
  Profit DECIMAL(10,2)
);
SELECT * FROM superstore LIMIT 5;
SELECT COUNT(*) FROM superstore;
SELECT * FROM superstore
WHERE Category = 'Technology';
SELECT * FROM superstore LIMIT 10;
SELECT COUNT(*) AS total_rows FROM superstore;
SELECT 'Order ID', 'Product Name', Sales
FROM superstore
ORDER BY Sales DESC
LIMIT 10;
SELECT Category, SUM(Sales) AS total_sales
FROM superstore
GROUP BY Category
HAVING SUM(Sales) > 10
ORDER BY total_sales DESC;
SELECT "Customer Name", Sales
FROM superstore
WHERE "Customer Name" LIKE '%a%'
ORDER BY Sales DESC;
SELECT Category, SUM(Sales) AS total_sales
FROM superstore
GROUP BY Category
ORDER BY total_sales DESC;






select count(*)  from superstore;
SELECT * FROM superstore LIMIT 5;


