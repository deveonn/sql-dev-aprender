-- * SELF JOIN É UMA FORMA DE AGRUPAR DADOS DENTRO DA MESMA TABELA
-- Ele filtra informações dentro da mesma tabela ...

-- * para usar ele, você DEVE usar ALIAS junto (AS)

-- ? EXEMPLO:

SELECT col1 
FROM tabela1 a, tabela2 B
WHERE condição

-- Outro:
SELECT * 
FROM Customers A, Customers B
WHERE A.City = B.City;

-- Pegando nome e data dos mesmos funcionários que foram contratados no mesmo ano

SELECT A.FirstName, A.HireDate,B.FirstName, B.HireDate 
from Employees a, Employees B
where DATEPART(YEAR, a.HireDate) = DATEPART(YEAR, b.HireDate);

-- TODO: Estudar função DATEPART() DO SQL, Prof. gravou aula na sequencia errada provavelmente...

-- ? Em resumo, ELE UNE informações especificadas e agrupa essas informações na tabela, para que possamos ver
-- ? por exemplo, funcionário que foi contratado na mesma época, etc ...

-- DESAFIO:
-- Quais são os produtos que tem o mesmo percentual de desconto na tabela [Order Details]


-- TOODO agrupe os valores da mesma tabela ex abaixo, pois isso organiza melhor a visualização das duas tabelas diferentes(ou mais tabelas ...) 
select a.ProductID, a.Discount, b.ProductID, b.Discount
from [Order Details] a, [Order Details] b
where a.Discount = b.Discount