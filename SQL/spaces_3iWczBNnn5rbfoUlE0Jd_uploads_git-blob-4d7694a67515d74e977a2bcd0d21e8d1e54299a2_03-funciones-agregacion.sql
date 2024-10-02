
/* MIN y MAX */
select *
from track t;

-- Ejercicio 1: Encontrar la duración mínima de las pistas en milisegundos.
select min(milliseconds) as "Duracion minima"
from track t ;

-- Ejercicio 2: Encontrar la duración máxima de las pistas en milisegundos.
select max(milliseconds) as "Duracion maxima"
from track t ;

-- Ejercicio 3: Encontrar el precio mínimo de las pistas.
select min(unit_price) as "precio minimo"
from track t ;

-- Ejercicio 4: Encontrar el precio máximo de las pistas.
select max(unit_price) as "Precio maximo"
from track t ;

-- Ejercicio 5: Encontrar la fecha mínima de la factura.
select min(invoice_date) as "fecha minima"
from invoice i ;

-- Ejercicio 6: Encontrar la fecha máxima de la factura.
select max(invoice_date) as "fecha maxima"
from invoice i ;   

/* COUNT y SUM */

-- Ejercicio 7: Contar el número total de pistas.
select count(track_id) as "Numero de pistas"
from track t ;   

-- Ejercicio 8: Contar el número de clientes en Brasil.
select *
from customer c;

select count (country) as "Numero de clientes de Brasil"
from customer c 
where country = 'Brazil';

-- Ejercicio 9: Sumar la duración total de todas las pistas en milisegundos.
select sum (milliseconds) as "Duracion total"
from track t 

-- Ejercicio 10: Contar el número de empleados con el título 'Sales Support Agent'.
select *
from employee e ;

select count (employee_id) 
from employee e 
where title = 'Sales Support Agent';

-- Ejercicio 11: Sumar el total de las cantidades en las facturas.
select *
from invoice i ;

select sum (total) as "Total facturas"
from invoice i ;

/* AVG, STDDEV, VARIANCE */

-- Ejercicio 12: Calcular la duración media de las pistas en milisegundos.
select round ( avg (milliseconds), 2) as "Duracion media"
from track t;

-- Ejercicio 13: Calcular el precio medio de las pistas.
select round ( avg (unit_price), 2) as "Precio medio"
from track t;    

-- Ejercicio 14: Calcular la desviación estándar de la duración de las pistas.
select round ( stddev (milliseconds), 2) as "Desviacion estandar duracion pista"
from track t;    

-- Ejercicio 15: Calcular la varianza de la duración de las pistas.
select round ( variance (milliseconds), 2) as "Varianza duracion pista"
from track t; 

-- Ejercicio 16: Calcular la desviación estándar del precio de las pistas.
select round ( stddev (unit_price), 2) as "Desviacion estandar precio pista"
from track t;

/* CONCAT */

-- Ejercicio 17: Concatenar el nombre y el apellido de los clientes.
select concat("FirstName", ' ', "LastName") as "Nombre_apellido_cliente" 
from "Customer" c;

