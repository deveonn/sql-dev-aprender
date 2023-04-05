-- o AS serve para definir aliases para algumas coisas(apelidos)


-- Exemplo:

SELECT top 10 listprice as "lista de preços" from Production.Product

-- Outro uso do AS é pra quando usamos uma função de agregação que gera um valor,
-- mas ela não da um nome pro valor gerado, então adicionamos o AS pra nomear
-- o resultado dessa operação:

select top 10 avg(listprice) from Production.Product
-- output: 'no column name'

select top 10 avg(listprice) as 'media dos preços' from Production.Product
-- output: 'media de preços' ...



/*
    Desafio:
    1 - Encontrar o first name e last name da tabela person.person e traga os resultados 
    com os nomes das colunas em português:

    2 - Encontre a coluna product number da tabela production.product e renomear para "Numero do Produto"

    3 - Na tabela sales.salesOrderDetail unitPrice e renomear para preço unitário
*/



-- 1:
SELECT FirstName AS Nome, LastName AS Sobrenome 
FROM Person.Person

-- 2:
SELECT ProductNumber AS "Número do produto" 
FROM Production.Product 

-- 3:
SELECT UnitPrice AS "Preço Unitário" 
FROM Sales.SalesOrderDetail