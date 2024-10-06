SELECT d.DepartmentName, COUNT(e.EmployeeID) AS EmployeeCount, AVG(e.Salary) AS AvgSalary
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
JOIN Locations l ON d.LocationID = l.LocationID
WHERE l.City = 'New York'
GROUP BY d.DepartmentName
HAVING AVG(e.Salary) > 50000
ORDER BY EmployeeCount DESC;
