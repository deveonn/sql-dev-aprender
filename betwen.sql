-- Usando para encontrar entre um valor mínimo e um valor máximo:

SELECT name 
FROM table1
WHERE idade BETWEEN 10 AND 15

-- ---------
SELECT * 
FROM Production.Product 
WHERE ListPrice BETWEEN 1000 AND 1500;

-- ---------
SELECT * 
FROM Production.Product 
WHERE ListPrice NOT BETWEEN 1000 AND 1500;


-- Trabalhando com datas:
SELECT * 
FROM HumanResources.Employee 
WHERE HireDate BETWEEN '2009/01/01' and '2010/01/01'
ORDER BY HireDate ASC;