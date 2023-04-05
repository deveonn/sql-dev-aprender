-- Usado para filtrar dados que vem um GROUP BY
-- Ou seja, ele filtra valores de dados já agrupados

-- É como se fosse um WHERE para para dados já agrupados

-- EXEMPLO:

SELECT col1,funçãoDeAgregação(col2)
FROM nomeTabela
GROUP BY col1
HAVING condição

/*
    * A grande diferença entre HAVING e WHERE.
    ? GROUP BY é aplicado depois que os dados já foram agrupados(depois)
    ? WHERE é aplicado antes dos dados serem agrupados(antes)


*/

-- * Você só consegue usar o having depois que os dados foram agrupados !!!!
--Exemplo: nomes com ocorrência maior que 10 (que se repetem mais de 10 vezes dentro ta tabela)

select firstname, count(firstname) as "qtde"
from person.person
group by FirstName
having count(FirstName) > 10


-- Pegar os produtos que estão com o total de vendas entre 162k e 500k
select ProductID, sum(LineTotal) as 'total'
from sales.SalesOrderDetail
group by ProductID
having SUM(LineTotal) BETWEEN 162000 AND 500000;

-- um exemplo da vida real de que, onde podemos ver claramente o uso do HAVING e do WHERE:

select firstname, count(firstname) as "qtde"
from person.person
where title like 'mr%'
group by FirstName
having count(FirstName) > 10


/*
    DESAFIOS:

    1 - Estamos querendo identificar as provincias(stateProvidedId) com maior numero de cadastros no 
    nosso sistema, então é preciso encontrar quais provincias(stateProvidedId) estão registradas no
    banco de dados mais que 1000 vezes;

    2 - Sendo que se trata de uma multinacional os gerentes querem saber quais produtos(productId) 
    não estão trazendo em média no mínimo 1 milhão em total de vendas(linetotal)

*/

-- 1 
select StateProvinceID, COUNT(StateProvinceID) as "qtde"
from Person.Address
group by StateProvinceID
having count(StateProvinceID) > 1000

-- 2
select productid, AVG(linetotal) as 'media'
from sales.SalesOrderDetail
group by ProductID
having AVG(LineTotal) < 1000000