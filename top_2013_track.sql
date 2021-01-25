SELECT t.Name, COUNT(l.TrackId) 
FROM Invoice i, Track t, InvoiceLine l
WHERE i.InvoiceId = l.InvoiceId
AND l.TrackId = t.TrackId
AND i.InvoiceDate LIKE "2013%"
GROUP BY t.Name
ORDER BY COUNT(l.TrackId) DESC
LIMIT 1;
