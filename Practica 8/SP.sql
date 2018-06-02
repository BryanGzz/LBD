--1era Consulta--

create procedure query_1 @nombre nvarchar(50), @rentas varchar(50)

as

begin
	
SELECT * FROM Clientes WHERE Nombre= @nombre and Rentas = @rentas;
print 'Done';

end

exec consulta_1 'Mario José', 'Sucursal1'

--2nda Consulta--

create procedure query_2 @nombre nvarchar(50), @renter nvarchar(50)

as

begin

SELECT * FROM Renter WHERE Nombre= @nombre and renter = @renter;
print 'Done';

end

exec consulta_2 'Lucas Armando', 'Gerente'

--3era Consulta--

create procedure query_3 @marca nvarchar(50), @model nvarchar(50)

as

begin

SELECT * FROM Laptop WHERE Marca= @marca and model = @model;
print 'Done';

end

exec consulta_3 'HP', 'Pavilion 4000'

--4ta Consulta--

create procedure query_4 @model nvarchar(50), @serie nvarchar(50)

as

begin
SELECT * FROM Monitor WHERE Model= @model and Acronimo = @serie;
print 'Done';

end

exec consulta_4 'Samsung', 'Xpress'

--5ta Consulta--

create procedure query_5 @model nvarchar(50), @serie nvarchar(50)

as

begin

SELECT * FROM Servidor WHERE Model= @model and Serie= @serie
print 'Done';
end

exec consulta_5 'HP', 'Neon'