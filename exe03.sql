CREATE DATABASE escola;

USE escola;

CREATE TABLE estudantes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    nota DECIMAL(3,1) NOT NULL,
    aula VARCHAR(255) NOT NULL
);

INSERT INTO estudantes (nome, cpf, nota, aula) VALUES 
('Enzo Henrique da Silva Rocha', '13212312321', 7.2, 'Historia'),
('João Gomes', '32423423423', 5.2, 'Filosofia'),
('Guilherme Lima', '32423423124', 9.3, 'Matematica'),
('Leonan da Silva', '32423423162', 4.7, 'Geografia'),
('Maria Soares', '32423423161', 2.1, 'Biologia'),
('Marcelo Freitas', '32423423231', 8.2, 'Fisica'),
('Fabiano Oliveira', '32423423422', 10.0, 'Educacao Fisica'),
( 'Cleison Morais', '32423123212', 4.4, 'Quimica');


SELECT nome, nota FROM estudantes where nota > 7.0;

SELECT nome, nota FROM estudantes where nota < 7.0;

update estudantes set nota = '4.5' where id = 1;
