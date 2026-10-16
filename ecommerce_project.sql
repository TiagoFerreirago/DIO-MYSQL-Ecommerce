
create table client(
    idCliente int primary key auto_increment,
    Fname varchar(30),
    Minit char(2),
    LastName varchar(30),
    CPF char(11) not null,
    Address varchar(200) not null,
    AddressComplement varchar(200),
    DateBirth date,
    constraint unique_cpf_cliente unique(CPF)
);

create table product(
    idProduct int auto_increment primary key,
    ProductName varchar(60) not null,
    Category enum('home appliance', 'toy', 'clothing', 'not select') default 'not select',
    Description_ varchar(100),
    Price float default 0.0,
    Charges float default 0.0,
    size varchar(50),
    code_ varchar(30) not null
);

create table payment(
    IdClient int,
    IdPayment int,
    PaymentType enum('Boleto','Cartão'),
    limitAvailable float,
    primary key(IdClient, IdPayment)
);

create table orders(
    IdOrder int auto_increment primary key,
    IdOrderClient int,
    IdPaymentClient int,
    IdPaymentCode int,
    OrderStatus enum('Cancelled', 'Confirmed', 'Processing'),
    OrderDescription varchar(150),
    Freight float default 0.0,
    OrderNumber varchar(15) not null,
    DateIssue date,
    PaymentCash bool default false,
    constraint fk_orders_client foreign key (IdOrderClient) references client(idCliente),
    constraint fk_orders_payment foreign key (IdPaymentClient, IdPaymentCode) references payment(IdClient, IdPayment)
    on update cascade
);

create table productStorage(
    IdEstoque int auto_increment primary key,
    Location varchar(50) not null,
    Quantity int default 0
);

create table supplier(
    IdSupplier int auto_increment primary key,
    RegisteredCompany varchar(50) not null,
    CNPJ varchar(15) not null,
    Phone varchar(15) not null,
    Address varchar(150) not null,
    NumberAddress char(10) not null,
    constraint unique_supplier_CNPJ unique(CNPJ)
);

create table seller(
    IdSeller int auto_increment primary key,
    RegisteredCompany varchar(50) not null,
    Location varchar(50) not null,
    TradeName varchar(50) not null,
    Address varchar(50) not null,
    NumberAddress char(10) not null,
    Phone char(11) not null,
    CNPJ char(14),                      
    CPF char(11),                       
    constraint unique_seller_CNPJ unique(CNPJ),
    constraint unique_seller_CPF unique(CPF)
);

create table productSeller(
    IdProduct int,
    IdSeller int,
    quantityProduct int default 1,
    primary key(IdProduct, IdSeller),
    constraint fk_product_seller foreign key (IdSeller) references seller(IdSeller),
    constraint fk_product_product foreign key (IdProduct) references product(idProduct)
    on update cascade
);

create table productOrder(
    IdProduct int,
    IdProductOrder int,
    ProductQuantity int default 1,
    ProductStatus enum('Out of stock','available') default 'available',
    primary key(IdProduct, IdProductOrder),
    constraint fk_product foreign key (IdProduct) references product(idProduct),
    constraint fk_product_Order foreign key (IdProductOrder) references orders(IdOrder)
);

create table storageLocation(
    IdLocationProduct int,
    IdLocationStorage int,
    Location varchar(100) not null,
    primary key(IdLocationProduct, IdLocationStorage),
    constraint fk_product_seller_location foreign key (IdLocationProduct) references product(idProduct),
    constraint fk_storage_location foreign key (IdLocationStorage) references productStorage(IdEstoque)  -- corrigido: antes apontava para orders
);
    
    /*show databases;
    use information_schema;
    show tables;
    desc referential_constraints;
    select * from referential_constraints where CONSTRAINT_SCHEMA = 'ecommecer';*/
    
    
    
	
    
    
    
	
    
    
    
    
	

	
    
    
    
    
    
    
