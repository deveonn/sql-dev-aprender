-- Funções de agregação:
-- Basicamente agregam ou combinam dados de uma tabela em um resultado só...

-- * Geralmente o retorno dessas funções retorna um resultado sem nome, então use alias(AS) para nomear esses resultados

-- sum
SELECT TOP 10 SUM(col1) AS "Soma" FROM table1
-- output: soma total das 10 primeiras linhas da coluna...


-- min
SELECT TOP 10 MIN(col1) AS "Mínimo" FROM table1 
--output: menor valor entre os 10 primeiros valores ...


-- max
SELECT TOP 10 MAX(col1)  AS "Máximo" FROM table1 
--output: maior valor entre os 10 primeiros valores ...


-- avg
SELECT TOP 10 AVG(col1) AS "Media" FROM table1 
--output: gera uma media entre os 10 primeiros valores ...