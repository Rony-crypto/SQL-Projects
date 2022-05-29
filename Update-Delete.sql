SELECT * FROM EmployeeDemographics


Insert into EmployeeDemographics VALUES
(1011, 'Ryan', 'Howard', 26, 'Male'),
(NULL, 'Holly', 'Flax', NULL, NULL),
(1013, 'Darryl', 'Philbin', NULL, 'Male')

UPDATE EmployeeDemographics
SET Age = 31, Gender = 'Female'
WHERE FirstName = 'Holly'


DELETE FROM EmployeeDemographics
WHERE EmployeeID=1005

SELECT * 
FROM EmployeeDemographics
WHERE EmployeeID=1004