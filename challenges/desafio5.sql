SELECT mu.musica_nome AS cancao,
COUNT(mo.musica_id) AS reproducoes
FROM musicas AS mu
INNER JOIN musicas_ouvidas AS mo ON mu.musica_id = mo.musica_id
GROUP BY musica_nome
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;