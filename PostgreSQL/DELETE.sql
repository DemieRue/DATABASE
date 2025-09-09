-- Eliminar columna
ALTER TABLE empleados DROP COLUMN telefono;


--  Eliminar múltiples tablas
DROP TABLE IF EXISTS ventas, detalle_ventas, inventario;

-- eliminar todo los registros o datos de un tabla
-- vaciar o limpiar
DELETE FROM agenda;

-- 3. Delete record where name is "Juan"
DELETE FROM agenda WHERE nombre = 'Juan';

--ELIMINAR UNA TABLA
DROP TABLE nombre_tabla;