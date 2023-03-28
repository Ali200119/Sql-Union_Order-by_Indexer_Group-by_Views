CREATE DATABASE Company

USE Company

CREATE TABLE [Customers] (
    Id INT PRIMARY KEY IDENTITY,
    [Name] NVARCHAR(50) NOT NULL,
    Surname NVARCHAR(50) NOT NULL,
    Age INT
)

INSERT INTO Customers VALUES
('Shaiq', 'Kazimov', 25),
('Pervin', 'Rehimli', 26),
('Aqshin', 'Hummetov', 27),
('Cinare', 'Ibadova', 22),
('Roya', 'Meherremova', 27),
('Konul', 'Ibrahimova', 27)

CREATE TABLE [Employees] (
    Id INT PRIMARY KEY IDENTITY,
    [Name] NVARCHAR(50) NOT NULL,
    Surname NVARCHAR(50) NOT NULL,
    Age INT
)

INSERT INTO Employees VALUES
('Shaiq', 'Kazimov', 25),
('Pervin', 'Rehimli', 26),
('Anar', 'Aliyev', 27),
('Cinare', 'Ibadova', 22),
('Elcan', 'Qurbanov', 20),
('Mubariz', 'Agayev', 18)



-- Union

SELECT * FROM Employees
UNION
SELECT * FROM Customers


SELECT * FROM Employees
UNION ALL
SELECT * FROM Customers



-- Except & Intesect

SELECT * FROM Employees
EXCEPT
SELECT * FROM Customers


SELECT * FROM Employees
INTERSECT
SELECT * FROM Customers



-- Order by

SELECT * FROM Customers
ORDER BY Id ASC

SELECT [Name], Surname, Age FROM Customers
WHERE Age > 22
ORDER BY Age DESC



-- View

CREATE VIEW [GetEmployeesByAge] AS
SELECT [Name], Surname, Age FROM Employees
WHERE Age > 21

SELECT * FROM GetEmployeesByAge



-- Date

SELECT GETDATE()



-- Group by

SELECT COUNT(*) AS 'Age count', Age FROM Customers
WHERE Age > 20
GROUP BY Age
-- HAVING COUNT(*) > 1
HAVING COUNT(*) > 0
ORDER BY COUNT(*) DESC