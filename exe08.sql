CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    descricao VARCHAR(255),
    nivel VARCHAR(50)
);

INSERT INTO tb_categorias (nome, descricao, nivel) VALUES ('Programação', 'Cursos de programação', 'Intermediário');
INSERT INTO tb_categorias (nome, descricao, nivel) VALUES ('Design', 'Cursos de design gráfico', 'Básico');
INSERT INTO tb_categorias (nome, descricao, nivel) VALUES ('Negócios', 'Cursos de empreendedorismo', 'Avançado');
INSERT INTO tb_categorias (nome, descricao, nivel) VALUES ('Marketing', 'Cursos de marketing digital', 'Intermediário');
INSERT INTO tb_categorias (nome, descricao, nivel) VALUES ('Idiomas', 'Cursos de idiomas', 'Avançado');

CREATE TABLE tb_cursos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(8, 2),
    descricao VARCHAR(255),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_cursos (nome, preco, descricao, id_categoria) VALUES ('Curso de Java Avançado', 800.00, 'Aprenda Java avançado com projetos reais', 1);
INSERT INTO tb_cursos (nome, preco, descricao, id_categoria) VALUES ('Curso de Photoshop', 600.00, 'Aprenda Photoshop do básico ao avançado', 2);
INSERT INTO tb_cursos (nome, preco, descricao, id_categoria) VALUES ('Curso de Marketing Digital', 700.00, 'Estratégias avançadas de marketing online', 4);
INSERT INTO tb_cursos (nome, preco, descricao, id_categoria) VALUES ('Curso de Inglês Fluente', 1500.00, 'Aprenda inglês fluente em 6 meses', 5);
INSERT INTO tb_cursos (nome, preco, descricao, id_categoria) VALUES ('Curso de Python para Iniciantes', 400.00, 'Introdução à programação em Python', 1);
INSERT INTO tb_cursos (nome, preco, descricao, id_categoria) VALUES ('Curso de Ilustração Digital', 900.00, 'Aprenda ilustração digital do zero', 2);
INSERT INTO tb_cursos (nome, preco, descricao, id_categoria) VALUES ('Curso de Gestão Empresarial', 1200.00, 'Gerenciamento de negócios e liderança', 3);
INSERT INTO tb_cursos (nome, preco, descricao, id_categoria) VALUES ('Curso de Marketing de Conteúdo', 550.00, 'Estratégias de marketing de conteúdo', 4);

SELECT * FROM tb_cursos WHERE preco > 500.00;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome LIKE '%J%';

SELECT c.*, ct.nome AS categoria_nome FROM tb_cursos c INNER JOIN tb_categorias ct ON c.id_categoria = ct.id;

SELECT c.*, ct.nome AS categoria_nome FROM tb_cursos c INNER JOIN tb_categorias ct ON c.id_categoria = ct.id where ct.id = 1;
