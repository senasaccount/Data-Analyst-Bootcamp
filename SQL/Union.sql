SELECT * FROM dbo.EmployeeDemographics
UNION 
SELECT * FROM dbo.WareHouseEmployeeDemographics

SELECT * FROM dbo.EmployeeDemographics
UNION ALL
SELECT * FROM dbo.WareHouseEmployeeDemographics
ORDER BY FirstName --DUPLICATED ROWS EXIST HERE

SELECT dbo.EmployeeDemographics.EmployeeID, FirstName, Age FROM dbo.EmployeeDemographics
UNION
SELECT dbo.EmployeeSalary.EmployeeID, JobTitle, Salary FROM dbo.EmployeeSalary --MAKES NO SENSE BUT ANYWAY :P