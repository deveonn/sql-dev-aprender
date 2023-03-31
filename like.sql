-- Usado para fazer query's a partir de uma parte do valor procurado


-- só lembro do inicio do nome
SELECT * 
FROM Person.Person
WHERE FirstName LIKE 'jo%'


-- só lembro do final do nome
SELECT * 
FROM Person.Person
WHERE FirstName LIKE '%jo'


-- só lembro da metade do valor:
SELECT * 
FROM Person.Person
WHERE FirstName LIKE '%jo%'