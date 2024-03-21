CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    descricao VARCHAR(255)
);

INSERT INTO tb_categorias (nome, descricao) VALUES ('Carnes', 'Produtos de origem animal');
INSERT INTO tb_categorias (nome, descricao) VALUES ('Legumes', 'Produtos hortifrútis');
INSERT INTO tb_categorias (nome, descricao) VALUES ('Aves', 'Produtos de origem avícola');

CREATE TABLE IF NOT EXISTS tb_produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    preco DECIMAL(8, 2),
    descricao VARCHAR(255),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nome, preco, descricao, id_categoria) VALUES ('Picanha', 80.00, 'Corte nobre de carne bovina', 1);
INSERT INTO tb_produtos (nome, preco, descricao, id_categoria) VALUES ('Alcatra', 70.00, 'Corte de carne bovina macia', 1);
INSERT INTO tb_produtos (nome, preco, descricao, id_categoria) VALUES ('Frango', 30.00, 'Carne de frango', 3);
INSERT INTO tb_produtos (nome, preco, descricao, id_categoria) VALUES ('Tomate', 5.00, 'Fruto comestível', 2);
INSERT INTO tb_produtos (nome, preco, descricao, id_categoria) VALUES ('Maçã', 3.50, 'Fruta comestível', 2);
INSERT INTO tb_produtos (nome, preco, descricao, id_categoria) VALUES ('Pêssego', 4.00, 'Fruta suculenta', 2);
INSERT INTO tb_produtos (nome, preco, descricao, id_categoria) VALUES ('Peito de Frango', 25.00, 'Parte do frango com baixo teor de gordura', 3);
INSERT INTO tb_produtos (nome, preco, descricao, id_categoria) VALUES ('Coxinha da Asa', 35.00, 'Parte do frango saborosa', 3);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT p.*, c.nome AS categoria_nome FROM tb_produtos p INNER JOIN tb_categorias c ON p.id_categoria = c.id;

SELECT p.*, c.nome AS categoria_nome FROM tb_produtos p INNER JOIN tb_categorias c ON p.id_categoria = c.id WHERE c.nome IN ('Aves', 'Frutas');
