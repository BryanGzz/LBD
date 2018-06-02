select * from Clientes join Contrato on Clientes.razonSocial = Contrato.[id_contrato]
select * from Activo join Venta on Activo.[id_activo] = Venta.[id_venta]
select * from Desktop join Impresora on Desktop.[id_desktop] = Impresora.model

select * from Clientes left join Contrato on Clientes.razonSocial = Contrato.[id_contrato]
select * from Activo left join Venta on Activo.[id_activo] = Venta.[id_venta]
select * from Desktop left join Impresora on Desktop.[id_desktop] = Impresora.model

select * from Clientes as C1 cross join Clientes as C2 order by C1.Direccion
select * from Activo as A1 cross join Activo as A2 order by A2.statusEQ
select * from Desktop as D1 cross join Desktop as D2 order by D1.model

select * from Clientes right join Contrato on Clientes.razonSocial = Contrato.[id_contrato]