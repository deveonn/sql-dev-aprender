/*
    Desafios:
    
    1 - Quantos produtos temos cadastrados no sistema que custam mais que 1500 dólares?
    2 - Quantas pessoas temos com o sobrenome que inicia com a letra P?
    3 - Em quantas cidades únicas estão cadastrados nosso clientes?
    4 - Quais são as cidades únicas que temos cadastrados em nosso sistemas?
    5 - Quantos produtos vermelhos tem o preço entre 500 e 1500 dólares?
    6 - Quantos produtos cadastrados tem a palavra 'road' no nome deles?
*/


-- 1
SELECT COUNT(ListPrice)
FROM Production.Product
WHERE ListPrice > 1500;

-- 2
SELECT COUNT(LastName)
FROM Person.Person
WHERE LastName LIKE 'p%';

-- 3 -- ERREI
SELECT DISTINCT COUNT(City)
FROM Person.Address;

-- 3 -- Forma correta
SELECT COUNT(DISTINCT(City))
FROM Person.Address;

-- 4 
SELECT DISTINCT COUNT(City)
FROM Person.Address;

-- 5
SELECT COUNT(Color)
FROM Production.Product
WHERE COLOR = 'RED' 
AND ListPrice BETWEEN 500 AND 1500; 

-- 6
SELECT COUNT(*)
FROM Production.Product
WHERE name LIKE '%road%';
