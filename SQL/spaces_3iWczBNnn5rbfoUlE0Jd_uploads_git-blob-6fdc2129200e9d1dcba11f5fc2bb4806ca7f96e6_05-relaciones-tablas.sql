
-- Ejercicio  1: Encuentra el nombre de las pistas y los títulos de los álbumes a los que pertenecen.

select 
	a."Title" as "nombre_pista",
	t."Name" as "nombre_album"
from "Album" a 
inner join "Track" t 
	on a."AlbumId" = t."AlbumId" ;

-- Ejercicio 2: Lista los nombres de los artistas y los títulos de sus álbumes. Ordena los resultados por artista.
select 
	a."Name" as "Nombre_artista",
	a2."Title" as "Titulo_album"
from "Artist" a 
inner join "Album" a2 
	on a."ArtistId" = a2."ArtistId" 
order by "Nombre_artista";	

-- Ejercicio 3: Encuentra los nombres de los clientes y los totales de sus facturas. Extrae solo los 5 +
select 
	concat (c."FirstName",' ',c."LastName") as "Nombre_cliente",
	sum (i."Total") as "total_factura"
from "Customer" c 
inner join "Invoice" i 
	on c."CustomerId" = i."CustomerId"
group by concat (c."FirstName",' ',c."LastName")
order by total_factura desc 
limit 5;


-- Ejercicio 5: Muestra los ID de las facturas y los nombres de las pistas incluidas en esas facturas.

select 
	il."InvoiceId" as "ID_factura",
	t."Name" as "nombre_pista"
from "Track" t 
inner join "InvoiceLine" il 
	on t."TrackId" = il."TrackId" ;

-- Ejercicio 6: Encuentra los nombres de los artistas y los géneros de sus pistas.
select 
	a."Name" as "Nombre_artista",
	t."Name" as "Nombre_pista",
	g."Name" as "Genero"
from "Artist" a 
inner join "Album" a2 
	on a."ArtistId" = a2."ArtistId" 
inner join "Track" t 
	on a2."AlbumId" = t."AlbumId" 
inner join "Genre" g 
	on t."GenreId" = g."GenreId" ;

--  Ejercicio 7: Muestra los nombres de las pistas y el tipo de medio en el que están disponibles.
select 
	t."Name" as "Nombre_pista",
 	mt."Name" as "tipo_medio"
from "MediaType" mt 
inner join "Track" t 
	on mt."MediaTypeId" = t."MediaTypeId" ;

-- Ejercicio 8: Encuentra todas las pistas y, si existen, muestra los nombres de los géneros a los que pertenecen. Incluye también las pistas que no tienen un género asignado.**
select 
	t."Name" as "Nombre_pista",
	g."Name" as "Nombre_genero"
from "Track" t 
right join "Genre" g 
	on t."GenreId" = g."GenreId" ;

-- Ejercicio 9: Muestra todos los clientes y, si existen, muestra las facturas que han realizado. Incluye también los clientes que no tienen ninguna factura.
select 
	concat(c."FirstName",' ',c."LastName") as "nombre_cliente",
	count(i."InvoiceId") as "total_facturas"
from "Customer" c 
left join "Invoice" i 
	on c."CustomerId"  = i."CustomerId" 
group by concat(c."FirstName",' ',c."LastName") ;

-- Ejercico 10: Encuentra todos los álbumes y, si existen, muestra los nombres de los artistas que los crearon. Incluye también los álbumes que no tienen un artista asignado (aunque en este caso en la base de datos de Chinook, todos los álbumes tienen un artista asignado).

select 
	a2."Title" as "Album",
	a."Name" as "Nombre"
from "Artist" a 
right join "Album" a2 
	on a."ArtistId" = a2."ArtistId" ;

-- Ejercicio 11: Cuenta cuántas pistas hay en cada género. Ordena los generos en función del número de canciones de mayor a menor. 
select 
	g."Name" as "Genero",
	count(t."TrackId") as "numero_pistas"
from "Genre" g 
right join "Track" t 
	on g."GenreId" = t."GenreId" 
group by g."Name"
order by "numero_pistas" desc;

--  Ejercicio 12: Muestra los títulos de los álbumes y la duración total de todas las pistas en cada álbum.
select 
	a."Title" as "titulo_album",
	sum(t."Milliseconds") as "Duracion_pistas" 
from "Album" a 
left join "Track" t 
	on A."AlbumId" = T."AlbumId" 
group by a."Title" ;

-- Ejercicio 14: Encuentra los nombres de los clientes y el total gastado por cada uno.
select 
	concat(c."FirstName",' ',c."LastName") as "Nombre_cliente",
	sum(i."Total") 
from "Customer" c 
left join "Invoice" i 
	on c."CustomerId" = i."CustomerId" 
group by concat(c."FirstName",' ',c."LastName");


-- Ejercicio 15: Encuentra todos los empleados y, si existen, muestra los nombres de los clientes que tienen asignados. Incluye también los empleados que no tienen clientes asignados.
select 
	concat(e."FirstName",' ',e."LastName") as "nombre empleado",
	concat(c."FirstName",' ',c."LastName") as "nombre cliente"
from "Employee" e 
left join "Customer" c 
	on e."EmployeeId" = c."SupportRepId" ;
	


