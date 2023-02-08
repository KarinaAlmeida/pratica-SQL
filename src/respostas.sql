
-- NUMERO 1
desafio_sql_b672418d=# SELECT * FROM produtos LIMIT 5;
 id |          nome          | preco  
----+------------------------+--------
  1 | Televisão 43"          | 139997
  2 | Televisão 55"          | 250000
  3 | Notebook Entrada       | 200000
  4 | Notebook Intermediário | 350000
  5 | Notebook Topo de Linha | 600000
(5 rows)

-- desafio_sql_b672418d=# SELECT * FROM clientes LIMIT 3;
 id |          nome          |     cpf     
----+------------------------+-------------
  1 | Allana Fidalgo Moreira | 12345678900
  2 | Benício Freire Sampaio | 98765432100
  3 | Orlando Pequeno Jesus  | 10293847560
(3 rows)

-- NUMERO 3
-- desafio_sql_b672418d=# SELECT * FROM produtos WHERE nome = 'Televisão 43"';
--  id |     nome      | preco  
-- ----+---------------+--------
--   1 | Televisão 43" | 139997
-- (1 row)



-- NUMERO 4
desafio_sql_b672418d=# INSERT INTO produtos (nome, preco) VALUES ('Macbook Pro 1"3"',1700000);
INSERT 0 1

-- NUMERO 5
desafio_sql_b672418d=# DELETE FROM clientes WHERE nome='Orlando Pequeno Jesus';
DELETE 1

-- NUMERO 6
desafio_sql_b672418d=# UPDATE produtos SET preco=8000 WHERE nome='Pelúcia Strange Planet com Gatinho';
UPDATE 1

-- NUMERO 7
desafio_sql_b672418d=# UPDATE produtos SET preco=980000 WHERE nome='Violão Lava ME 2';
UPDATE 1

-- NUMERO 8
desafio_sql_b672418d=# UPDATE clientes SET cpf=04652651298 WHERE nome='Lucca Santarém Branco';
UPDATE 1

-- NUMERO 9
desafio_sql_b672418d=# SELECT * FROM clientes;
 id |           nome            |     cpf     
----+---------------------------+-------------
  1 | Allana Fidalgo Moreira    | 12345678900
  2 | Benício Freire Sampaio    | 98765432100
  4 | Olga Cascais Fortunato    | 01928374650
  5 | Martinha Lima Zambujal    | 11992288445
  6 | Anabela Baptista Soverosa | 22883377446
  7 | Raul Arouca Pederneiras   | 11889922385
  8 | Chico Buarque de Holanda  | 65719484743
 10 | Patrícia Toste Prudente   | 19847457596
  9 | Lucca Santarém Branco     | 4652651298
(9 rows)

desafio_sql_b672418d=# SELECT * FROM produtos;
 id |                nome                |  preco  
----+------------------------------------+---------
  1 | Televisão 43"                      |  139997
  2 | Televisão 55"                      |  250000
  3 | Notebook Entrada                   |  200000
  4 | Notebook Intermediário             |  350000
  5 | Notebook Topo de Linha             |  600000
  6 | Celular Entrada                    |   80000
  7 | Celular Intermediário              |  160000
  8 | Celular Topo de Linha              |  340000
 11 | Bicicleta Elétrica                 |  370000
 12 | Fone Entrada                       |    2000
 13 | Fone Intermediário                 |   20000
 14 | Fone Topo de Linha                 |   80000
 15 | Macbook Pro 1"3"                   | 1700000
  9 | Pelúcia Strange Planet com Gatinho |    8000
 10 | Violão Lava ME 2                   |  980000
(15 rows)
desafio_sql_b672418d=# INSERT INTO compras (id_cliente, id_produto) VALUES (8, 10);
INSERT 0 1

-- NUMERO 10
desafio_sql_b672418d=# INSERT INTO compras (id_cliente, id_produto) VALUES (4, 8), (4, 8);
INSERT 0 2

-- NUMERO 11
desafio_sql_b672418d=# DELETE FROM compras WHERE id = 5;
DELETE 1

-- NUMERO 12
desafio_sql_b672418d=# SELECT * FROM produtos ORDER BY preco ASC;
 id |                nome                |  preco  
----+------------------------------------+---------
 12 | Fone Entrada                       |    2000
  9 | Pelúcia Strange Planet com Gatinho |    8000
 13 | Fone Intermediário                 |   20000
 14 | Fone Topo de Linha                 |   80000
  6 | Celular Entrada                    |   80000
  1 | Televisão 43"                      |  139997
  7 | Celular Intermediário              |  160000
  3 | Notebook Entrada                   |  200000
  2 | Televisão 55"                      |  250000
  8 | Celular Topo de Linha              |  340000
  4 | Notebook Intermediário             |  350000
 11 | Bicicleta Elétrica                 |  370000
  5 | Notebook Topo de Linha             |  600000
 10 | Violão Lava ME 2                   |  980000
--  15 | MacBook Pro 13"                    | 1700000
-- -- (15 rows)

-- NUMERO 13
desafio_sql_b672418d=# SELECT * FROM produtos ORDER BY preco ASC LIMIT 3;
 id |                nome                | preco 
----+------------------------------------+-------
 12 | Fone Entrada                       |  2000
  9 | Pelúcia Strange Planet com Gatinho |  8000
 13 | Fone Intermediário                 | 20000
(3 rows)


-- NUMERO 14
desafio_sql_b672418d=# SELECT * FROM produtos ORDER BY preco DESC LIMIT 1;
 id |      nome       |  preco  
----+-----------------+---------
--  15 | MacBook Pro 13" | 1700000
(1 row)

-- NUMERO 15
desafio_sql_b672418d=# SELECT * FROM produtos ORDER BY preco ASC LIMIT 1 OFFSET 1;
 id |                nome                | preco 
----+------------------------------------+-------
  9 | Pelúcia Strange Planet com Gatinho |  8000
(1 row)
