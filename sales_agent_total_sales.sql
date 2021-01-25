SELECT SUM(i.Total) as "Total Sales", e.FirstName, e.LastName from Customer as c
INNER JOIN Employee e
ON c.SupportRepId = e.EmployeeId
INNER JOIN Invoice i
ON i.CustomerId = c.CustomerId
GROUP BY c.SupportRepId

