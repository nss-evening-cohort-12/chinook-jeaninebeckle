SELECT *, COUNT(InvoiceLine.InvoiceId) as "Invoice Line Invoice Id" from Invoice
INNER JOIN InvoiceLine
ON Invoice.InvoiceId = InvoiceLine.InvoiceId
GROUP BY Invoice.InvoiceId
