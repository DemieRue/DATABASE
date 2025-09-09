-- Crear base de datos de prueba (opcional)
--Tipos de Restricciones Incluidas:

    PRIMARY KEY - Clave primaria VA indentificar de forma unica

    FOREIGN KEY - Clave foránea con opciones ON DELETE

    UNIQUE - Valores únicos

    NOT NULL - Valores obligatorios NO NULO (SI O SI)

    CHECK - Validaciones personalizadas

    DEFAULT - Valores por defecto

    SERIAL - Auto-incremento

Tipos de Datos Incluidos:

    Numéricos: SERIAL, INT, DECIMAL, REAL, DOUBLE

    Texto: CHAR, VARCHAR, TEXT

    Fechas: DATE, TIME, TIMESTAMP, INTERVAL

    Booleanos: BOOLEAN

    Binarios: BYTEA

    JSON: JSON, JSONB

    Arrays: INTEGER[], TEXT[]

    Geométricos: POINT, LINE, BOX, CIRCLE

    Redes: INET, MACADDR

    UUID: UUID




CREATE DATABASE ejemplo_restricciones;
\c ejemplo_restricciones;

-- Tabla principal con múltiples tipos de datos y restricciones
CREATE TABLE ejemplo_completo (
    -- COLUMNAS CON RESTRICCIONES DE INTEGRIDAD
    -- va identificar de forma unica 
    id SERIAL PRIMARY KEY,  -- Auto-incremento + clave primaria
    id USER PRIMARY KEY,
    -- RESTRICCIONES UNIQUE
    codigo_unique INT UNIQUE,  -- Valor único
    email VARCHAR(100) UNIQUE NOT NULL,  -- Único y no nulo
    
    -- RESTRICCIONES NOT NULL NO NULO(SI O SI) OBLIGO
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    
    -- RESTRICCIONES CHECK
    edad INT CHECK (edad >= 0 AND edad <= 120),  -- Rango de valores
    salario DECIMAL(10,2) CHECK (salario > 0),  -- Valor positivo
    genero CHAR(1) CHECK (genero IN ('M', 'F', 'O')),  -- Valores específicos
    
    -- RESTRICCIONES DEFAULT
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    activo BOOLEAN DEFAULT TRUE,
    pais VARCHAR(30) DEFAULT 'Argentina',
    
    -- DIFERENTES TIPOS DE DATOS
    -- Numéricos
    entero_small SMALLINT,
    entero_normal INTEGER,
    entero_grande BIGINT,
    decimal_num DECIMAL(10,2),
    real_num REAL,
    doble_num DOUBLE PRECISION,
    
    -- Texto
    texto_corto CHAR(10),  -- Longitud fija
    texto_variable VARCHAR(255),  -- Longitud variable
    texto_libre TEXT,  -- Texto largo
    
    -- Binarios
    binario_bytea BYTEA,  -- Datos binarios
    
    -- Fechas y horas
    fecha_sola DATE,
    hora_sola TIME,
    fecha_hora TIMESTAMP,
    fecha_hora_tz TIMESTAMPTZ,  -- Con zona horaria
    intervalo INTERVAL,
    
    -- Booleanos
    es_valido BOOLEAN,
    
    -- Geométricos
    punto POINT,
    linea LINE,
    caja BOX,
    circulo CIRCLE,
    
    -- Redes
    direccion_ip INET,
    direccion_mac MACADDR,
    
    -- UUID
    uuid_unico UUID,
    
    -- JSON
    datos_json JSON,
    datos_jsonb JSONB,  -- Binario (más eficiente)
    
    -- Arrays
    numeros_array INTEGER[],
    textos_array TEXT[],
    
    -- RESTRICCIONES COMPUESTAS
    CONSTRAINT chk_nombre_valido CHECK (nombre ~ '^[A-Za-zÁáÉéÍíÓóÚúÑñ\s]+$'),
    CONSTRAINT chk_email_valido CHECK (email ~ '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'),
    CONSTRAINT chk_fecha_valida CHECK (fecha_creacion <= CURRENT_TIMESTAMP),
    
    -- CLAVE FORÁNEA (se crea otra tabla para referencia)
    departamento_id INT REFERENCES departamentos(id)
);

-- Tabla para relación (clave foránea)
CREATE TABLE departamentos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    presupuesto DECIMAL(12,2) CHECK (presupuesto >= 0)
);

-- Tabla con restricciones de clave compuesta
CREATE TABLE empleados_proyectos (
    empleado_id INT NOT NULL,
    proyecto_id INT NOT NULL,
    horas_trabajadas INT CHECK (horas_trabajadas > 0),
    fecha_asignacion DATE DEFAULT CURRENT_DATE,
    
    -- CLAVE PRIMARIA COMPUESTA
    PRIMARY KEY (empleado_id, proyecto_id),
    
    -- CLAVES FORÁNEAS
    FOREIGN KEY (empleado_id) REFERENCES ejemplo_completo(id) ON DELETE CASCADE,
    FOREIGN KEY (proyecto_id) REFERENCES proyectos(id) ON DELETE RESTRICT
);

-- Tabla proyectos para clave foránea
CREATE TABLE proyectos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE CHECK (fecha_fin > fecha_inicio)
);

-- Insertar datos de ejemplo
INSERT INTO departamentos (nombre, presupuesto) VALUES 
('TI', 100000.00),
('Ventas', 50000.00),
('RH', 30000.00);

INSERT INTO proyectos (nombre, fecha_inicio, fecha_fin) VALUES
('Sistema ERP', '2024-01-01', '2024-12-31'),
('App Móvil', '2024-03-01', '2024-09-30');

-- Insertar datos en la tabla principal
INSERT INTO ejemplo_completo (
    codigo_unique, email, nombre, apellido, edad, salario, genero,
    pais, entero_normal, decimal_num, texto_variable, fecha_sola,
    es_valido, datos_json, numeros_array, departamento_id)
VALUES (
    1001, 'juan.perez@email.com', 'Juan', 'Pérez', 30, 50000.50, 'M',
    'Argentina', 123, 999.99, 'Texto de ejemplo', '2024-01-15',
    TRUE, '{"departamento": "TI", "proyecto": "ERP"}', ARRAY[1,2,3,4], 1
);

-- Mostrar estructura de las tablas
\d ejemplo_completo
\d departamentos
\d empleados_proyectos

-- Consultar datos
SELECT * FROM ejemplo_completo;
SELECT * FROM departamentos;