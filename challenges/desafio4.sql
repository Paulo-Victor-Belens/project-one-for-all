SELECT pu.pessoa_usuaria_nome AS pessoa_usuaria,
IF (MAX(YEAR(mo.musica_data_ouvida)) >= 2021,
'Ativa',
'Inativa') 
AS status_pessoa_usuaria
FROM pessoas_usuarias AS pu
INNER JOIN musicas_ouvidas AS mo ON pu.pessoa_usuaria_id = mo.pessoa_usuaria_id
GROUP BY pessoa_usuaria_nome
ORDER BY pessoa_usuaria_nome;