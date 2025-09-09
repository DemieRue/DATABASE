-- 1. Crear tabla con clave primaria
CREATE TABLE libros(
    codigo int not null,
    titulo varchar(40) not null,
    autor varchar(20),
    editorial varchar(15),
    primary key(codigo)
);

-- 2. Insertar registros válidos

INSERT INTO libros (codigo, titulo, autor, editorial) VALUES
(1, 'El aleph', 'Borges', 'Emece'),
(2, 'Martin Fierro', 'Jose Hernandez', 'Planeta'),
(3, 'Aprenda PHP', 'Mario Molina', 'Nuevo Siglo');

-- Mostrar datos insertados

SELECT 'Datos insertados correctamente:' as estado;
SELECT * FROM libros;

-- 3. Ingrese un registro con código repetido (debe fallar)

SELECT 'Intentando insertar código repetido (1):' as estado;
INSERT INTO libros (codigo, titulo, autor, editorial) VALUES
(1, 'Cien años de soledad', 'García Márquez', 'Sudamericana');

-- 4. Intente ingresar el valor NULL en el campo "código" 
--(debe fallar) 

SELECT 'Intentando insertar NULL en código:' as estado;
INSERT INTO libros (codigo, titulo, autor, editorial) VALUES
(null, '1984', 'George Orwell', 'Debolsillo');

-- 5. Intente actualizar el código del libro "Martin Fierro" a "1"
--valor existente (debe fallar)

SELECT 'Intentando actualizar código a valor existente:' as estado;
UPDATE libros SET codigo = 1 WHERE titulo = 'Martin Fierro';

-- Mostrar que los datos originales permanecen intactos

SELECT 'Datos finales (sin cambios):' as estado;
SELECT * FROM libros;






create table usuarios(
ci int primary key,
nombre varchar(20),
apellido varchar(20)
);
insert into usuarios(ci,nombre,apellido)
values 
(1111,'rodrigo','silva');

insert into usuarios(ci,nombre,apellido)
values 
(null,'rodrigo','silva');

create table usuarios(
ci int,
nombre varchar(20),
apellido varchar(20)
);

create table usuarios(
ci serial,
nombre varchar(20),
apellido varchar(20)
);

insert into usuarios(nombre,apellido)
values 
('rodrigo','silva');

select * from usuarios

insert into usuarios(nombre,apellido)
values 
('americo','silva'),
('diego','arratia'),
('jenny','florencia');

delete from usuarios where ci=4;

insert into usuarios(nombre,apellido)
values 
('americo','rufo');