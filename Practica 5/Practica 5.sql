USE [Rentas_V2]
GO	

SELECT * FROM laptop
WHERE marca='LENOVO';

SELECT * FROM clientes
WHERE nombre='Diego Alfonso Ramirez';

SELECT * FROM desktop
WHERE model='Refurbished';

SELECT * FROM monitor
WHERE marca='LG';

SELECT * FROM impresora
WHERE model='EcoTank L380';

GO

SELECT COUNT (nombre), direccion
FROM clientes
GROUP BY direccion;

SELECT COUNT (nombre), correo
FROM rente
GROUP BY correo;

SELECT COUNT (marca), model
FROM laptop
GROUP BY model;

SELECT COUNT (model), marca
FROM desktop
GROUP BY marca;

SELECT COUNT (serie), model
FROM monitor
GROUP BY model;

GO

SELECT COUNT(model), es_cpu
AVG (marca),es_cpu 
FROM desktop
GROUP BY model;

SELECT COUNT(model), marca
AVG (es_DD), model
FROM laptop
GROUP BY marca;

SELECT COUNT(marca), model
AVG (pulgadas), model
FROM monitor
GROUP BY model;

SELECT COUNT(model), marca
AVG (especificacion), model
FROM impresora
GROUP BY marca;

SELECT COUNT(add_cliente), date_inicio
AVG (date_inicio), date final
FROM venta
GROUP BY date_inicio;

GO

SELECT COUNT (rfc), direccion
FROM clientes
GROUP BY direccion
HAVING COUNT(rfc) > 1234567890123;

SELECT COUNT (date_ingreso), correo
FROM renter
GROUP BY correo
HAVING COUNT (date_ingreso) > 2009-03-11 10:11:01.100;

SELECT COUNT (es_DD), model
FROM laptop
GROUP BY model
HAVING COUNT (es_DD) > 500GB;

SELECT COUNT (es_DD), marca
FROM desktop
GROUP BY marca
HAVING COUNT (es_DD) > 500GB;

SELECT COUNT (pulgadas), model
FROM monitor
GROUP BY model;
HAVING COUNT (pulgadas) >15;