--ANADIR COMLUMNAS #####################################

-- Añadir columna con restricciones
ALTER TABLE empleados ADD COLUMN email VARCHAR(100) UNIQUE NOT NULL;

-- Añadir columna con valor por defecto
ALTER TABLE empleados ADD COLUMN fecha_contratacion DATE DEFAULT CURRENT_DATE;

--ELIMINAR ##############################################

-- Eliminar columna con CASCADE (elimina dependencias)
ALTER TABLE empleados DROP COLUMN email CASCADE;

--MODIFICAR COLUMNAS ###################################

-- Cambiar tipo de dato
ALTER TABLE empleados ALTER COLUMN telefono TYPE VARCHAR(20);

-- Añadir NOT NULL
ALTER TABLE empleados ALTER COLUMN nombre SET NOT NULL;

-- Quitar NOT NULL
ALTER TABLE empleados ALTER COLUMN nombre DROP NOT NULL;

-- Cambiar valor por defecto
ALTER TABLE empleados ALTER COLUMN salario SET DEFAULT 0;
ALTER TABLE empleados ALTER COLUMN salario DROP DEFAULT;

-- Renombrar columna
ALTER TABLE empleados RENAME COLUMN telefono TO celular;


-- RESTRCCIONES (CONSTRAINTS) ############################

-- Añadir clave primaria
ALTER TABLE empleados ADD PRIMARY KEY (id);


-- Añadir clave única
ALTER TABLE empleados ADD CONSTRAINT uk_email UNIQUE (email);

-- Añadir check constraint
ALTER TABLE empleados ADD CONSTRAINT chk_salario CHECK (salario > 0);

-- Añadir clave foránea
ALTER TABLE empleados ADD CONSTRAINT fk_departamento 
    FOREIGN KEY (departamento_id) REFERENCES departamentos(id);

-- Eliminar restricción
ALTER TABLE empleados DROP CONSTRAINT chk_salario;

-- Deshabilitar/Habilitar restricción
ALTER TABLE empleados DISABLE TRIGGER ALL;  -- Para bulk operations
ALTER TABLE empleados ENABLE TRIGGER ALL;

--RENOMBRAR TABLAS #####################################

-- Renombrar tabla
ALTER TABLE empleados RENAME TO colaboradores;

-- MODIFICAR BASES DE DATOS ############################

-- Cambiar nombre de la base de datos
ALTER DATABASE old_name RENAME TO new_name;

-- Cambiar propietario
ALTER DATABASE mi_db OWNER TO nuevo_usuario;

-- Cambiar tablespace
ALTER DATABASE mi_db SET TABLESPACE nuevo_tablespace;

-- Cambiar parámetros
ALTER DATABASE mi_db SET enable_indexscan = off;
ALTER DATABASE mi_db RESET enable_indexscan;

-- Establecer límites de conexión
ALTER DATABASE mi_db CONNECTION LIMIT 50;

--MODIFICAR ESQUEMAS ####################################

-- Renombrar esquema
ALTER SCHEMA public RENAME TO mi_esquema;

-- Cambiar propietario del esquema
ALTER SCHEMA mi_esquema OWNER TO nuevo_usuario;

--MODIFICAR SECUENCIAS ###############################

-- Cambiar valor de la secuencia
ALTER SEQUENCE empleados_id_seq RESTART WITH 1000;

-- Cambiar incremento
ALTER SEQUENCE empleados_id_seq INCREMENT BY 2;

-- Cambiar valor mínimo/máximo
ALTER SEQUENCE empleados_id_seq MINVALUE 0 MAXVALUE 9999;

-- Cambiar propietario
ALTER SEQUENCE empleados_id_seq OWNER TO nuevo_usuario;


--MODIFICAR VISTAS ###################################

-- Cambiar nombre de vista
ALTER VIEW vista_empleados RENAME TO vista_colaboradores;

-- Cambiar propietario
ALTER VIEW vista_empleados OWNER TO nuevo_usuario;

-- Cambiar schema
ALTER VIEW vista_empleados SET SCHEMA nuevo_esquema;

--MODIFICAR INDICES ###################################

-- Renombrar índice
ALTER INDEX idx_empleados_nombre RENAME TO idx_colaboradores_nombre;

-- Cambiar tablespace
ALTER INDEX idx_empleados_nombre SET TABLESPACE fast_tablespace;

-- Reconstruir índice (CONCURRENTLY evita bloqueos)
ALTER INDEX idx_empleados_nombre REINDEX;
ALTER INDEX idx_empleados_nombre REINDEX CONCURRENTLY;

--MODIFICAR TIPOS DE DATOS ################################

-- Añadir valor a ENUM
ALTER TYPE tipo_empleado ADD VALUE 'temporal';

-- Renombrar tipo
ALTER TYPE tipo_empleado RENAME TO tipo_colaborador;

-- Cambiar schema del tipo
ALTER TYPE tipo_empleado SET SCHEMA nuevo_esquema;

-- MODIFICAR ROLES/USUARIOS ##############################

-- Cambiar contraseña
ALTER ROLE usuario WITH PASSWORD 'nueva_contraseña';

-- Añadir atributos
ALTER ROLE usuario WITH LOGIN SUPERUSER CREATEDB;

-- Quitar atributos
ALTER ROLE usuario WITH NOSUPERUSER NOCREATEDB;

-- Cambiar límites de conexión
ALTER ROLE usuario CONNECTION LIMIT 10;

-- Cambiar fecha de expiración
ALTER ROLE usuario VALID UNTIL '2024-12-31';


-- MODIFICAR FUNCIONES ##################################

-- Cambiar propietario de función
ALTER FUNCTION calcular_salario(INT) OWNER TO nuevo_usuario;

-- Cambiar schema de función
ALTER FUNCTION calcular_salario(INT) SET SCHEMA nuevo_esquema;
