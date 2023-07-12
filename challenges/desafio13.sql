SELECT 
	CASE 
		WHEN pu.pessoa_usuaria_idade <= 30 THEN ('Até 30 anos')
    WHEN pu.pessoa_usuaria_idade >= 31 AND pu.pessoa_usuaria_idade <= 60 THEN 'Entre 31 e 60 anos'    ELSE ('Maior de 60 anos')
	END AS faixa_etaria,
		COUNT(DISTINCT pu.pessoa_usuaria_id) AS total_pessoas_usuarias,
    COUNT(mf.musica_id) AS total_favoritadas
FROM pessoas_usuarias AS pu
LEFT JOIN musicas_favoritas AS mf ON mf.pessoa_usuaria_id = pu.pessoa_usuaria_id
GROUP BY faixa_etaria
ORDER BY faixa_etaria;