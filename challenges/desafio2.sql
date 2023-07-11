SELECT COUNT(DISTINCT mus.musica_id) AS cancoes,
COUNT(DISTINCT art.artista_id) AS artistas,
COUNT(DISTINCT alb.album_id) AS albuns
FROM musicas AS mus
INNER JOIN artistas AS art
INNER JOIN albums AS alb;