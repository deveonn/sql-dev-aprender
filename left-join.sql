-- exemplo real de como podemos usar left join:

SELECT TOP 10 * FROM sales.PersonCreditCard AS SP
LEFT JOIN Person.Person AS PP 
ON SP.BusinessEntityID = PP.BusinessEntityID