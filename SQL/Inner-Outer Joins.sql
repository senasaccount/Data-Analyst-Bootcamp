SELECT * FROM dbo.EmployeeDemographics INNER JOIN dbo.EmployeeSalary
ON dbo.EmployeeDemographics.EmployeeID=dbo.EmployeeSalary.EmployeeID

SELECT * FROM dbo.EmployeeDemographics FULL OUTER JOIN dbo.EmployeeSalary
ON dbo.EmployeeDemographics.EmployeeID=dbo.EmployeeSalary.EmployeeID

SELECT * FROM dbo.EmployeeDemographics RIGHT OUTER JOIN dbo.EmployeeSalary
ON dbo.EmployeeDemographics.EmployeeID=dbo.EmployeeSalary.EmployeeID

SELECT * FROM dbo.EmployeeDemographics LEFT OUTER JOIN dbo.EmployeeSalary
ON dbo.EmployeeDemographics.EmployeeID=dbo.EmployeeSalary.EmployeeID

SELECT dbo.EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM dbo.EmployeeDemographics INNER JOIN dbo.EmployeeSalary
ON dbo.EmployeeDemographics.EmployeeID=dbo.EmployeeSalary.EmployeeID

SELECT dbo.EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
FROM dbo.EmployeeDemographics INNER JOIN dbo.EmployeeSalary
ON dbo.EmployeeDemographics.EmployeeID=dbo.EmployeeSalary.EmployeeID
WHERE FirstName <> 'Michael' 
ORDER BY Salary DESC

SELECT JobTitle, AVG(Salary) AS 'Average Salary'
FROM dbo.EmployeeDemographics INNER JOIN dbo.EmployeeSalary
ON dbo.EmployeeDemographics.EmployeeID=dbo.EmployeeSalary.EmployeeID
WHERE JobTitle='Salesman'
GROUP BY JobTitle