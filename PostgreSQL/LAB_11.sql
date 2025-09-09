--1 Creación de la tabla
create table articulos (
    codigo integer primary key,
    nombre varchar(20),
    descripcion varchar(30),
    precio float,
    cantidad integer
);

--2 Inserción de registros Ingresamos los 5 registros:

insert into articulos (codigo, nombre, descripcion, precio, cantidad)
values (1, 'impresora', 'Epson Stylus C45', 400.80, 20);

insert into articulos (codigo, nombre, descripcion, precio, cantidad)
values (2, 'impresora', 'Epson Stylus C85', 500.00, 30);

insert into articulos (codigo, nombre, descripcion, precio, cantidad)
values (3, 'monitor', 'Samsung 14', 800.00, 10);

insert into articulos (codigo, nombre, descripcion, precio, cantidad)
values (4, 'teclado', 'Inglés Biswal', 100.00, 50);

insert into articulos (codigo, nombre, descripcion, precio, cantidad)
values (5, 'teclado', 'Español Biswal', 90.00, 50);

--3 Seleccionar los datos de las impresoras (2 registros)

select * from articulos
where nombre = 'impresora';

--4 Seleccionar artículos cuyo precio sea mayor o igual a 400 (3 registros)

select * from articulos
where precio >= 400;

--5 Seleccionar código y nombre de artículos cuya cantidad sea menor a 30 (2 registros)

select codigo, nombre from articulos
where cantidad < 30;

--6 Seleccionar nombre y descripción de artículos que NO cuesten 100 (4 registros)

select nombre, descripcion from articulos
where precio <> 100;





create table libros (
titulo varchar(30)
autor varchar (30)
editorial varchar (15)
precio float);


insert into libros (titulo, autor editorial, precio)
values ('El aleph','Borges','Emece',' 24.50' ),
('Martin Fierro','Jose Hernandez','Emece','16.00'),
('Aprenda PHP','Mario Molina','Emece', '35 40'),
('Cervantes K el quijote', 'Borges', 'Paidos' ,'50 90');