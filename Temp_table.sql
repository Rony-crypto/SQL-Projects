
DROP TABLE IF EXISTS #temp_Employee
DROP TABLE IF EXISTS #temp_Employee2

CREATE TABLE #temp_Employee (
EmployeeID int, JobTitle varchar(100),
Salary int)

--SELECT * 
--FROM #temp_Employee

--INSERT INTO #temp_Employee VALUES(
--'1001', 'HR', '45000'
--)
--INSERT INTO #temp_Employee
--SELECT *
--FROM EmployeeSalary

CREATE TABLE #temp_Employee2 (
JobTitle varchar(50),
EmployeesPerjob int,
AvgAge int,
AvgSalary int)

INSERT INTO #temp_Employee2
SELECT JobTitle, COUNT(JobTitle), Avg(Age), AVG(salary) 
FROM EmployeeDemographics dem
JOIN EmployeeSalary sal
   ON dem.EmployeeID = sal.EmployeeID
GROUP BY JobTitle

SELECT * 
FROM #temp_Employee2