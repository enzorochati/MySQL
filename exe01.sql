CREATE DATABASE rh;

USE rh;

CREATE TABLE colaboradores (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    idade INTEGER NOT NULL,
    salario DECIMAL(12,2) NOT NULL
);

INSERT INTO colaboradores (nome, cpf, idade, salario) VALUES 
('Fabiano Oliveira', '32423423422', 20, 1999.23),
('João Gomes', '32423423423', 20, 2321.32),
('Guilherme Lima', '32423423124', 43, 4233.04),
('Leonan da Silva', '32423423162', 20, 1582.20),
('Maria Soares', '32423423161', 32, 2022.00);

SELECT nome, salario FROM colaboradores where salario > 2000;

SELECT nome, salario FROM colaboradores where salario < 2000;

update colaboradores set salario = '2345.87' where id = 1;
