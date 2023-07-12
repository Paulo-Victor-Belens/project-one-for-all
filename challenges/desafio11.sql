SELECT
al.album_nome AS album,
COUNT(mf.musica_id) AS favoritadas
FROM musicas_favoritas AS mf
INNER JOIN musicas AS m ON mf.musica_id = m.musica_id
INNER JOIN albums AS al ON al.album_id = m.album_id
GROUP BY album
ORDER BY favoritadas DESC, album
LIMIT 3;