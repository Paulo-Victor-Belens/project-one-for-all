SELECT
a.artista_nome AS artista,
CASE 
	WHEN COUNT(mf.musica_id) >= 5 THEN "A"
    WHEN COUNT(mf.musica_id) IN(3,4) THEN "B"
    WHEN COUNT(mf.musica_id) IN(1,2) THEN "C"
  ELSE "-"
END AS ranking
FROM musicas_favoritas AS mf
RIGHT JOIN musicas AS m ON mf.musica_id = m.musica_id
INNER JOIN albums AS alb ON alb.album_id = m.album_id
INNER JOIN artistas AS a ON a.artista_id = alb.artista_id
GROUP BY artista
ORDER BY COUNT(mf.musica_id) DESC, artista;
