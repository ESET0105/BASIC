CREATE TABLE Students2024 (ID INT, Name VARCHAR(50));
CREATE TABLE Students2025 (ID INT, Name VARCHAR(50));

INSERT INTO Students2024 VALUES
(1,'Ravi'),(2,'Asha'),(3,'John'),(4,'Meera'),(5,'Kiran'),
(6,'Divya'),(7,'Lokesh'),(8,'Anita'),(9,'Rahul'),(10,'Sneha');

INSERT INTO Students2025 VALUES
(2,'Asha'),(4,'Meera'),(5,'Kiran'),(11,'Prakash'),(12,'Vidya'),
(13,'Neha'),(14,'Manoj'),(15,'Ramesh'),(16,'Lata'),(17,'Akash');

CREATE TABLE Employees_agn (EmpID INT, Name VARCHAR(50), Department VARCHAR(20));
INSERT INTO Employees_agn VALUES 
(1,'Ananya','HR'),(2,'Ravi','IT'),(3,'Meera','Finance'),
(4,'John','IT'),(5,'Divya','Marketing'),(6,'Sneha','Finance'),
(7,'Lokesh','HR'),(8,'Asha','IT'),(9,'Kiran','Finance'),(10,'Rahul','Sales');





CREATE TABLE Projects (ProjectID INT, Name VARCHAR(50), StartDate DATE, EndDate DATE);
INSERT INTO Projects VALUES 
(1,'Bank App','2025-01-01','2025-03-15'),
(2,'E-Commerce','2025-02-10','2025-05-20');





CREATE TABLE Contacts (ID INT, Name VARCHAR(50), Email VARCHAR(50), Phone VARCHAR(20));
INSERT INTO Contacts VALUES
(1,'Ravi','ravi@gmail.com',NULL),
(2,'Asha',NULL,'9876543210'),
(3,'John',NULL,NULL);





select * from Students2024
select * from Students2025
select * from Employees_agn
select * from Projects
select * from Contacts


-- Task 01  -- showing all student names -- 
select * from Students2024 union
select * from Students2025 -- not including duplicates 

select * from Students2024 union all
select * from Students2025  --- including duplicates

-- task02 ---

-- 02.01 -- uppercase and lowercase
select Upper(Name) as names_in_upper from Employees_agn
select lower(Name) as names_in_upper from Employees_agn

-- 02.02 --- len of each employee name 
select len(Name) as names_len from Employees_agn

-- 02.03 only first 3 letters
select substring(Name , 1 ,3) as names_in_upper from Employees_agn

-- 02.04 replace finance department with accounts 
select replace(Department , 'Finance','accounts') as department from Employees_agn

-- 02.05 new concat column -- 
select concat(Name , ' ', Department) as combined_name from Employees_agn

