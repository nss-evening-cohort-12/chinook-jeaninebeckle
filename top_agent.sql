select Totals.EmployeeName, max(Totals.Revenue) as Revenue
from (select e.FirstName || " " || e.LastName as EmployeeName, Round(sum(l.UnitPrice * L.Quantity), 2) as Revenue
from Employee e, Customer c, Invoice I, InvoiceLine l
where e.title = "Sales Support Agent"
and e.EmployeeId = c.SupportRepId
and c.CustomerId = i.CustomerId
and i.InvoiceId = l.InvoiceId
group by EmployeeName) as Totals
