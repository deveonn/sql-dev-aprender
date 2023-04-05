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

