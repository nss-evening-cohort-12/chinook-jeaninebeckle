SELECT strftime('%Y', i.InvoiceDate) as "Year", SUM(i.Total) as "Total Sales", (SELECT MAX(i.Total)), e.FirstName, e.LastName from Invoice i
INNER JOIN Customer c
ON i.CustomerId = c.CustomerId
INNER JOIN Employee e
ON c.SupportRepId = e.EmployeeId
WHERE i.InvoiceDate LIKE "2009%" 
GROUP BY e.EmployeeId

select YearTotals.EmployeeName, max(YearTotals.Revenue) as Revenue
from (select e.FirstName || " " || e.LastName as EmployeeName, Round(sum(l.UnitPrice * L.Quantity), 2) as Revenue
from Employee e, Customer c, Invoice I, InvoiceLine l
WHERE strftime('%Y', i.InvoiceDate) like "2009"
and e.title = "Sales Support Agent"
and e.EmployeeId = c.SupportRepId
and c.CustomerId = i.CustomerId
and i.InvoiceId = l.InvoiceId
group by EmployeeName) as YearTotals

