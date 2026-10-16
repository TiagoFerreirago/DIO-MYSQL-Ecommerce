show tables;
select * from client;
select * from product;
select * from seller;
select * from supplier;
select * from orders;
select * from payment;
select * from productSeller;
--  ------------------------------------------------------------
select * from client where DateBirth < '1997-01-01';

select concat(Fname,' ',LastName) as nome_completo, AddressComplement as endereço
from client where AddressComplement is null;

select concat(Fname, ' ',Minit,'. ',LastName) as nome_completo, 
timestampdiff(year, DateBirth, curdate()) as idade
 from client;
-- ------------------------------------------------------------
select *
from client c
join orders o  on o.IdOrderClient = c.idCliente
join payment p on p.IdClient  = o.IdPaymentClient
              and p.IdPayment = o.IdPaymentCode;
              
select * from seller s join productSeller ps on ps.IdSeller = s.IdSeller
join product p on p.idProduct = ps.IdProduct;

-- ------------------------------------------------------------------------

select RegisteredCompany,Location, round((Price * quantityProduct),2) as compras_por_empresas from seller s join productSeller ps on ps.IdSeller = s.IdSeller
join product p on p.idProduct = ps.IdProduct order by RegisteredCompany desc;

select RegisteredCompany,Location, coalesce(round(sum(Price * quantityProduct),2),0) as compras_por_empresas from seller s left join productSeller ps on ps.IdSeller = s.IdSeller
left join product p on p.idProduct = ps.IdProduct group by s.IdSeller, RegisteredCompany, Location;

-- ---------------------------------------------------------------------
select PaymentType, sum(limitAvailable) as Total_por_tipo_pagamento from payment p, orders o
where o.IdPaymentClient = p.IdClient group by p.PaymentType;

select OrderStatus, 
count(OrderStatus) as numeros_transaçoes 
from client c join orders o on o.IdOrderClient = c.idCliente group by OrderStatus;

select * from product p join productseller ps on ps.IdProduct = ps.IdProduct
join seller s on s.IdSeller = ps.IdSeller where Category = 'home appliance'
group by ProductName, Price having price > 200;