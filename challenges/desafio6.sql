SELECT MIN(p.plano_preco) AS faturamento_minimo,
MAX(p.plano_preco) AS faturamento_maximo,
ROUND(AVG(plano_preco), 2) AS faturamento_medio,
SUM(plano_preco) AS faturamento_total
FROM planos AS p
INNER JOIN pessoas_usuarias AS pu ON p.plano_id = pu.plano_id;