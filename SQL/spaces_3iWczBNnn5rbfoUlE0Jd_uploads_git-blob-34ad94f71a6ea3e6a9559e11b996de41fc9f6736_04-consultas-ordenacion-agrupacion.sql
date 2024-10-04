
-- Ejercicio 1:  Selecciona el nombre de todos los álbumes y ordénalos alfabéticamente.
select *
from "Album" a ;


SELECT *
from "Album" a 
order by "Title" ;

-- Ejercicio 2:  Encuentra el álbum con el mayor número de canciones.
SELECT *
from "Album" a 
order by "ArtistId" desc ;

-- Ejercicio 3:  Calcula la duración promedio, desviación estándar y varianza por compositor.
select avg("Milliseconds") as "Duracion media",
	   stddev("Milliseconds") as "Desviacion estandar",
	   variance("Milliseconds") as "Varianza" ,
	   "Composer" 
from "Track" t 
group by "Composer" 
order by "Composer";

-- Ejercicio 4: Selecciona el título y el precio de las pistas, y limita los resultados a 10.
select "Name" as "Titulo", "UnitPrice" as "Precio" 
from "Track" t 
limit 10;

-- Ejercicio 5: Lista los nombres de los empleados y ordénalos por el ID del empleado en orden descendente.
select *
from "Employee" e ;

select "FirstName" as "Nombre" , "EmployeeId" as "ID empleado"
from "Employee" e 
order by "EmployeeId" desc;

-- Ejercicio 6:  Muestra el número de géneros distintos disponibles en la base de datos.

select *
from "Genre" g;


-- Ejercicio 7: Selecciona el nombre del cliente y el país, limitando los resultados a 5, y ordena por el nombre del cliente.

select "FirstName" as "Nombre_cliente" , "Country" as "Pais"
from "Customer" c  
order by "FirstName" 
limit 5;
    
-- Ejercicio 8: Muestra la cantidad total de clientes agrupados por país.
select *
from "Customer" c ;

select 
		"Country" as "Pais", 
		 count ("CustomerId")
from "Customer" c 
group by "Country" ;


-- Ejercicio 9: Obtén el total de importes de facturas para cada país y muestra solo aquellos con un total superior a 10,000.
select *
from "Invoice" i ;

select 
		"BillingCountry" as "Pais",
		sum ("Total") as "total_importe"
from "Invoice" i 
group by "BillingCountry"
having sum ("Total") > 10.00; 

-- Ejercicio 10: Encuentra los países donde el número total de clientes es mayor a 5. Muestra el país y el número de clientes.
select 
		"Country" as "Pais",
		count ("CustomerId")
from "Customer" c 
group by "Country" 
having count ("CustomerId") > 5;

-- Ejercicio 11: Obtén la cantidad de pistas en cada tipo de medio (MediaType) que tienen una duración mayor a 250,000 milisegundos.

select *
from "Track" t ;

select count ("TrackId")
from "Track" t 
where "Milliseconds" > 250000
group by "TrackId" ;

-- Ejercicio 12: Lista el país y el número total de clientes que han sido asistidos por un representante de ventas específico, cuyo ID sea menor a 5.

select *
from "Customer" c ;

select 
	"SupportRepId" as " representante" ,
	count ("CustomerId") as "numero de clientes"
from "Customer" c 
where "SupportRepId" < 5
group by "SupportRepId" ;


-- Ejercicio 13: Muestra los códigos postales (BillingPostalCode) de los clientes que han hecho más de 5 compras.
select *
from "Invoice" i ;


select 
	"BillingPostalCode" as "codigo postal",
	count("CustomerId") 
from "Invoice" i 
group by "BillingPostalCode" 
having count("CustomerId") >5;


-- Ejercicio 14: Encuentra la cantidad total de pistas en cada tipo de medio (MediaTypeId) donde el precio de la pista (UnitPrice) es mayor a 0.99 y la duración de la pista (Milliseconds) es mayor a 200,000. Muestra el tipo de medio y el número total de pistas.
select 
		
		"MediaTypeId" ,
		count("TrackId") 
from "Track" t 
where "UnitPrice" > 0.99 and "Milliseconds" > 200000
group by "MediaTypeId" ;



-- Ejercicio 15: Lista el país y el estado de los clientes que tienen el soporte asignado a un representante con ID mayor a 3 y cuyo nombre de empresa (Company) no es nulo. Muestra el país, el estado y el número de clientes.

SELECT 
    "Country" as "Pais",
    "State" as "estaso",
    COUNT("CustomerId") AS "numero_de_clientes"
FROM 
  "Customer" c 
WHERE 
    "SupportRepId" > 3 
    AND "Company" IS NOT NULL
GROUP BY 
   "Country", "State"; 
    




