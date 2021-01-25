SELECT InvoiceId, COUNT(InvoiceLineId) from InvoiceLine
GROUP BY InvoiceId
