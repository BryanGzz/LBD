--Subconsulta--

select * from Activo where Activo.StatusEQ = (select StatusEQ from Activo where StatusEQ = 'Entregado')

--Select with--

Select * from Desktop where es_cpu='Intel' with 

--Select into--

select Area into XYZ from Direccion