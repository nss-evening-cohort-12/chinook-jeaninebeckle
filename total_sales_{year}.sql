SELECT strftime('%Y', InvoiceDate) as "Year", SUM (Total) from Invoice
WHERE InvoiceDate LIKE "2009%" OR InvoiceDate LIKE "2011%"
GROUP BY "Year"
