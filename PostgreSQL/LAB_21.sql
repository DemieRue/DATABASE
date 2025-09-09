select titulo as titulolibro,autor from libros;

create table clientes (
id serial,
nombres varchar (50),
edad int
);

select * from clientes;

insert into clientes (nombres,edad)
values ('Rodrigo Silva','28');

insert into clientes (nombres,edad)
values ('Blass Juan','25');


create table libros(
	codigo serial primary key,
	titulo varchar(40),
	autor varchar(30) not null default 'Desconocido',
	editorial varchar(20),
	precio decimal(5,2),
	cantidad smallint default 0
);

select * from libros;

insert into libros (titulo,editorial,precio)
values
('Java en 10 minutos','Paidos',50.40);


select char_length('Hola');

select upper('Hola');

select lower('Hola');

select position ('Mundo' in 'Hola Mundo');

select position ('MUNDO' in 'Hola Mundo');

select substring('Hola Mundo' from 1 for 2);

select substring('Hola Mundo' from 6 for 5);

select char_length(trim('Hola Mundo'));

select char_length(trim(leading '' from 'Hola Mundo'));

select trim(trailing'-' from '--Hola Mundo----');

select char_length(ltrim('  Hola'));




CREATE TABLE departamentos(
dep int NOT NULL,
departamento varchar (25),
PRIMARY KEY (dep)
);

CREATE TABLE personas(
per int NOT NULL,
nombre varchar(25),
apellidol varchar (25),
apellido2 varchar (25),
dep int NOT NULL,
PRIMARY KEY (per),
FOREIGN KEY (dep) REFERENCES departamentos (dep)
);

insert into departamentos (dep, departamento) values
(1, 'ADMINISTRACION' ),
(2, 'INFORMATICA' ) ,
(3, 'COMERCIAL' ) ;

insert into personas (per, nombre, apellidol, apellido2, dep) values
(1, 'Antonio', 'Perez' , 'Gomez' , 1) ,
(2, 'Antonio' , 'Garcia', 'Rodriguez' , 3),
(3, 'Pedro', 'Ruiz', 'Gonzales' , 2) ;

select * from departamentos;

select * from personas;