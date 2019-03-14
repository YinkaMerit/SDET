-- Create a new database
-- CREATE DATABASE my_db;

-- USE my_db;

--*********************************************************************************************************
-- Create a new table
-- CREATE TABLE film_table(
--     film_name VARCHAR(20),
--     film_type VARCHAR(15),   
-- );

-- Gets information about the table
-- SP_HELP film_table;

-- Delete the table
-- DROP TABLE film_table;

-- CREATE TABLE film_table (
--     film_id INT NOT NULL IDENTITY PRIMARY KEY,
--     film_name VARCHAR(20) NOT NULL,
--     film_type VARCHAR(15),
--     date_of_release DATE,
--     director VARCHAR(20),
--     writer VARCHAR(20),
--     star VARCHAR(20),
--     film_language  VARCHAR(15),
--     website VARCHAR(30),
--     summary VARCHAR(255) NOT NULL DEFAULT 'No current summary is available',
-- );

-- SP_HELP film_table;

-- ALTER TABLE film_table
-- Add a new column
--     ADD run_time INT;
-- Edit existing column
    -- ALTER COLUMN film_name VARCHAR(30) NOT NULL;
-- Alter existing column to have a default
    -- ADD CONSTRAINT df_summary DEFAULT 'No current summary is available' FOR summary;

--*********************************************************************************************************
--Seed data to table
--INSERT INTO table_name (col1,col2,..) VALUES (val1,val2,..)
-- Single quotes around string(varchar/char)/date values,data order does not matter as long as data is paired correctly

-- INSERT INTO film_table (film_name, film_type, director,film_language) VALUES ('Jaws','Horror','Spiel','English');
-- INSERT INTO film_table (film_name, film_type, director,film_language) VALUES ('Hot Fuzz','Comedy','Edgar Wright','English');
-- INSERT INTO film_table (film_name, film_type, director,film_language) VALUES ('Shaun of the Dead','Comedy','Edgar Wright','English');
-- INSERT INTO film_table (film_name, film_type, film_language, director) VALUES ('Alien','Horror','English','Ridley Scott');

--*********************************************************************************************************
-- Update table data
-- UPDATE col1 SET attribute WHERE query

-- UPDATE film_table SET film_type = 'Thriller' WHERE film_name = 'Jaws'
-- UPDATE film_table SET film_type = 'comedy' WHERE director = 'Edgar Wright'

-- Delete table data
-- DELETE FROM film_table WHERE director='Edgar Wright';

--*********************************************************************************************************
--Queries
-- * = wildcard character - returns all columns(universal selector)
-- SELECT col1,col2,.. FROM table_name WHERE query ORDER BY col_name
-- SELECT TOP X - Returns the top x products from the results
-- <, >, <=, =>, !=. still work!! Still work even with letters
-- AND/OR work just like if statements

-- DISTINCT returns results without duplicates
-- SELECT DISTINCT City FROM customers;


-- SELECT film_id, film_name, film_type FROM film_table ORDER BY film_name;
-- SELECT * FROM film_table;


--*********************************************************************************************************
--Workshop 1

-- USE Northwind;
-- SELECT * FROM Products WHERE Discontinued=1 AND UnitsInStock!=0 ORDER BY UnitPrice DESC;
-- SELECT * FROM Products WHERE ProductName>'g' ORDER BY ProductName;
-- SELECT ProductName, UnitPrice, UnitsInStock FROM Products WHERE UnitPrice<=30 AND UnitsInStock>0;

--Wildcard Searches/ Regular Expressions
-- _ is a blank char, % is any number of blank chars
-- [abc] is a range of values, [^abd] is not this range
-- SELECT CustomerID, ContactName FROM Customers WHERE ContactName LIKE 'F%';
-- SELECT CustomerID, ContactName FROM Customers WHERE ContactName LIKE '[ABC][eio]%' ORDER BY ContactName;
-- SELECT CustomerID, ContactName FROM Customers WHERE ContactName LIKE '[ABC]%[abc]%[abc]' ORDER BY ContactName;
-- SELECT CustomerID, ContactName FROM Customers WHERE ContactName LIKE '[ABC]%[abc]%[abc]%' ORDER BY ContactName;

-- WHERE col_name IN ('option1','option2',..) returns values which match any of the options
-- SELECT * FROM Customers WHERE Region IN ('AK','SP') ORDER BY Region;

-- BETWEEN - Selects values betweens a range of values
-- SELECT * FROM EmployeeTerritories WHERE TerritoryID BETWEEN 06897 AND 10038;

-- WorKshop 2
-- SELECT ProductID,ProductName FROM Products WHERE UnitsPrice<5;
-- SELECT * FROM Categories WHERE CategoryName LIKE '[bs]%';
-- SELECT COUNT(*) FROM Orders WHERE EmployeeID=5 OR EmployeeID=7;
-- SELECT COUNT(*) FROM Orders WHERE EmployeeID IN (5,7);

-- AS - Column name given an Alias
-- col1 + col2 will concatenate the data
-- SELECT CompanyName, city FROM Customers;
-- SELECT CompanyName AS "Company Name", city+', '+ Country AS city FROM Customers;

-- SELECT CompanyName AS "Company Name", city+', '+ Country AS city, Region FROM Customers WHERE Region IS NULL;

-- SELECT DISTINCT Country,Region FROM Customers WHERE Region IS NOT NULL;

--*********************************************************************************************************
-- Arithmetic/Math Operators
-- + = Addition, - = Subtraction, * = Multiply, / = Divide, % = Modulus 

-- SELECT UnitPrice, Quantity, Discount, UnitPrice * Quantity * (1-Discount) AS 'Net Total' FROM [Order Details] ORDER BY 'Net Total' DESC;

-- ORDER BY col_name. DESC - Descendingm. ASC - Ascending

--*********************************************************************************************************
-- String Functions

-- SELECT UPPER(CompanyName), LEFT(PostalCode,CHARINDEX(' ', PostalCode)-1) AS 'Post Code Area', LEN(REPLACE(CompanyName,' ','')), CHARINDEX(' ', PostalCode) AS 'Index of White Space' FROM Customers WHERE Country='uk';

-- SELECT * FROM Products;

-- SELECT ProductName, CHARINDEX('''', ProductName) FROM Products WHERE CHARINDEX('''', ProductName) > 0;

-- SELECT OrderID, YEAR(OrderDate) AS 'Year of Order', MONTH(OrderDate) AS 'Month of Order', DAY(OrderDate) AS 'Day of Order' FROM Orders;

-- SELECT *, GETDATE() AS 'Current Date' FROM Orders;

-- SELECT OrderDate, DATEADD(d,5, OrderDate) AS 'Due Date' FROM Orders;
-- SELECT OrderDate, DATEADD(m,5, OrderDate) AS 'Due Date' FROM Orders;

--*********************************************************************************************************
-- Case Statements
-- Behaves like a SWITH/IF-ELSE Statement
-- SELECT OrderId, CASE
--     WHEN DATEDIFF(d, OrderDate,ShippedDate) < 7 THEN 'On Time'
--     ELSE 'Overdue'
--     END AS "Status" FROM Orders

-- WORKSHOP 3

-- SELECT FirstName +' '+LastName AS "Full Name" , DATEDIFF(yyyy, BirthDate,GETDATE()) AS "Age", 
-- CASE WHEN DATEDIFF(yyyy, BirthDate,GETDATE()) > 65 THEN 'Retired'
--      WHEN DATEDIFF(yyyy, BirthDate,GETDATE()) > 60 THEN 'Retirement Due'
--      ELSE 'Keep Working' END AS "Retirement Status"
-- FROM Employees ORDER BY 'Age' DESC; 


--*********************************************************************************************************
-- Aggregate Functions
-- SELECT SupplierID, SUM(UnitsOnOrder) AS "Total on Order", 
--        AVG(UnitsOnOrder) AS "Average on Order", 
--        MIN(UnitsOnOrder) AS "Minimun on Order", 
--        MAX(UnitsOnOrder) AS "Maximum on Order"
-- FROM Products GROUP BY SupplierID;

-- SELECT CategoryId, AVG(ReorderLevel) AS "Average on ReorderLevel" FROM Products GROUP BY CategoryID ORDER BY "Average on ReorderLevel" DESC;

-- SELECT SupplierID,SUM(UnitsOnOrder) AS "Total on Order",AVG(UnitsOnOrder) AS "Average on Order" 
-- FROM Products GROUP BY SupplierID HAVING SUM(UnitsOnOrder) > 50;

--*********************************************************************************************************
-- Sub-Queries

--Query for all the customers with orders then compares with list of all cusotmer and returns customers without an order.
-- SELECT CompanyName AS "Custmomer" FROM Customers WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders);

-- SELECT OrderID, ProductID, UnitPrice, Quantity, Discount,(SELECT MAX(UnitPrice) FROM [Order Details]) AS "Max Price" FROM [Order Details]

-- Combines multiple results into one query
-- UNION ALL - Includes Duplicates
-- UNION - Excludes Duplicates, returning unique values
-- SELECT EmployeeID AS "Employee/Supplier", FirstName + ' ' + LastName AS "Name" FROM Employees 
-- UNION ALL SELECT SupplierID, CompanyName FROM Suppliers;

-- SELECT * FROM [Order Details] WHERE ProductID IN (SELECT ProductID FROM Products WHERE Discontinued=1);

--*********************************************************************************************************
-- JOINS
-- Suppliers and Prodcts, SupplierID is common
-- SELECT col1,col2,... FROM left_table JOIN right_table ON left_col_key = right_col_key

-- SELECT p.SupplierID AS "Supplier ID", CompanyName AS "Company Name", AVG(UnitsOnOrder) AS "Average on Order"
-- FROM Products p 
-- INNER JOIN Suppliers s 
-- ON p.SupplierID = s.SupplierID 
-- GROUP BY p.SupplierID, CompanyName;

-- SELECT ProductName, UnitPrice, CompanyName AS "Supplier", CategoryName AS "Category"
-- FROM Products p 
-- INNER JOIN Suppliers s
-- ON p.SupplierID = s.SupplierID 
-- INNER JOIN Categories c 
-- ON p.CategoryID = c.CategoryID;

-- SELECT CompanyName, Region, ProductName
-- FROM Suppliers s
-- INNER JOIN Products p
-- ON s.SupplierID=p.SupplierID

-- --WORKSHOP 4
-- SELECT OrderID, OrderDate, Freight, CompanyName AS "Customer Name", FirstName + ' '+LastName AS "Employee Name"
-- FROM Orders o
-- INNER JOIN Customers c
-- ON o.CustomerID=c.CustomerID
-- INNER JOIN Employees e
-- ON o.EmployeeID=e.EmployeeID;

--*********************************************************************************************************
-- Convert

-- SELECT OrderID, OrderDate FROM Orders;

-- Pre 2012 CONVERT(new_var_type, data_set, date_format_code)
-- SELECT OrderId, CONVERT(VARCHAR(100),OrderDate,121) FROM Orders;

-- Post 2012
-- SELECT OrderId, FORMAT(OrderDate,'dd/MM/yy') FROM Orders;