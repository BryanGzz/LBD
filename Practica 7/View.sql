CREATE VIEW Clientes_X as select Nombre from Clientes

--Contar los nombres--
		
SELECT  COUNT(Nombre) from Clientes_X

--Mostrar todos los nombres--

SELECT *  from Clientes_X