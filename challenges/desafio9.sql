SELECT 
COUNT(*) AS musicas_no_historico
FROM musicas_ouvidas AS mo
INNER JOIN pessoas_usuarias AS pu ON pu.usuario_id = mo.usuario_id
WHERE pu.usuario_nome = 'Barbara Liskov';