
 create table libros(
  codigo serial,
  titulo varchar(40) not null,
  autor varchar(30) default 'Desconocido',
  editorial varchar(15),
  precio decimal(5,2),
  cantidad smallint,
  primary key(codigo)
 );

 insert into libros(titulo,autor,editorial,precio,cantidad)
  values('El aleph','Borges','Planeta',15,null);
 insert into libros(titulo,autor,editorial,precio,cantidad)
  values('Martin Fierro','Jose Hernandez','Emece',22.20,200);
 insert into libros(titulo,autor,editorial,precio,cantidad)
  values('Antologia poetica','J.L. Borges','Planeta',null,150);
 insert into libros(titulo,autor,editorial,precio,cantidad)
  values('Aprenda PHP','Mario Molina','Emece',18.20,null);
 insert into libros(titulo,autor,editorial,precio,cantidad)
  values('Cervantes y el quijote','Bioy Casares- J.L. Borges','Paidos',null,100);
 insert into libros(titulo,autor,editorial,precio,cantidad)
  values('Manual de PHP', 'J.C. Paez', 'Siglo XXI',31.80,120);
 insert into libros(titulo,autor,editorial,precio,cantidad)
  values('Harry Potter y la piedra filosofal','J.K. Rowling',default,45.00,90);
 insert into libros(titulo,autor,editorial,precio,cantidad)
  values('Harry Potter y la camara secreta','J.K. Rowling','Emece',46.00,100);
 insert into libros (titulo,autor,cantidad)
  values('Alicia en el pais de las maravillas','Lewis Carroll',220);
 insert into libros (titulo,autor,cantidad)
  values('PHP de la A a la Z',default,0);

  select * from libros
  where cantidad>=50 and cantidad<=130;
  select * from libros where cantidad between  50 and 130;

   select * from libros where cantidad not between  50 and 130;

select * from libros 
where autor='Borges';

select * from libros 
where autor like '%Borges%';

select * from libros 
where titulo like 'M%';

select * from libros 
where titulo not like 'M%';

select * from libros 
where autor like '%Bor_e_';

select titulo,precio from libros 
where precio like '1_.%';