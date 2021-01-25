SELECT e.FirstName, e.LastName, i.InvoiceId from Customer as c
INNER JOIN Employee e
ON c.SupportRepId = e.EmployeeId
INNER JOIN Invoice i
ON i.CustomerId = c.CustomerId

