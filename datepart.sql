-- DATEPART é uma função para trabalhar com datas

/*
    EXEMPLO:
        * DATEPART ( datepart , date )
        
        ? datepart = o que queremos, ex:  dia, mês, ano, etc.
        ? date = qual a coluna que vamos pegar a data;
*/

SELECT SalesOrderID, DATEPART(MONTH, OrderDate) AS DayOfSelling
FROM Sales.SalesOrderHeader;

-- Usando essa função, podemos pegar uma informação específica da data, como apenas o dia, mês, ano ...
-- * Para saber o que mais podemos fazer usando demais parâmetros da função, podemos conferir as DOCs do SQLServer
-- * https://learn.microsoft.com/pt-br/sql/t-sql/functions/datepart-transact-sql?view=sql-server-ver16


-- outro exemplo
SELECT AVG(TotalDue) AS Media, DATEPART(month, OrderDate) AS MesVenda
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(month, OrderDate)
ORDER BY MesVenda;



-- DESAFIO:
-- Pegue o mes e ano de qualquer tabela:

SELECT DATEPART(MONTH, HireDate) as Mes, DATEPART(YEAR, HireDate) as Ano
FROM HumanResources.Employee;