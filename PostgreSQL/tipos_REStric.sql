-- 1. Violación de NOT NULL
INSERT INTO ejemplo_completo (nombre, apellido, email) 
VALUES (NULL, 'Gomez', 'test@email.com');

-- 2. Violación de UNIQUE
INSERT INTO ejemplo_completo (codigo_unique, email, nombre, apellido) 
VALUES (1001, 'otro@email.com', 'Ana', 'Garcia');

-- 3. Violación de CHECK
INSERT INTO ejemplo_completo (edad, email, nombre, apellido) 
VALUES (-5, 'test@email.com', 'Luis', 'Lopez');

-- 4. Violación de FOREIGN KEY
INSERT INTO ejemplo_completo (departamento_id, email, nombre, apellido) 
VALUES (999, 'test@email.com', 'Maria', 'Diaz');

-- 5. Inserción exitosa
INSERT INTO ejemplo_completo (
    codigo_unique, email, nombre, apellido, edad, salario, genero,
    departamento_id) 
VALUES (
    1002, 'ana.garcia@email.com', 'Ana', 'Garcia', 25, 45000.00, 'F', 2
);