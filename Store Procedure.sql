  /* 

  Stored Procedures

  */


CREATE PROCEDURE TEST
AS
SELECT *
FROM EmployeeDemographics

EXEC TEST

CREATE PROCEDURE Temp_Employee
AS
CREATE TABLE #temp_Employee (
JobTitle varchar(50),
EmployeesPerjob int,
AvgAge int,
AvgSalary int)

INSERT INTO #temp_Employee
SELECT JobTitle, COUNT(JobTitle), Avg(Age), AVG(salary) 
FROM EmployeeDemographics dem
JOIN EmployeeSalary sal
   ON dem.EmployeeID = sal.EmployeeID
GROUP BY JobTitle

SELECT *
FROM #temp_Employee


EXEC Temp_Employee
