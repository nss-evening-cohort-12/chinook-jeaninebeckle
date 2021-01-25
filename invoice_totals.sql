-- SELECT c.SupportRepId, c.FirstName "Customer First Name", c.LastName "Customer Last Name", Employee.EmployeeId, Employee.FirstName, Employee.LastName, Invoice.InvoiceId, Invoice.Total, Invoice.BillingCountry from Customer as c
-- INNER JOIN Employee
-- ON c.SupportRepId = Employee.EmployeeId
-- INNER JOIN Invoice
-- ON Invoice.InvoiceId = c.CustomerId


SELECT i.Total, c.LastName "Customer Last Name", i.BillingCountry, e.LastName from Invoice i
INNER JOIN Customer c
ON i.CustomerId = c.CustomerId
INNER JOIN Employee e
ON c.SupportRepId = e.EmployeeId


SELECT i.Total, c.LastName "Customer Last Name", i.BillingCountry, e.LastName 
from Invoice i, Employee e, Customer c
where e.EmployeeId = c.SupportRepId
and c.CustomerId = i.CustomerId
