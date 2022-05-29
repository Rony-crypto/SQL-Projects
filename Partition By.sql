SELECT FirstName, LastName, Gender, Salary,
COUNT(Gender) OVER (PARTITION BY  Gender) as TotalGender
FROM EmployeeDemographics dem
JOIN EmployeeSalary sal
   ON dem.EmployeeID = sal.EmployeeID


SELECT  Gender,COUNT(Gender) 
FROM EmployeeDemographics dem
JOIN EmployeeSalary sal
   ON dem.EmployeeID = sal.EmployeeID
GROUP BY Gender


