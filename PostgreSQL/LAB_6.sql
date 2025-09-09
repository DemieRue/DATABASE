-- 1. Crear la tabla "agenda"
create table agenda (
    apellido varchar(30),
    nombre varchar(20),
    domicilio varchar(30),
    telefono varchar(11)
);



-- 2. Insertar registros
insert into agenda (apellido, nombre, domicilio, telefono)
values ('Moreno','Alberto','Colon 123','4234567');

insert into agenda (apellido, nombre, domicilio, telefono)
values ('Torres','Juan','Avellaneda 135','4458787');

-- 3. Seleccionar todos los registros
select * from agenda;

-- 4. Eliminar la tabla agenda
drop table agenda;

-- 5. Intentar eliminar nuevamente la tabla (provocará error porque ya no existe)
drop table agenda;

-- 💡 Si quieres evitar el error y que el script siga, usa:
-- drop table if exists agenda;
