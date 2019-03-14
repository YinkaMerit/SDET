********************************************************************************************************************************************
1.1
A query that lists all Customers in either Paris or London. Include Customer ID, Company Name and all address fields.

SELECT CustomerID, CompanyName AS "Company Name", City + ', ' + PostalCode AS "Address" FROM Customers WHERE city IN ('Paris','London');

********************************************************************************************************************************************
1.2
Lists all products stored in bottles.

SELECT ProductID,ProductName AS "Prodcut Name",QuantityPerUnit AS "Quanity Per Unit",UnitPrice AS " Unit Price" FROM Products WHERE QuantityPerUnit LIKE '%bottle%';

********************************************************************************************************************************************
1.3
Repeats question above, but adds in the Supplier Name and Country

SELECT p.ProductID,s.SupplierID, s.CompanyName AS "Company Name",p.ProductName AS "Product Name",p.QuantityPerUnit AS "Quantity Per Unit",p.UnitPrice AS "Unit Price",s.Country FROM Products p
INNER JOIN Suppliers s
ON p.SupplierID=s.SupplierID
WHERE QuantityPerUnit LIKE '%bottle%';

********************************************************************************************************************************************
1.4
A SQL Statement that shows how many products there are in each category. Includes Category Name in result set and lists the highest number first.

SELECT c.CategoryName AS "Category Name",COUNT(c.CategoryName) AS "Number of Products" FROM Categories c
INNER JOIN Products p
ON c.CategoryID=p.CategoryID
GROUP BY c.CategoryName
ORDER BY [Number of Products] DESC;

********************************************************************************************************************************************
1.5
List all UK employees using concatenation to join their title of courtesy, first name and last name together. Also include their city of residence.

SELECT TitleOfCourtesy + ' ' + FirstName +' '+ LastName AS "Employee Name",City,Country FROM Employees WHERE Country='UK';

********************************************************************************************************************************************
1.6
List Sales Totals for all Sales Regions (via the Territories table using 4 joins) with a Sales Total greater than 1,000,000. Use rounding or FORMAT to present the numbers. 

SELECT RegionDescription AS " Region", FORMAT(SUM(UnitPrice * Quantity * (1-Discount)),'C') AS "Total Sales" FROM Region r 
INNER JOIN Territories t
ON r.RegionID = t.RegionID
INNER JOIN EmployeeTerritories et
ON t.TerritoryID = et.TerritoryID
INNER JOIN Orders o
ON et.EmployeeID = o.EmployeeID
INNER JOIN [Order Details] od 
ON o.OrderID = od.OrderID
GROUP BY RegionDescription
HAVING SUM(UnitPrice * Quantity * (1-Discount)) > 1000000;

********************************************************************************************************************************************
1.7
Counts how many Orders have a Freight amount greater than 100.00 and either USA or UK as Ship Country.

SELECT COUNT(OrderID) AS "Number of Orders" FROM Orders WHERE ShipCountry IN ('USA','UK') AND Freight>100.00;

********************************************************************************************************************************************
1.8
Write an SQL Statement to identify the Order Number of the Order with the highest amount of discount applied to that order.

SELECT TOP 1 OrderID, FORMAT(SUM(UnitPrice * Quantity * (Discount)),'C') AS "Amount of Discount Applied" FROM [Order Details] GROUP BY OrderID ORDER BY SUM(UnitPrice * Quantity * (Discount)) DESC;

--*********************************************************************************************************************************************
-- 2.1
-- Designs and builds a suitable set of fully normalised tables. 
-- Includes 4.1 and 4.2 
-- Uses Foreign Keys where needed
-- Adds constraints Trainer Type ('T' Trainer or 'A' Training Assistant) and Employee Type ('T' Trainer, 'S' Spartan) and sets a maximum capacity for Rooms to 25

CREATE DATABASE SpartaAcademy;
USE SpartaAcademy;

DROP TABLE CourseScheduleAttendees;
DROP TABLE CourseScheduleTrainers;
DROP TABLE CourseSchedule;
DROP TABLE Employees;
DROP TABLE CourseCatalog;
DROP TABLE Rooms;
DROP TABLE Academies;


CREATE TABLE Academies (
    AcademyID INT NOT NULL IDENTITY PRIMARY KEY,
    AcademyName VARCHAR(20) NOT NULL
);

CREATE TABLE Rooms (
    RoomID INT NOT NULL IDENTITY PRIMARY KEY,
    AcademyID INT NOT NULL,
    FOREIGN KEY(AcademyID) REFERENCES Academies(AcademyID),
    RoomName VARCHAR(20) NOT NULL,
    Description VARCHAR(255),
    Capacity INT NOT NULL,
    CHECK (Ca   acity <=25)
);

CREATE TABLE CourseCatalog (
    CourseID INT NOT NULL IDENTITY PRIMARY KEY,
    CourseName VARCHAR(20) NOT NULL,
    Duration INT
);

CREATE TABLE Employees (
    EmployeeID INT NOT NULL IDENTITY PRIMARY KEY,
    FirstName VARCHAR(20) NOT NULL,
    LastName VARCHAR(20) NOT NULL,
    EmployeeType VARCHAR(1),
    CHECK (EmployeeType = 'T' OR EmployeeType = 'S'),
    StartDate DATE
);

CREATE TABLE CourseSchedule (
    CourseScheduleID INT NOT NULL IDENTITY PRIMARY KEY,
    AcademyID INT NOT NULL,
    FOREIGN KEY(AcademyID) REFERENCES Academies(AcademyID),
    RoomID INT NOT NULL,
    FOREIGN KEY(RoomID) REFERENCES Rooms(RoomID),
    CourseID INT NOT NULL,
    FOREIGN KEY(CourseID) REFERENCES CourseCatalog(CourseID),
    StartDate DATE,
    EndDate DATE
);

CREATE TABLE CourseScheduleTrainers (
    TrainerID INT NOT NULL,
    FOREIGN KEY(TrainerID) REFERENCES Employees(EmployeeID),
    CourseScheduleID INT ,
    FOREIGN KEY(CourseScheduleID) REFERENCES CourseSchedule(CourseScheduleID),
    TrainerType VARCHAR(1) NOT NULL,
    CHECK (TrainerType = 'T' OR TrainerType = 'A'),
);

CREATE TABLE CourseScheduleAttendees (
    AttendeeID INT NOT NULL,
    FOREIGN KEY(AttendeeID) REFERENCES Employees(EmployeeID),
    CourseScheduleID INT NOT NULL,
    FOREIGN KEY(CourseScheduleID) REFERENCES CourseSchedule(CourseScheduleID),
    Active INT
);


-- *********************************************************************************************************************************************
-- 2.2
-- Create SQL files containing the SQL statements for the following: One that contains all statements required to create and re-create this database. DDL only.

INSERT INTO [Academies]
           ([AcademyName])
     VALUES
           ('Richmond')
;


INSERT INTO [Academies]
           ([AcademyName])
     VALUES
           ('Birmingham')
;

INSERT INTO [Academies]
           ([AcademyName])
     VALUES
           ('Leeds')
;

INSERT INTO [Rooms]
           ([AcademyID]
           ,[RoomName]
           ,[Description]
           ,[Capacity])
     VALUES
           (1
           ,'Room 1'
           ,'Next to the new Lo; sign'
           ,12)
;

INSERT INTO [Rooms]
           ([AcademyID]
           ,[RoomName]
           ,[Description]
           ,[Capacity])
     VALUES
           (1
           ,'Room 2'
           ,'Behind the new Sparta sign'
           ,18)
;
INSERT INTO [Rooms]
           ([AcademyID]
           ,[RoomName]
           ,[Description]
           ,[Capacity])
     VALUES
           (1
           ,'Room 3'
           ,'No air-con'
           ,18)
;

INSERT INTO [Rooms]
           ([AcademyID]
           ,[RoomName]
           ,[Description]
           ,[Capacity])
     VALUES
           (1
           ,'Room 4'
           ,'Has second door with number lock'
           ,10)
;

INSERT INTO [Rooms]
           ([AcademyID]
           ,[RoomName]
           ,[Description]
           ,[Capacity])
     VALUES
           (1
           ,'Boardroom'
           ,'Use as last resort'
           ,14)
;

INSERT INTO [CourseCatalog]
           ([CourseName]
           ,[Duration])
     VALUES
           ('BA-Test',
           7)
;
INSERT INTO [CourseCatalog]
           ([CourseName]
           ,[Duration])
     VALUES
           ('Engineering',
           12)
;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           ,[StartDate]
           )
     VALUES
	 		     ('Tim','Cawte','T','07/14/2017')
				 ;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           ,[StartDate]
           )
     VALUES
	 		     ('Richard','Gurney','T','07/01/2017')
;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Adam','Smith','S')
;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('John','Williams','S')
;
INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Nick','Willis','S')
;
INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Jenny','Jones','S')
;
INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Katie','Prince','S')
;
INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Peter','Brown','S')
;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Mo','Khan','S')
;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Juan','Carlos','S')
;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Jan','Miller','S')
;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Kyle','Carpenter','S')
;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Alvarao','Carlos','S')
;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Margaret','Baker','S')
;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Oti','Mwase','S')
;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Joe','Mann','S')
;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Steve','Harris','S')
;

INSERT INTO [dbo].[CourseSchedule]
           ([AcademyID]
           ,[RoomID]
           ,[CourseID]
           ,[StartDate]
           ,[EndDate])
     VALUES
           (1
           ,1
           ,1
           ,'01/15/2018'
           ,'03/02/2018'
		  )
;

INSERT INTO [dbo].[CourseSchedule]
           ([AcademyID]
           ,[RoomID]
           ,[CourseID]
           ,[StartDate]
           ,[EndDate])
     VALUES
           (1
           ,3
           ,2
           ,'01/22/2018'
           ,'03/03/2018'
		  )
;
INSERT INTO [dbo].[CourseSchedule]
           ([AcademyID]
           ,[RoomID]
           ,[CourseID]
           ,[StartDate]
           ,[EndDate])
     VALUES
           (1
           ,4
           ,2
           ,'01/22/2018'
           ,'03/03/2018'
		  )
;
INSERT INTO [CourseScheduleTrainers]
           ([CourseScheduleID]
           ,[TrainerID]
           ,[TrainerType])
     VALUES
           (1
           ,1
           ,'T')
;
INSERT INTO [CourseScheduleTrainers]
           ([CourseScheduleID]
           ,[TrainerID]
           ,[TrainerType])
     VALUES
           (2
           ,2
           ,'T')
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (1
           ,3
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (1
           ,4
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (1
           ,5
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (1
           ,6
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (1
           ,7
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (1
           ,8
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (2
           ,9
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (2
           ,10
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (2
           ,11
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (2
           ,12
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (2
           ,13
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (2
           ,14
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (2
           ,15
           ,1)
;

-- *********************************************************************************************************************************************
-- 2.3
-- Adds more sample data to include all current trainers and at least one TA (Training Assistant) and Spartans on your current course. 

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           ,[StartDate]
           )
     VALUES
	 		     ('Rob','Whitehouse','T','07/01/2016')
	;
INSERT INTO [CourseScheduleTrainers]
           ([CourseScheduleID]
           ,[TrainerID]
           ,[TrainerType])
     VALUES
           (3
           ,18
           ,'T')
;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           ,[StartDate]
           )
     VALUES
	 		     ('Giverny','Wilson-Martin','T','07/01/2016')
	;


INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           )
     VALUES
	 		     ('Zachary','Harrison','S')
	;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (3
           ,20
           ,1)
;
INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           )
     VALUES
	 		     ('Yinka','Merit','S')
	;
INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (3
           ,21
           ,1)
;

-- *********************************************************************************************************************************************
-- 3.1
-- Produce a report similar to the above table (see 2.1) from all 7 tables using one SQL statement (use FORMAT for the dates). 

SELECT cc.CourseName AS "Course Name", FORMAT(cs.StartDate,'dd/MM/yyyy') AS "Start Date", FORMAT(cs.EndDate,'dd/MM/yyyy') AS "End Date", a.AcademyName AS "Academy Name", r.RoomName AS "Room Name", e2.FirstName + ' ' + e2.LastName AS "Trainer",e1.FirstName + ' ' + e1.LastName AS "Spartan" FROM CourseSchedule cs 
INNER JOIN Rooms r ON cs.RoomID = r.RoomID 
INNER JOIN Academies a ON cs.AcademyID = a.AcademyID 
INNER JOIN CourseCatalog cc ON cs.CourseID = cc.CourseID 
INNER JOIN CourseScheduleAttendees csa ON cs.CourseScheduleID = csa.CourseScheduleID 
INNER JOIN CourseScheduleTrainers cst ON cs.CourseScheduleID = cst.CourseScheduleID 
INNER JOIN Employees e1 ON csa.AttendeeID = e1.EmployeeID 
INNER JOIN Employees e2 ON cst.TrainerID = e2.EmployeeID

-- *********************************************************************************************************************************************
-- 3.2 
-- Repeat 3.1 above but replace the Spartan Name column with Spartan Initials. 

SELECT cc.CourseName AS "Course Name",FORMAT(cs.StartDate,'dd/MM/yyyy') AS "Start Date", FORMAT(cs.EndDate,'dd/MM/yyyy') AS "End Date", a.AcademyName AS "Academy Name", r.RoomName AS "Room Name", e2.FirstName + ' ' + e2.LastName AS "Trainer",LEFT(e1.FirstName,1) + '.' + LEFT(e1.LastName,1) AS "Spartan Initials" FROM CourseSchedule cs 
INNER JOIN Rooms r ON cs.RoomID = r.RoomID 
INNER JOIN Academies a ON cs.AcademyID = a.AcademyID 
INNER JOIN CourseCatalog cc ON cs.CourseID = cc.CourseID 
INNER JOIN CourseScheduleAttendees csa ON cs.CourseScheduleID = csa.CourseScheduleID 
INNER JOIN CourseScheduleTrainers cst ON cs.CourseScheduleID = cst.CourseScheduleID 
INNER JOIN Employees e1 ON csa.AttendeeID = e1.EmployeeID 
INNER JOIN Employees e2 ON cst.TrainerID = e2.EmployeeID

-- *********************************************************************************************************************************************
-- 3.3 
-- Adds a new column after End Date headed “Check Date” which uses the DATEADD function to add 8 weeks to the Start Date column for BA Test courses and 12 weeks for any others.

SELECT cc.CourseName AS "Course Name",FORMAT(cs.StartDate,'dd/MM/yyyy') AS "Start Date", 
CASE WHEN cc.CourseName = 'BA-Test' THEN FORMAT(DATEADD(d,56,cs.StartDate),'dd/MM/yyyy')
     ELSE FORMAT(DATEADD(d,84,cs.StartDate),'dd/MM/yyyy') END AS "Check Date", 
     FORMAT(cs.EndDate,'dd/MM/yyyy') AS "End Date",
a.AcademyName AS "Academy Name", r.RoomName AS "Room Name", e2.FirstName + ' ' + e2.LastName AS "Trainer",LEFT(e1.FirstName,1) + '.' + LEFT(e1.LastName,1) AS "Spartan Initials" FROM CourseSchedule cs 
INNER JOIN Rooms r ON cs.RoomID = r.RoomID 
INNER JOIN Academies a ON cs.AcademyID = a.AcademyID 
INNER JOIN CourseCatalog cc ON cs.CourseID = cc.CourseID 
INNER JOIN CourseScheduleAttendees csa ON cs.CourseScheduleID = csa.CourseScheduleID 
INNER JOIN CourseScheduleTrainers cst ON cs.CourseScheduleID = cst.CourseScheduleID 
INNER JOIN Employees e1 ON csa.AttendeeID = e1.EmployeeID 
INNER JOIN Employees e2 ON cst.TrainerID = e2.EmployeeID
 