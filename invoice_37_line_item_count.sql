SELECT COUNT(InvoiceLine.InvoiceId) from InvoiceLine
INNER JOIN Invoice
ON InvoiceLine.InvoiceId = Invoice.InvoiceId
WHERE Invoice.InvoiceId = "37"
