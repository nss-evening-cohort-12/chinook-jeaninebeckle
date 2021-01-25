SELECT FirstName, LastName, InvoiceId, InvoiceDate, BillingCountry
FROM Invoice
INNER JOIN Customer
  ON invoice.CustomerId = customer.CustomerId
WHERE BillingCountry = "Brazil"
