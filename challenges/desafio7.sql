SELECT art.artista_nome AS artista,
alb.album_nome AS album,
COUNT(artseg.artista_id) AS pessoas_seguidoras
FROM artistas AS art
INNER JOIN albums AS alb ON art.artista_id = alb.artista_id
INNER JOIN artistas_seguidos AS artseg ON artseg.artista_id = art.artista_id
GROUP BY album
ORDER BY pessoas_seguidoras DESC, artista, album;