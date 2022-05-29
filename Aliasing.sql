--SELECT FirstName + ' ' + LastName AS Fullname
--FROM EmployeeDemographics

SELECT Demo.EmployeeID, Sal.Salary
FROM EmployeeDemographics AS Demo
JOIN EmployeeSalary AS Sal
    ON Demo.EmployeeID = Sal.EmployeeID