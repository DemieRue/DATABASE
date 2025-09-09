Para copiar los datos de una tabla a otra nueva tabla en PostgreSQL, tienes varias opciones. Te explico las más comunes:

-- 1. **Crear tabla nueva y copiar datos** (Método completo):

-- Crear nueva tabla con la misma estructura
CREATE TABLE nueva_tabla AS 
SELECT * FROM tabla_origen;

-- O especificar columnas específicas
CREATE TABLE nueva_tabla AS 
SELECT id_user, nombre, email FROM tabla_origen;


-- 2. **Crear tabla con estructura específica y copiar datos**:

-- Crear tabla con estructura definida
CREATE TABLE nueva_tabla (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    email VARCHAR(255)
);

-- Copiar datos
INSERT INTO nueva_tabla (nombre, email)
SELECT nombre, email FROM tabla_origen;


-- 3. **Copiar solo la estructura sin datos**:

-- Crear tabla vacía con la misma estructura
CREATE TABLE nueva_tabla AS 
SELECT * FROM tabla_origen 
WHERE 1 = 0; -- Condición falsa, no copia datos


-- 4. **Copiar datos existentes a tabla ya creada**:

-- Si la tabla ya existe
INSERT INTO nueva_tabla 
SELECT * FROM tabla_origen;

-- O especificar columnas
INSERT INTO nueva_tabla (columna1, columna2)
SELECT columna1, columna2 FROM tabla_origen;


-- 5. **Copiar con condiciones**:

-- Copiar solo algunos registros
CREATE TABLE usuarios_activos AS 
SELECT * FROM usuarios 
WHERE activo = true;


-- 6. **Copiar con transformaciones**:

-- Copiar datos con modificaciones
CREATE TABLE usuarios_mayusculas AS 
SELECT 
    id,
    UPPER(nombre) as nombre,
    LOWER(email) as email
FROM usuarios;


-- ⚠️ Consideraciones importantes:

-- **`CREATE TABLE AS`** crea una nueva tabla con los datos
-- **`INSERT INTO`** agrega datos a una tabla existente
-- **Las restricciones y índices no se copian** automáticamente
-- **Usa `WHERE 1 = 0`** para copiar solo la estructura

-- Ejemplo completo:

-- Copiar tabla completa
CREATE TABLE empleados_backup AS 
SELECT * FROM empleados;

-- Verificar que se copiaron los datos
SELECT COUNT(*) FROM empleados_backup;


