
Use dataAnalytics;
CREATE DATABASE DataAnalytics;
CREATE TABLE Employees(
EmployeeID INT PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
DepartmentID INT,
HireDate DATE);

CREATE TABLE Department(
DepartmentID INT PRIMARY KEY,
DepartmentName varchar(25));


CREATE TABLE Project(
ProjectID INT PRIMARY KEY,
ProjectName varchar(30));

CREATE TABLE Assignment(
AssignmentID INT PRIMARY KEY,
EmployeeID INT,
ProjectID INT,
Role VARCHAR(50),
FOREIGN KEY(EmployeeID)REFERENCES Employees(EmployeeID),
FOREIGN KEY (ProjectID)REFERENCES Project(ProjectID)
);

INSERT INTO Department (DepartmentID, DepartmentName) VALUES
(101, 'Human Resources'),
(102, 'Information Technology'),
(103, 'Finance'),
(104, 'Marketing'),
(105, 'Sales'),
(106, 'Operations'),
(107, 'Customer Service'),
(108, 'Legal'),
(109, 'Research and Development'),
(110, 'Administration');









