Una empresa almacena los datos de sus empleados en una tabla "empleados".

I- Cree la tabla:

create table empleados (
nombre varchar (30),
documento char (8),
domicilio varchar(30),
fechaingreso date,
seccion varchar (20),
sueldo decimal (6,2),
primary key(documento)
) :



insert into empleados (nombre,documento,domicilio,fechaingreso,seccion,sueldo)
values 
('Juan Perez' , '22333444', 'Colon 123', '1990-10-08', 'Gerencia', 900.50),
('Ana Acosta', '23444555', 'Caseros 987', '1995-12-18', 'Secretaria', 590.30),
('Lucas Duarte', '25666777', 'Sucre 235' , '2005-05-15', 'Sistemas' , 790),
('Pamela Gonzalez' , '26777888' , 'Sarmiento 873', '1999-02-12', 'Secretaria' , 550),
('Marcos Juarez' , '30000111', 'Rivadavia 801', '2002-09-22', 'Contaduria', 630.70),
('Yolanda Perez' , '35111222', 'Colon 180', '1990-10-08', 'Administracion', 400),
('Rodolfo Perez', '35555888', 'Coronel Olmedo 588', '1990-05-28', 'Sistemas' , 800);

3- Muestre todos los empleados con apellido "Perez" empleando el operador "like" (3 registros)

4- Muestre todos los empleados cuyo domicilio comience con "Co" y tengan un "8" (2 registros)

5- Muestre todos los nombres y sueldos de los empleados cuyos sueldos incluyen centavos (3
registros)

6- Muestre los empleados que hayan ingresado en "1990" (3 registros)


