-- Usado para filtrar dados que vem um GROUP BY
-- Ou seja, ele filtra valores de dados já agrupados

-- É como se fosse um WHERE para para dados já agrupados

-- EXEMPLO:

SELECT col1,funçãoDeAgregação(col2)
FROM nomeTabela
GROUP BY col1
HAVING condição

/*
    * A grande diferença enter HAVING e WHERE.
    ? GROUP BY é aplicado depois que os dados já foram agrupados
    ? WHERE é aplicado antes dos dados serem agrupados


*/