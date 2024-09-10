Use dataanalytics;
SELECT employeeid
firstname,
Lastname,
DepartmentID,
CASE Departmentid
WHEN 101 THEN "HR"
WHEN 102 THEN "IT"
WHEN 103 THEN "FINANCE"
ELSE "Other"
END AS departmentname
FROM Employees;

SELECT
employeeid,
firstname,
lastname,
salary,
CASE
WHEN salary<50000 THEN "Low"
WHEN salary BETWEEN 50000 AND 70000 THEN "Medium"
ELSE "High"
END AS salary_Leve
FROM employees;



SELECT
departmentid,
SUM(CASE
WHEN Departmentid= 101 THEN salary
ELSE 0
END) AS Spent_101,


SUM(CASE
WHEN departmentid = 102 THEN salary
ELSE 0
END) AS spent_103
FROM employees
GROUP BY departmentid;

Alter table employees 
add column phonenumber varchar(101);


SELECT 
employeeid,
firstname,
lastname,
COALESCE(phoneNumber, "No phone number") AS contact_number
FROM employees
Limit 5;

Alter table department 
add column phonenumber varchar(101),
add Email varchar(100);

Select * from department;

SELECT 
Departmentname,
CASE 
WHEN departmentid =101 THEN COALESCE(phonenumber,"No phone")
WHEN departmentid = 102 THEN COALESCE(email,"No email")
ELSE "Contact admin"
END AS contact_info
FROM department;