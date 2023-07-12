SELECT 
COUNT(*) AS musicas_no_historico
FROM musicas_ouvidas AS mo
INNER JOIN pessoas_usuarias AS pu ON pu.pessoa_usuaria_id = mo.pessoa_usuaria_id
WHERE pu.pessoa_usuaria_nome = 'Barbara Liskov';