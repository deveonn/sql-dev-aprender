-- Existem 3 tipos de joins
-- INNER JOIN, OUTER JOIN E SELF-JOIN

-- Exemplo:

SELECT C.cliente, C.nome, E.Rua, E.cidade
FROM cliente C
INNER JOIN Endereco E ON E.EderecoId = C.EnderecoId


-- outro exemplo:
SELECT p.BusinessEntityId, p.FirstName, p.LastName, pe.EmailAddress
FROM Person.Person AS P
INNER JOIN Person.EmailAddress AS PE ON p.BusinessEntityId  = pe.BusinessEntityID

-- exemplo mais simples de como usar o inner join:
-- pegando nome de uma tabela e email de outra;

-- no banco do curso temos uma tabela de endereço de email, e de informações pessoais:

-- geramos uma nova tabela devolvida com inner join, com duas tabelas que tem o BusinessEntityID em comum;
-- a partir de uma chave estrangeira, usamos o inner join, se necessário ver os campos das tabelas:
-- select top 10 * from person.person;
-- select top 10 * from person.emailAddress;


select pp.FirstName, pe.EmailAddress
from Person.Person as pp
inner join Person.EmailAddress as pe on pp.BusinessEntityID = pe.BusinessEntityID;
-- output: firstName e email


-- verificar os campos das duas tabelas:
SELECT TOP 10 * FROM Production.Product;
SELECT TOP 10 * FROM Production.ProductSubcategory;



-- pega o ListPrice, nome do produto, nome da subcategoria:
SELECT pp.ListPrice, pp.Name, ps.Name
FROM production.product as pp
inner join production.productSubcategory as ps on pp.ProductSubcategoryID = ps.ProductSubcategoryID

-- também temos outra situação onde simplesmente queremos juntar todas informações:

-- select top 10 * from  person.BusinessEntityAddress
-- select top 10 * from person.Address


SELECT TOP 10 * 
FROM Person.BusinessEntityAddress AS BA
INNER JOIN Person.Address PA ON PA.AddressID = BA.AddressID;

-- Podemos chamar isso de produto cartesiano(estudar?)


-- DESAFIO 1:
SELECT TOP 10 * 
FROM Person.BusinessEntityAddress AS BA
INNER JOIN Person.Address PA ON PA.AddressID = BA.AddressID;

-- DESAFIO 2:
SELECT TOP 10 pa.AddressId, pa.City, pa.StateProvinceId, ps.Name
FROM Person.Address AS PA
INNER JOIN Person.StateProvince AS ps ON pa.StateProvinceID = ps.StateProvinceID