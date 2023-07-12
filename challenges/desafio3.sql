SELECT pu.pessoa_usuaria_nome AS pessoa_usuaria,
COUNT(DISTINCT mo.musica_id) AS musicas_ouvidas,
ROUND(SUM(mu.musica_duracao / 60), 2) AS total_minutos
FROM pessoas_usuarias AS pu
INNER JOIN musicas_ouvidas AS mo ON pu.pessoa_usuaria_id = mo.pessoa_usuaria_id
INNER JOIN musicas AS mu ON mu.musica_id = mo.musica_id
GROUP BY pessoa_usuaria_nome;