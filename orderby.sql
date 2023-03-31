-- ORDER BY
-- Retorna dados da tabela em ordem ascendente ou descendente


-- crescente 
SELECT *
FROM table1
ORDER BY col1 ASC


-- decrescente
SELECT *
FROM table1
ORDER BY col1 DESC


-- DESAFIO 1:
-- Obter o productID dos produtos mais caros em ordem decrescente;

-- Minha solução:
SELECT TOP 10 ProductID FROM Production.Product ORDER BY ListPrice DESC;


-- DESAFIO 2:
-- Obter o nome e numero do produto dos produtos que tem ProductID entre 1~4:

-- Minha solução:
SELECT TOP 4 name, ProductNumber FROM Production.Product ORDER BY ProductID ASC; 