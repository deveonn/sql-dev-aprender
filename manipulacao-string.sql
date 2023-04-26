-- https://learn.microsoft.com/pt-br/sql/t-sql/functions/string-functions-transact-sql?view=sql-server-ver16

-- ! Funções de manipulação de Strings

-- * CONCAT(argumentos ...) => Concatena strings em um único campo;

-- ? EX:

    SELECT CONCAT(FirstName, LastName)
    FROM Person.Person;
    -- output : nomesobrenome   (tudo junto)

-- ? Mas podemos facilmente colocar um espaço na função, assim o output fica mais legível;

    SELECT CONCAT(FirstName, ' ', LastName)
    FROM Person.Person;
    -- output : nome sobrenome

-- * UPPER() => DEIXA TODA A STRING EM MAIÚSCULA;

    SELECT UPPER(FirstName)
    FROM Person.Person;
    -- output : NOME

-- * LOWER() => tudo em minúsculo:
    
    SELECT LOWER(FirstName)
    FROM Person.Person;
    -- output: nome

-- * LEN() => RETORNA A QUANTIDADE DE CARACTERES;

    SELECT LEN(FirstName)
    FROM Person.Person;
    --output: 7
    --       10
    --       ...

-- * SUBSTRING(col, indice inicial, indice final) => ele extrai um pedaço da string;
-- * Ou seja: informando a partir de qual indice ele deve cortar a string,
-- * Ele pega um pedaço dela;

    SELECT FirstName, SUBSTRING(FirstName, 1, 3)
    FROM Person.Person;
    -- output: Joã (João)

-- ! No SQLServer, indice começa no 1 e não no 0.

-- * REPLACE(col, o que deve pegar, o que depois de pegar vai substituir) =>

    SELECT REPLACE(ProductNumber, '-', '#' )
    FROM Production.Product
    -- output: AR#5381 (AR-5381)

-- TODO: fazer exercício com todos essas funções de manipulação de strings !!!