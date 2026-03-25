-- Faturamento total
SELECT SUM(quantidade * preco) AS faturamento_total
FROM vendas;

-- Faturamento por produto
SELECT produto, SUM(quantidade * preco) AS faturamento
FROM vendas
GROUP BY produto
ORDER BY faturamento DESC;

-- Faturamento por cidade
SELECT cidade, SUM(quantidade * preco) AS faturamento
FROM vendas
GROUP BY cidade
ORDER BY faturamento DESC;
