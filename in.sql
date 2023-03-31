-- Usamos o operador IN juntamente com o WHERE para verificar se um valor corresponde com qualquer valor passado na lista de valores

SELECT *
FROM table1
WHERE valor IN (VALOR1, VALOR2)

SELECT *
FROM Person.Person
WHERE BusinessEntityID IN (2, 7, 13)

-- or

SELECT *
FROM Person.Person
WHERE BusinessEntityID NOT IN (2, 7, 13)

-- Ou seja, podemos passar pro IN, valores específicos que queremos pegar em uma query;