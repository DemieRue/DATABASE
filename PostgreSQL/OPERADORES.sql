--DISTINTO

SELECT * FROM libros
WHERE autor <> 'Borges';

--IGUAL

SELECT * FROM libros
WHERE autor = 'Borges';

--MAYOR QUE

SELECT * FROM libros
WHERE autor > 'Borges';

--MENOR QUE

SELECT * FROM libros
WHERE autor < 'Borges';

--MAYOR O IGUAL QUE

SELECT * FROM libros
WHERE autor >= 'Borges';

--MENOR O IGUAL QUE

SELECT * FROM libros
WHERE autor <= 'Borges';