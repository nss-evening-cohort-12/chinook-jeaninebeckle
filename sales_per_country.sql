SELECT BillingCountry, COUNT(InvoiceId) from Invoice
GROUP BY BillingCountry
