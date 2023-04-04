-- * GROUP BY vai dividir o resultado da sua pesquisa em grupos, basicamente.

-- Para cada grupo você pode aplicar uma função de agregação, por exemplo:
    -- Calcular a soma de itens ...
    -- Contar o número de itens naquele pedido ...

-- Exemplo:

SELECT col1, MAX(col2) FROM table1 GROUP BY col1


/*
    Imagine que, você tem um ID identificação para tipar
    um produto especifico(ex: metal = 7), você pode selecionar
    t0dos os tens de metal e agrupa-los com group by. 
*/

SELECT Produto, COUNT(Tipo) AS "QtdeDeMetal" 
FROM TabelaDeProdutos 
GROUP BY Produto

-- Nesse outro exemplo pegamos a quantidade de cada nome existente no banco de dados(quantidade de nomes repetidos)

SELECT FirstName, COUNT(FirstName) AS "QtdeDeNome" 
FROM Person.Person 
GROUP BY FirstName


-- Media de um produto pela cor, (ex: produto azul custa em media X)
SELECT color, AVG(ListPrice) AS "MEDIA"
FROM Production.Product
WHERE Color = 'Blue'
GROUP BY Color;

/*
    DESAFIOS:
    1 - Quantas pessoas tem o mesmo middle name, agrupadas pelo middle name?
    2 - Qual é a quantidade que cada produto é vendido na loja?
    3 - Quais foram as 10 vendas que no total tiveram os maiores valores de venda (line total)
    por produto do maior valor para o menor
    4 - Quantos produtos e qual a qtde media de produtos temos cadastrados nas nossas ordens de serviço
    (WorkOrder), agrupados por productId

*/

-- 1
SELECT MiddleName, COUNT(MiddleName) "QtdeNomeDoMeio"
FROM Person.Person
GROUP BY MiddleName;

-- 2 

SELECT TOP 10 SalesOrderDetailID, LineTotal
FROM Sales.SalesOrderDetail
ORDER BY LineTotal DESC


-- 3 

SELECT TOP 10 ProductId, SUM(LINETOTAL)
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY SUM(LineTotal) DESC

-- 4 
SELECT ProductId, COUNT(productId) AS "Contagem",
AVG(orderqty) AS "MEDIA"
FROM Production.WorkOrder
GROUP BY ProductId