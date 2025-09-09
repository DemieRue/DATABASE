-- EJEMPLO
create table libros (
codigo serial,
titulo varchar (20),
autor varchar (30),
editorial varchar (15),
primary key (codigo)
):


insert into libros (titulo,autor, editorial)
values 
('Martin Fierro','Jose Hernandez','Emece'),

('Aprenda PHP','Mario Molina','Emece' ) ,

('Cervantes y el quijote','Borges','Paidos') ,

('Matematica estas ahi','Paenza','Paidos');



select codigo, titulo, autor, editorial from libros;


DELETE FROM libros WHERE codigo = 1;

select * from libros;


insert into libros (codigo,titulo, autor, editorial)
values (1,'Aprender Python','Rodriguez Luis','Paidos');

select * from libros;


insert into libros (titulo, autor, editorial)
values ('Java Ya','Nelson','Paidos');

select * from libros;

-- LABORATORIO
CREATE TABLE peliculas (
    codigo SERIAL PRIMARY KEY,
    titulo VARCHAR(40) NOT NULL,
    actor VARCHAR(20),
    duracion INTEGER
);

insert into peliculas (titulo, actor, duracion)
values
('Mision imposible' , 'Tom Cruise' , 120),

('Harry Potter y la piedra filosofal', 'xxx' ,180),

('Harry Potter y la camara secreta' , 'xxx' , 190);

('Mision imposible 2', 'Tom Cruise' , 120) ,

('La vida es bella', 'zzz' , 220);


select * from peliculas;

-- =============================================
-- 4- Seleccionar todos los registros y verificar la carga automática de códigos
-- =============================================

SELECT * FROM peliculas ORDER BY codigo;

-- =============================================
-- 5- Actualizar las películas cuyo código es 3, colocando "Daniel R." en actor
-- =============================================

UPDATE peliculas 
SET actor = 'Daniel R.' 
WHERE codigo = 3;

-- Verificar la actualización
SELECT * FROM peliculas WHERE codigo = 3;

-- =============================================
-- 6- Eliminar la película 'La vida es bella'
-- =============================================

DELETE FROM peliculas 
WHERE titulo = 'La vida es bella';

-- Verificar que se eliminó
SELECT * FROM peliculas WHERE titulo = 'La vida es bella';

-- =============================================
-- 7- Eliminar todas las películas cuya duración sea igual a 120 minutos
-- =============================================

DELETE FROM peliculas 
WHERE duracion = 120;

-- Verificar las eliminaciones
SELECT * FROM peliculas WHERE duracion = 120;

-- =============================================
-- 8- Visualizar los registros restantes
-- =============================================

SELECT * FROM peliculas ORDER BY codigo;

-- =============================================
-- 9- Insertar un nuevo registro sin valor para la clave primaria
-- =============================================

INSERT INTO peliculas (titulo, actor, duracion) 
VALUES ('Mujer bonita', 'Richard Gere', 120);

-- =============================================
-- CONSULTAS ADICIONALES DE VERIFICACIÓN
-- =============================================

-- Mostrar el estado final de la tabla
SELECT codigo,titulo,actor,duracion FROM peliculas 
ORDER BY codigo;

-- Contar total de películas
SELECT COUNT(*) as total_peliculas FROM peliculas;

-- Mostrar información sobre la secuencia del campo codigo
SELECT 
    sequence_name,
    last_value,
    increment_by
FROM information_schema.sequences 
WHERE sequence_name LIKE 'peliculas_codigo_seq';

-- =============================================
-- NOTAS IMPORTANTES:
-- =============================================
/*
1. La tabla usa SERIAL para el campo codigo, que genera automáticamente 
   valores únicos incrementales.

2. El campo titulo tiene restricción VARCHAR(40).

3. El campo actor tiene restricción VARCHAR(20).

4. El campo duracion es de tipo INTEGER.

5. Después de las eliminaciones en los pasos 6 y 7, quedarán solo 
   las películas que no tengan duración de 120 minutos y que no 
   sean "La vida es bella".

6. El último INSERT (paso 9) generará automáticamente un nuevo 
   código secuencial, aunque se hayan eliminado registros anteriores.
*/




