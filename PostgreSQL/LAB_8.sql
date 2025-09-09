-- 1. Create table
CREATE TABLE agenda(
    apellido varchar(30),
    nombre varchar(20),
    domicilio varchar(30),
    telefono varchar(11)
);


-- 3. Insert records
INSERT INTO agenda (apellido, nombre, domicilio, telefono) 
VALUES
('Acosta', 'Ana', 'Colon 123', '4234567'),
('Bustamante', 'Betina', 'Avellaneda 135', '4458787'),
('Lopez', 'Hector', 'Salta 545', '4887788'),
('Lopez', 'Luis', 'Urquiza 333', '4545454'),
('Lopez', 'Marisa', 'Urquiza 333', '4545454');

-- 4. seleccione todos los registros de la tabla
SELECT * FROM agenda;

-- 5. seleccione el registro cuyo nombre sea "Marisa"
SELECT * FROM agenda WHERE nombre = 'Marisa';

-- 6. seleccione los nombre y domicilios de quienes tengan
-- el apellido igual  "Lopez"
SELECT nombre, domicilio FROM agenda WHERE apellido = 'Lopez';

-- 7. muestra el nombre de quienes tengan el telefono "4545454"
SELECT nombre FROM agenda WHERE telefono = '4545454';