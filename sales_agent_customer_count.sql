select e.FirstName, e.LastName, count(c.customerId)
from Employee e, Customer c
where c.SupportRepId = e.EmployeeId
group by e.EmployeeId
