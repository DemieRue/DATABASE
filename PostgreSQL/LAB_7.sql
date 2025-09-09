-- 1. Create table
CREATE TABLE empleados(
    nombre varchar(20),
    documento varchar(8),
    sexo varchar(1),
    domicilio varchar(30),
    sueldobasico float
);


-- 3. Insert records
INSERT INTO empleados (nombre, documento, sexo, domicilio, sueldobasico)
VALUES ('Juan Juarez', '22333444', 'm', 'Sarmiento 123', 500);

INSERT INTO empleados (nombre, documento, sexo, domicilio, sueldobasico)
VALUES ('Ana Acosta', '27888999', 'f', 'Colon 134', 700);

INSERT INTO empleados (nombre, documento, sexo, domicilio, sueldobasico)
VALUES ('Carlos Caseres', '31222333', 'm', 'Urquiza 479', 850);

-- 4. Muestre todos los datos de los empleados
SELECT * FROM empleados;

-- 5. muestre el nombre, documento y domicilio de los empleados
SELECT nombre, documento, domicilio FROM empleados;

-- 6. realice un select mostrando el documento, sexo y 
--sueldo basico de todos los empleados
SELECT documento, sexo, sueldobasico FROM empleados;