CREATE TABLE agenda (
    apellido varchar(30)
    nombre varchar (20)
    domicilio varchar (30)
    telefono varchar(11)
);

INSERT INTO agenda (apellido,nombre,domicilio,telefono)
values ('Acosta','Alberto','Colon 123','4234567');
INSERT INTO agenda (apellido,nombre,domicilio,telefono)
values ('Juarez','Juan','Avellaneda 135','4458787');
INSERT INTO agenda (apellido,nombre, domicilio,telefono)
values ('Lopez', 'Maria','Urquiza 333','4545454');
INSERT INTO agenda (apellido,nombre, domicilio,telefono)
values ('Lopez','Jose','Urquiza 333','4545454');
INSERT INTO agenda (apellido,nombre,domicilio,telefono)
values ('Suarez','Susana','Gral. Paz 1234','4123456');

-- ESTA ES LA OTRA FORMA 

INSERT INTO agenda (apellido, nombre, domicilio, telefono) VALUES
('Acosta', 'Alberto', 'Colon 123', '4234567'),
('Juarez', 'Juan', 'Aveilaneda 135', '4458707'),
('López', 'María', 'Urquiza 333', '4545454'),
('López', 'Jose', 'Urquiza 333', '4545454'),
('Suarez', 'Susana', 'Gral. Paz 1234', '4123456');

--3 Modifique el registro cuyo nombre sea "Juan" por "Juan Jose"
--(1 registro afecto)

SELECT 'Initial data:' as status;
SELECT * FROM agenda;

--4- Actualice los registros cuyo número telefónico sea igual a 
--"4545454" por "4445566"

UPDATE agenda SET nombre = 'Juan Jose' WHERE nombre = 'Juan';
SELECT 'After updating Juan to Juan Jose:' as status;
SELECT * FROM agenda;

--5- Actualice los registros que tengan en el campo "nombre" el valor "Juan" por
--"Juan Jose" (ningún registro afectado porque ninguno cumple con la condicion del
--where")

UPDATE agenda SET telefono = '4445566' WHERE telefono = '4545454';
SELECT 'After updating phone 4545454 to 4445566:' as status;
SELECT * FROM agenda;

--6 - Luego de cada actualización ejecute un select que muestre todos los registros
--de la tabla.

UPDATE agenda SET nombre = 'Juan Jose' WHERE nombre = 'Juan';
SELECT 'After trying to update Juan again (no changes):' as status;
SELECT * FROM agenda;








-- cambiar el domicilio de alvarez a Arce 777

UPDATE agenda set domicilio = 'Arce 777'
where apellido = 'Alvarez';



