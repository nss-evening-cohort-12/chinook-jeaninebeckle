SELECT COUNT(l.InvoiceLineId), t.Name
FROM InvoiceLine l, Track t
WHERE l.TrackId = t.TrackId
GROUP BY t.Name
ORDER BY COUNT(l.InvoiceLineId) DESC
LIMIT 5
