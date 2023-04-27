-- Exemplos de abordagens, funções e maneiras de fazer operações matemáticas em SQLServer:

-- Funções básicas:

/*
    MIN(col) - retorna o valor mínimo de uma coluna;
    MAX(col) - retorna o valor máximo de uma tabela;
    SUM(col) - soma todos os valores na tabela

    ROUND(col, n° de casas decimais) - arredonda as um valor pra ficar com um n° definido de casas decimais

    SQRT() - retorna a raiz quadrada (Square Root) dos valores da coluna   
*/

-- Operadores

-- ! As operações matemáticas vão ser feitas de campo pra campo
-- ! Ou seja, retorna um valor pra cada campo, como se botasse
-- ! Cada coluna uma do lado da outra e fizesse a operação ...

-- SOMAR

    SELECT col1 + col2 
    FROM tabela

-- SUBTRAIR

    SELECT col1 - col2 
    FROM tabela

-- MULTIPLICAR

    SELECT col1 * col2 
    FROM tabela

-- DIVIDIR

    SELECT col1 / col2 
    FROM tabela

-- TODO Exercício: Vá em qualquer tabela e utilize a função ROUND() e demais operações pra praticar !