-- SUBQUERY OU SUBSELECT;
-- É simplesmente um select dentro de outro select;

-- Exemplo, queremos saber a quais produtos custam acima da media de produtos dessa mesma tabela:

SELECT * 
FROM Production.Product
WHERE ListPrice > (SELECT AVG(ListPrice) FROM Production.Product);

-- Repare que usamos uma condicional que, está usando um select que retorna a média de preços dessa tabela ...
-- TODO A vantagem de se usar sub selects é que eles geram as condições de query de um jeito dinâmico.


-- Achando o nome dos funcionários que são 'Design Engineer' no banco de dados com sub query;
SELECT FirstName 
FROM Person.Person
WHERE BusinessEntityID in (
    SELECT BusinessEntityID FROM HumanResources.Employee 
    WHERE JobTitle = 'Design Engineer'
);


-- Daria pra fazer com inner join também
SELECT P.FirstName
FROM Person.Person AS P
INNER JOIN HumanResources.Employee AS E ON P.BusinessEntityID = E.BusinessEntityID
AND E.JobTitle = 'Design Engineer';

-- Repara que podemos filtrar mais ainda a consulta usando " AND E.JobTittle = 'Design Engineer' "


-- DESAFIO: Encontre todas as pessoas que estão no estado de 'Alberta'


SELECT * 
FROM Person.Address
WHERE StateProvinceID IN (
    SELECT StateProvinceID 
    FROM Person.StateProvince 
    WHERE Name = 'Alberta'
);