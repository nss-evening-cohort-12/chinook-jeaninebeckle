SELECT ar.Name, COUNT(l.TrackId)
FROM Artist ar, Album al, Track t, InvoiceLine l
WHERE ar.ArtistId = al.ArtistId
AND al.AlbumId = t.AlbumId
AND t.TrackId = l.TrackId
GROUP BY ar.Name
ORDER BY COUNT(l.TrackId) DESC
LIMIT 3
