CREATE DATABASE e_commerce;

USE e_commerce;

CREATE TABLE produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) UNIQUE NOT NULL,
    tipo VARCHAR(255) NOT NULL,
    data_venda DATE NOT NULL,
    valor DECIMAL(12,2) NOT NULL
);

INSERT INTO produtos (nome, tipo, data_venda, valor) VALUES 
('Secador de Cabelo', 'Beleza', '2023-12-12', 232.23),
('Sapato', 'Calçado', '2022-12-12', 500.23),
('Camisa Branca', 'Roupa', '2023-08-12', 823.13),
('Calça', 'Roupa', '2023-11-12', 155.98),
('Boné', 'Roupa', '2022-12-12', 432.12),
('Mouse', 'Tecnologia', '2022-12-12', 80.00),
('Teclado', 'Tecnologia', '2022-12-12', 100.20),
('Computador', 'Tecnologia', '2022-12-12', 1999.99);

SELECT nome, valor FROM produtos where valor > 500;

SELECT nome, valor FROM produtos where valor < 500;

update produtos set valor = '721.87' where id = 1;
