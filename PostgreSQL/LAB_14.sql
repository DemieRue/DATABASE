-- EJEMPLO

truncate table libros;


create table libros (
codigo serial,
titulo varchar (30),
autor varchar(30),
editorial varchar (15),
primary key (codigo)
);


insert into libros (titulo, autor, editorial) 
values 
( 'Martin Fierro', 'Jose Hernandez' , 'Planeta' ),

('Aprenda PHP', 'Mario Molina', 'Emece' ) ,

('Cervantes y el quijote', 'Borges' , 'Paidos' ) ,

( 'Matematica estas ahi', 'Paenza', 'Paidos' ),

('El aleph', 'Borges', 'Emece' ) ;


delete from libros;


select * from libros;

--Ingresamos un nuevo registro:

insert into libros (titulo, autor, editorial)
values ('Antologia poetica', 'Borges', 'Emece' ) ;

--Veamos el resultado:

select * from libros;

--Para el campo "codigo" se guardó el valor 6 porque el valor más alto de ese campo, antes de eliminar
--todos los registros era "5".

--Ahora vaciemos la tabla:

truncate table libros;

--Veamos qué sucede si ingresamos otro registro sin valor para el código:

insert into libros (titulo, autor, editorial)
values ('Antologia poetica', 'Borges', 'Emece' ) ;

--Vemos que la secuencia de "codigo" continúa.

--Ejecutamos entonces:

select * from libros;

--Podemos ordenar el resultado de un "select" para que los registros se muestren ordenados por
--algún campo, para ello usamos la cláusula "order by".

--La sintaxis básica es la siguiente:

select * from NOMBRETABLA
order by CAMPO;

--Creamos la tabla:

create table libros(
codigo serial,
titulo varchar (40) not null,
autor varchar (20) default 'Desconocido',
editorial varchar (20),
precio decimal (6,2),
primary key (codigo)
);

--Ingresamos algunos registros:

--Una farmacia guarda información referente a sus medicamentos en una tabla llamada
--"medicamentos".

--1- Cree la tabla con la siguiente estructura:
create table medicamentos (
codigo serial,
nombre varchar (20),
laboratorio varchar (20),
precio float,
cantidad integer,
primary key (codigo)
) ;

--2- Ingrese los siguientes registros:

insert into medicamentos (nombre, laboratorio, precio, cantidad)
values ('Sertal', 'Roche' , 5.2,100) ;
insert into medicamentos (nombre, laboratorio, precio, cantidad)
values ('Buscapina' , 'Roche', 4.10,200) ;
insert into medicamentos (nombre, laboratorio, precio, cantidad)
values ('Amoxidal 500', 'Bayer' , 15.60,100) ;


select * from medicamentos ORDER BY codigo;

--3- Elimine todos los registros con "delete"

DELETE FROM medicamentos;

--4- Ingrese 2 registros:

insert into medicamentos (nombre, laboratorio, precio, cantidad)
values ('Sertal', 'Roche' , 5.2,100);
insert into medicamentos (nombre, laboratorio, precio, cantidad)
values ('Amoxidal 500', 'Bayer',15.60,100);

--5- Vea los registros para verificar que continuó la secuencia al generar el valor
--para "codigo"

SELECT codigo,nombre,laboratorio,precio,cantidad FROM medicamentos 
ORDER BY codigo;

--6- Vacíe la tabla con truncate table

TRUNCATE TABLE medicamentos;

--7- Ingrese el siguiente registro:

insert into medicamentos (nombre, laboratorio, precio, cantidad)
values ('Buscapina', 'Roche' , 4.10, 200);

--8- Vea los registros para verificar que al cargar el código reinició la secuencia
--en 1.
SELECT codigo,nombre,laboratorio,precio,cantidad FROM medicamentos 
ORDER BY codigo;
