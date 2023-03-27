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

DROP TABLE Employees
DROP TABLE Customers

SELECT * FROM Employees
UNION
SELECT * FROM Customers


SELECT * FROM Employees
UNION ALL
SELECT * FROM Customers