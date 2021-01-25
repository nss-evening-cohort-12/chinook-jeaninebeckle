SELECT t.Name as "Track Name", a.Title as "Album Name", m.Name as "Media Type", g.Name as "Genre Name" from Track t
INNER JOIN Album a
ON t.AlbumId = a.AlbumId
INNER JOIN MediaType m
ON t.MediaTypeId = m.MediaTypeId
INNER JOIN Genre g
ON t.GenreId = g.GenreId
