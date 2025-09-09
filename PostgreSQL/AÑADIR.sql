-- Añadir columna simple con su tipo de dato
ALTER TABLE empleados ADD COLUMN telefono VARCHAR(15);

--Usa ALTER TABLE con ADD COLUMN para crear la nueva 
--columna y su tipo de dato primary key y serial. 
ALTER TABLE tu_tabla ADD COLUMN id_usuario SERIAL PRIMARY KEY;



