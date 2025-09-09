--PostgreSQL ofrece algunas funciones para trabajar con fechas y horas. Estas son algunas:

-- current_date: retorna la fecha actual. Ejemplo:

select current_date;

---- por ejemplo '2009-05-20'

-- current_time: retorna la hora actual con la zona horaria. Ejemplo:

select current_time;

---- por ejemplo '18:33:06.074493+00'

-- current_timestamp: retorna la fecha y la hora actual con la zona horaria. Ejemplo:

select current_timestamp;

-- por ejemplo '2009-05-20 18:34:16.63131+00'

-- extract(valor from timestamp): retorna una parte de la fecha u hora según le indiquemos antes
--del from, luego del from debemos indicar un campo o valor de tipo timestamp (o en su defecto
--anteceder la palabra clave timestamp para convertirlo). Ejemplo:

select extract(year from timestamp'2009-12-31 12:25:50');

-- el año '2009'

select extract (month from timestamp'2009-12-31 12:25:50');

-- el mes '12'

select extract (day from timestamp' 2009-12-31 12:25:50');

-- el día '3l'

select extract(hour from timestamp'2009-12-31 12:25:50' );

-- la hora '12'

select extract (minute from timestamp'2009-12-31 12:25:50');

-- el minuto '25'

select extract (second from timestamp' 2009-12-31 12:25:50');

--Retorna el segundo '50'

select extract (century from timestamp' 2009-12-31 12:25:50');
select * from libros
order by titulo, editorial;

-- el siglo '21'

select extract(dow from timestamp'2009-12-31 12:25:50');

-- el día de a semana '4'

select extract (doy from timestamp' 2009-12-31 12:25:50');

-- el día del año '365'

select extract (week from timestamp'2009-12-31 12:25:50');

-- el número de semana dentro del año '53'

select extract (quarter from timestamp'2009-12-31 12:25:50');

-- en que cuarto del año se ubica la fecha '4'

--Problema:

--Trabajamos con la tabla "libros" de una librería.

--Creamos la tabla:

create table libros(
titulo varchar (40) not null,
autor varchar (20) default 'Desconocido',
editorial varchar (20),
edicion timestamp
precio decimal (6,2)
);


--Ingresamos algunos registros:

insert into libros
values ('El aleph', 'Borges', 'Emece' , '1980/10/10', 25.33);
insert into libros
values ('Java en 10 minutos', 'Mario Molina', 'Siglo XXI', '2000/05/05', 50.65) ;
insert into libros
values ('Alicia en el pais de las mararvillas','Lewis Carroll', 'Emece', '2000/08/09' ,19.95) ;
insert into libros
values ('Aprenda PHP', 'Mario Molina' , 'Siglo XXI' , '2000/02/04', 45) ;

--Mostramos el título del libro y el año de edición:

select titulo, extract(year from edicion) from libros;

--mostramos el titulo del libro y el cuarto del año de edicion:
select titulo, extract(quarter from edicion) from libros;

--muestre los titulos de los libros que se editaron el dia 9
--de cualquier mes de cualquier año:
select titulo from libros where extract (day from edicion)=9;








-- Consultas SQL para PostgreSQL - Tabla de Alumnos
-- =====================================================

-- 1. Crear la tabla eligiendo el tipo de dato adecuado para cada campo
CREATE TABLE alumnos(
    apellido VARCHAR(30),
    nombre VARCHAR(30),
    documento CHAR(8),
    domicilio VARCHAR(30),
    fechaingreso DATE,
    fechanacimiento DATE
);

-- 2. Setear el formato para entrada de datos de tipo fecha para que acepte valores "día-mes-año"
-- En PostgreSQL, configuramos el formato de fecha para la sesión actual
SET DateStyle = 'DMY';

-- 3. Ingresar un alumno empleando distintos separadores para las fechas
INSERT INTO alumnos (apellido, nombre, documento, domicilio, fechaingreso, fechanacimiento)
VALUES ('González', 'María', '12345678', 'Av. Principal 123', '15-03-2023', '10/05/2005');

-- 4. Ingresar otro alumno empleando solamente un dígito para día y mes y 2 para el año
INSERT INTO alumnos (apellido, nombre, documento, domicilio, fechaingreso, fechanacimiento)
VALUES ('Pérez', 'Juan', '23456789', 'Calle Segunda 456', '5-8-23', '9/3/04');

-- 5. Ingresar un alumno empleando 2 dígitos para el año de la fecha de ingreso y "null" en "fechanacimiento"
INSERT INTO alumnos (apellido, nombre, documento, domicilio, fechaingreso, fechanacimiento)
VALUES ('Rodríguez', 'Ana', '34567890', 'Plaza Mayor 789', '20-02-22', NULL);

-- 6. Mostrar todos los alumnos que ingresaron antes del '1-1-91'
SELECT * FROM alumnos 
WHERE fechaingreso < '01-01-1991';

-- 7. Mostrar todos los alumnos que tienen "null" en "fechanacimiento"
SELECT * FROM alumnos 
WHERE fechanacimiento IS NULL;

-- 8. Mostrar el año de nacimiento de todos los alumnos
-- Usando EXTRACT para obtener el año
SELECT 
    apellido,
    nombre,
    documento,
    EXTRACT(YEAR FROM fechanacimiento) AS año_nacimiento
FROM alumnos
WHERE fechanacimiento IS NOT NULL;

-- Alternativa usando TO_CHAR para formatear el año
SELECT 
    apellido,
    nombre,
    documento,
    TO_CHAR(fechanacimiento, 'YYYY') AS año_nacimiento
FROM alumnos
WHERE fechanacimiento IS NOT NULL;

-- =====================================================
-- CONSULTAS ADICIONALES ÚTILES
-- =====================================================

-- Ver todos los registros de la tabla
SELECT * FROM alumnos;

-- Ver la estructura de la tabla
\d alumnos

-- Ver el formato de fecha actual
SHOW DateStyle;

-- Contar total de alumnos
SELECT COUNT(*) AS total_alumnos FROM alumnos;

-- Listar alumnos ordenados por fecha de ingreso
SELECT * FROM alumnos 
ORDER BY fechaingreso DESC;

-- Para limpiar la tabla (eliminar todos los registros)
-- TRUNCATE TABLE alumnos;

-- Para eliminar la tabla completamente
-- DROP TABLE alumnos;