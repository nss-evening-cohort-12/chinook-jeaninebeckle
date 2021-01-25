SELECT i.InvoiceLineId, i.TrackId, t.Name from InvoiceLine i
INNER JOIN Track t
ON i.TrackId = t.TrackId
