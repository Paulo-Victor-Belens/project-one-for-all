SELECT artista_nome AS artista,
alb.album_nome AS album
FROM artistas AS a
INNER JOIN albums AS alb ON alb.artista_id = a.artista_id
WHERE artista_nome = 'Elis Regina';