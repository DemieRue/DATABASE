-- Crear tabla
CREATE TABLE libros (
    titulo VARCHAR(30),
    autor VARCHAR(30),
    editorial VARCHAR(15),
    precio FLOAT
);

-- Insertar datos
INSERT INTO libros (titulo, autor, editorial, precio)
VALUES ('El aleph', 'Borges', 'Emece', 24.50);

INSERT INTO libros (titulo, autor, editorial, precio)
VALUES ('Martin Fierro', 'Jose Hernandez', 'Emece', 16.00);

INSERT INTO libros (titulo, autor, editorial, precio)
VALUES ('Aprenda PHP', 'Mario Molina', 'Emece', 35.40);

INSERT INTO libros (titulo, autor, editorial, precio)
VALUES ('Cervantes y el quijote', 'Borges', 'Paidos', 50.90);

-- Seleccionar registros cuyo autor sea diferente de 'Borges'
SELECT * FROM libros
WHERE autor <> 'Borges';