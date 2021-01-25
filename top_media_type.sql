SELECT m.Name, COUNT(t.MediaTypeId)
FROM MediaType m, Track t, InvoiceLine l
WHERE m.MediaTypeId = t.MediaTypeId
AND t.TrackId = l.TrackId
GROUP BY m.Name
ORDER BY COUNT(t.MediaTypeId) DESC
LIMIT 1
