CREATE TABLE agenda (
    apellido varchar(30),
    nombre varchar (20),
    domicilio varchar (30),
    telefono varchar(11)
);


INSERT INTO agenda (apellido, nombre, domicilio, telefono) 
VALUES
('Acosta', 'Alberto', 'Colon 123', '4234567'),
('Juarez', 'Juan', 'Aveilaneda 135', '4458707'),
('López', 'María', 'Urquiza 333', '4545454'),
('López', 'Jose', 'Urquiza 333', '4545454'),
('Suarez', 'Susana', 'Gral. Paz 1234', '4123456');

select * from agenda;

--cambia a juan por jose
UPDATE agenda set nombre = 'Jose'
where nombre = 'Juan';

--cambiar 4545454 por 4445566
UPDATE agenda SET telefono = '4445566' WHERE telefono = '4545454';

--cambiarjuan po juan jose
UPDATE agenda SET nombre = 'Juan Jose' WHERE nombre = 'Jose';

--Si la columna ya existe y solo quieres establecerla como 
--clave primaria, usa ALTER TABLE para añadir la restricción. 

ALTER TABLE tu_tabla ADD PRIMARY KEY (id_usuario);

--ORDENAR COLUMNAS
--CREAR TABLA TEMPORAL CON EL ORDEN DESEADO

CREATE TABLE empleado (
id_user SERIAL PRIMARY KEY,
nombre varchar(20),
documento varchar(8),
sexo char(1),
domicilio varchar(30),
estado varchar(15),
sueldobasico int,
);

-- TRANSFERIR LOS DATOS

INSERT INTO empleado 
(ID_user, nombre, documento,sexo,domicilio,estado,sueldobasico)
SELECT nombre, documento,sexo,domicilio,sueldobasico,id_user,estado
FROM empleados;

--REEMPLAZA LA TABLA ANTERIOR O ORIGINAL

DROP TABLE empleados;
ALTER TABLE empleado RENAME TO empleados;