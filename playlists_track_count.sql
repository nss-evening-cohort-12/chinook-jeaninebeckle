SELECT p.Name, COUNT(pt.TrackId) from Playlist p
INNER JOIN PlaylistTrack pt
ON p.PlaylistId = pt.PlaylistId
GROUP BY p.PlaylistId

