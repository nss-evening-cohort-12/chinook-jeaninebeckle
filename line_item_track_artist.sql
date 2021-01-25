SELECT i.InvoiceLineId, t.Name as "Track Name", ar.Name as "Artist Name" from InvoiceLine i
INNER JOIN Track t
ON i.TrackId = t.TrackId
INNER JOIN Album al
ON t.AlbumId = al.AlbumId
INNER JOIN Artist ar
ON al.ArtistId = ar.ArtistId
