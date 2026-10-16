
-- 1. CLIENT
insert into client (Fname, Minit, LastName, CPF, Address, AddressComplement, DateBirth) values
('Ana',      'M', 'Silva',   '10000000001', 'Rua das Flores, 120 - Salvador/BA',        'Apto 301',  '1990-03-15'),
('Bruno',    'A', 'Costa',   '10000000002', 'Av. Brasil, 450 - Rio de Janeiro/RJ',      null,        '1985-07-22'),
('Carla',    'C', 'Souza',   '10000000003', 'Rua Chile, 78 - Curitiba/PR',              'Casa 2',    '1992-11-05'),
('Diego',    'R', 'Lima',    '10000000004', 'Av. Paulista, 1500 - São Paulo/SP',        'Sala 12',   '1988-01-30'),
('Elisa',    'L', 'Rocha',   '10000000005', 'Rua da Aurora, 33 - Recife/PE',            null,        '1995-09-18'),
('Felipe',   'S', 'Alves',   '10000000006', 'Rua Sergipe, 210 - Belo Horizonte/MG',     'Bloco B',   '1983-04-12'),
('Gabriela', 'B', 'Nunes',   '10000000007', 'Av. Beira Mar, 900 - Fortaleza/CE',        'Apto 802',  '1997-12-01'),
('Henrique', 'F', 'Matos',   '10000000008', 'Rua XV de Novembro, 55 - Porto Alegre/RS', null,        '1980-06-25'),
('Isabela',  'O', 'Freitas', '10000000009', 'Rua Goiás, 14 - Goiânia/GO',               'Casa',      '1999-02-14'),
('João',     'P', 'Pereira', '10000000010', 'Av. Amazonas, 700 - Manaus/AM',            'Apto 45',   '1991-08-09');

-- 2. PRODUCT
insert into product (ProductName, Category, Description_, Price, Charges, size, code_) values
('Geladeira Frost Free 400L', 'home appliance', 'Geladeira inox duas portas',      3499.90, 120.00, '400L',  'ELE-001'),
('Micro-ondas 30L',           'home appliance', 'Micro-ondas com grill',            599.90,  25.00, '30L',   'ELE-002'),
('Liquidificador 900W',       'home appliance', 'Liquidificador com 5 velocidades', 249.90,  10.00, '2L',    'ELE-003'),
('Boneca Fashion',            'toy',            'Boneca articulada com acessórios', 129.90,   5.00, '30cm',  'BRQ-001'),
('Kit Blocos de Montar',      'toy',            'Kit com 500 peças',                189.90,   8.00, '500pç', 'BRQ-002'),
('Carrinho Controle Remoto',  'toy',            'Carrinho 4x4 recarregável',        159.90,   7.00, '25cm',  'BRQ-003'),
('Camiseta Algodão',          'clothing',       'Camiseta básica 100% algodão',      59.90,   3.00, 'M',     'VES-001'),
('Calça Jeans',               'clothing',       'Calça jeans slim masculina',       139.90,   6.00, '42',    'VES-002'),
('Jaqueta Corta-vento',       'clothing',       'Jaqueta impermeável',              219.90,   9.00, 'G',     'VES-003'),
('Fone Bluetooth',            'not select',     'Fone sem fio com estojo',          199.90,   8.00, 'Único', 'GER-001');

-- 3. PAYMENT 
insert into payment (IdClient, IdPayment, PaymentType, limitAvailable) values
(1,  1, 'Cartão', 5000.00),
(2,  1, 'Boleto', null),
(3,  1, 'Cartão', 2500.00),
(4,  1, 'Cartão', 1200.00),
(5,  1, 'Boleto', null),
(6,  1, 'Cartão', 8000.00),
(7,  1, 'Cartão', 3000.00),
(8,  1, 'Boleto', null),
(9,  1, 'Cartão', 1500.00),
(10, 1, 'Cartão', 4000.00);

-- 4. ORDERS 
insert into orders (IdOrderClient, IdPaymentClient, IdPaymentCode, OrderStatus, OrderDescription, Freight, OrderNumber, DateIssue, PaymentCash) values
(1, 1, 1, 'Confirmed',  'Geladeira Frost Free',    89.90, 'PED-2026-0001', '2026-09-01', false),
(2, 2, 1, 'Processing', 'Liquidificador 900W',     19.90, 'PED-2026-0002', '2026-09-05', true),
(3, 3, 1, 'Confirmed',  'Duas bonecas fashion',    15.00, 'PED-2026-0003', '2026-09-08', false),
(4, 4, 1, 'Confirmed',  'Kit blocos de montar',    12.50, 'PED-2026-0004', '2026-09-10', false),
(5, 5, 1, 'Processing', 'Dois carrinhos controle', 18.00, 'PED-2026-0005', '2026-09-14', true),
(6, 6, 1, 'Confirmed',  'Três camisetas',          10.00, 'PED-2026-0006', '2026-09-18', false),
(7, 7, 1, 'Cancelled',  'Calça jeans',             14.90, 'PED-2026-0007', '2026-09-22', false),
(8, 8, 1, 'Processing', 'Jaqueta corta-vento',     16.00, 'PED-2026-0008', '2026-09-25', true),
(1, 1, 1, 'Confirmed',  'Fone bluetooth',           9.90, 'PED-2026-0009', '2026-10-02', false),
(3, 3, 1, 'Confirmed',  'Micro-ondas 30L',         35.00, 'PED-2026-0010', '2026-10-07', false);

-- 5. PRODUCTSTORAGE
insert into productStorage (Location, Quantity) values
('São Paulo - Galpão A',      120),
('São Paulo - Galpão B',       80),
('Rio de Janeiro - CD 1',     200),
('Curitiba - CD 2',            60),
('Recife - Depósito 1',       150),
('Belo Horizonte - Galpão C',  90),
('Fortaleza - Depósito 2',     45),
('Porto Alegre - CD 3',       300),
('Goiânia - Depósito 3',       70),
('Manaus - Galpão D',         110);

-- 6. SUPPLIER
insert into supplier (RegisteredCompany, CNPJ, Phone, Address, NumberAddress) values
('Eletro Brasil Ltda',        '30000000000101', '1133334001', 'Rua Industrial',       '100'),
('Casa & Cia Distribuidora',  '30000000000102', '2133334002', 'Av. dos Comerciantes', '250'),
('Brinca Mais Atacado',       '30000000000103', '4133334003', 'Rua do Brinquedo',     '35'),
('Moda Fácil Têxtil',         '30000000000104', '3133334004', 'Av. da Moda',          '780'),
('Tech Importados S.A.',      '30000000000105', '1133334005', 'Rua da Tecnologia',    '12'),
('Lar Perfeito Eletro',       '30000000000106', '8133334006', 'Av. Norte',            '400'),
('Mundo Infantil Ltda',       '30000000000107', '8533334007', 'Rua das Crianças',     '90'),
('Fio de Ouro Confecções',    '30000000000108', '5133334008', 'Rua dos Tecidos',      '66'),
('Global Eletrônicos',        '30000000000109', '6233334009', 'Av. Central',          '1500'),
('Amazônia Distribuição',     '30000000000110', '9233334010', 'Rua do Porto',         '21');

-- 7. SELLER (CPF nulo: vendedores cadastrados como pessoa jurídica)
insert into seller (RegisteredCompany, Location, TradeName, Address, NumberAddress, Phone, CNPJ, CPF) values
('Tech Casa Comércio Ltda',    'São Paulo',      'TechCasa',     'Av. Paulista',         '1000', '11987650001', '20000000000101', null),
('Eletro Mania Ltda',          'Rio de Janeiro', 'EletroMania',  'Rua da Carioca',       '45',   '21987650002', '20000000000102', null),
('Mundo dos Brinquedos ME',    'Curitiba',       'MundoToys',    'Rua XV',               '300',  '41987650003', '20000000000103', null),
('Kids Store Eireli',          'Recife',         'KidsStore',    'Av. Boa Viagem',       '210',  '81987650004', '20000000000104', null),
('Moda Brasil Ltda',           'Belo Horizonte', 'ModaBrasil',   'Rua da Bahia',         '88',   '31987650005', '20000000000105', null),
('Estilo Urbano ME',           'Fortaleza',      'EstiloUrbano', 'Av. Dom Luís',         '150',  '85987650006', '20000000000106', null),
('Vestir Bem Ltda',            'Porto Alegre',   'VestirBem',    'Rua dos Andradas',     '502',  '51987650007', '20000000000107', null),
('Gadgets & Cia Ltda',         'Goiânia',        'Gadgets',      'Av. Goiás',            '77',   '62987650008', '20000000000108', null),
('Casa Nova Utilidades',       'Manaus',         'CasaNova',     'Av. Eduardo Ribeiro',  '19',   '92987650009', '20000000000109', null),
('Mega Variedades Ltda',       'Salvador',       'MegaVar',      'Av. Sete',             '640',  '71987650010', '20000000000110', null);

-- 8. PRODUCTSELLER
insert into productSeller (IdProduct, IdSeller, quantityProduct) values
(1,  1,  50),
(2,  1,  30),
(3,  2, 100),
(4,  3,  80),
(5,  3,  60),
(6,  4,  40),
(7,  5, 200),
(8,  6, 150),
(9,  7,  90),
(10, 8, 120);

-- 9. PRODUCTORDER 
insert into productOrder (IdProduct, IdProductOrder, ProductQuantity, ProductStatus) values
(1,  1,  1, 'available'),
(3,  2,  1, 'available'),
(4,  3,  2, 'available'),
(5,  4,  1, 'available'),
(6,  5,  2, 'available'),
(7,  6,  3, 'available'),
(8,  7,  1, 'available'),
(9,  8,  1, 'Out of stock'),
(10, 9,  1, 'available'),
(2,  10, 1, 'available');

-- 10. STORAGELOCATION 
insert into storageLocation (IdLocationProduct, IdLocationStorage, Location) values
(1,  1,  'Corredor A - Prateleira 1'),
(2,  2,  'Corredor A - Prateleira 2'),
(3,  3,  'Corredor B - Prateleira 1'),
(4,  4,  'Corredor B - Prateleira 3'),
(5,  5,  'Corredor C - Prateleira 1'),
(6,  6,  'Corredor C - Prateleira 2'),
(7,  7,  'Corredor D - Prateleira 1'),
(8,  8,  'Corredor D - Prateleira 4'),
(9,  9,  'Corredor E - Prateleira 2'),
(10, 10, 'Corredor E - Prateleira 3');