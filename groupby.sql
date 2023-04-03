-- * GROUP BY vai dividir o resultado da sua pesquisa em grupos, basicamente.

-- Para cada grupo você pode aplicar uma função de agregação, por exemplo:
    -- Calcular a soma de itens ...
    -- Contar o número de itens naquele pedido ...

-- Exemplo:

SELECT col1, MAX(col2) FROM table1 GROUP BY col1


/*
    Imagine que, você tem um ID identificação para tipar
    um produto especifico(ex: metal = 7), você pode selecionar
    t0dos os tens de metal e agrupa-los com group by. 
*/

SELECT Produto,COUNT(Tipo) AS "QtdeDeMetal" 
FROM TabelaDeProdutos 
GROUP BY Produto

-- Nesse outro exemplo pegamos a quantidade de cada nome existente no banco de dados(quantidade de nomes repetidos)

SELECT FirstName, COUNT(FirstName) AS "QtdeDeNome" 
FROM Person.Person 
GROUP BY FirstName
