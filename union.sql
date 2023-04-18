-- Faz parte os operadores que te ajudam combinar resultados de query's;
-- O union combina o retorno de dois ou mais SELECT's em apenas um retorno de tabela;

-- Exemplo:

SELECT colString1, colNumber2 -- mesmo tipo de dado ...
FROM tabela1
UNION
SELECT colString1, colNumber2 -- mesmo tipo de dado ...
FROM tabela2

-- DEVEMOS usar, nos SELECT's que vamos fazer com UNION, a MESMA QUANTIDADE de tabelas e colunas
-- Cada coluna que vai ser respectivamente combinada, DEVE SER DO MESMO TIPO DE DADO(string com string, etc)

-- * UNION REMOVERÁ DADOS REPETIDOS EM SUA UNIÃO DE COLUNAS
-- ? Se quiser pegar até os repetidos use  --->  UNION ALL

-- UNION é usando em tabelas não normalizadas, ou seja, em tabelas com algum tipo de inconsistência

-- EXEMPLO simples:

SELECT BusinessEntityID FROM HumanResources.vEmployeeDepartment
UNION
SELECT BusinessEntityID FROM HumanResources.Employee;