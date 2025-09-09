-- 1. Create table
CREATE TABLE agenda(
    apellido varchar(30),
    nombre varchar(20),
    domicilio varchar(30),
    telefono varchar(11)
);

-- 2. Insert records
INSERT INTO agenda (apellido, nombre, domicilio, telefono) 
VALUES
('Alvarez', 'Alberto', 'Colon 123', '4234567'),
('Juarez', 'Juan', 'Avellaneda 135', '4458787'),
('Lopez', 'Maria', 'Urquiza 333', '4545454'),
('Lopez', 'Jose', 'Urquiza 333', '4545454'),
('Salas', 'Susana', 'Gral. Paz 1234', '4123456');

-- 3. elimine el registro cuyo nombre sea "Juan"
DELETE FROM agenda WHERE nombre = 'Juan';

-- 4. elimine los registros cuyo numero telefonico sea
-- igual a"4545454"
DELETE FROM agenda WHERE telefono = '4545454';

-- 5. mostrar tabla
SELECT * FROM agenda;

-- 6. elimine todos los registros
DELETE FROM agenda;

-- 7. muestre la tabla agenda
SELECT * FROM agenda;