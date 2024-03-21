CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    descricao VARCHAR(255)
);

INSERT INTO tb_categorias (nome, descricao) VALUES ('Medicamentos', 'Produtos relacionados a medicamentos');
INSERT INTO tb_categorias (nome, descricao) VALUES ('Higiene', 'Produtos de higiene pessoal');
INSERT INTO tb_categorias (nome, descricao) VALUES ('Cosméticos', 'Produtos cosméticos e de beleza');

CREATE TABLE tb_produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    preco DECIMAL(8, 2),
    descricao VARCHAR(255),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nome, preco, descricao, id_categoria) VALUES ('Dipirona', 10.00, 'Analgésico e antipirético', 1);
INSERT INTO tb_produtos (nome, preco, descricao, id_categoria) VALUES ('Shampoo', 15.00, 'Limpeza e cuidado dos cabelos', 2);
INSERT INTO tb_produtos (nome, preco, descricao, id_categoria) VALUES ('Protetor Solar', 40.00, 'Proteção contra os raios UV', 3);
INSERT INTO tb_produtos (nome, preco, descricao, id_categoria) VALUES ('Creme Hidratante', 25.00, 'Hidratação da pele', 3);
INSERT INTO tb_produtos (nome, preco, descricao, id_categoria) VALUES ('Paracetamol', 8.00, 'Analgésico e antipirético', 1);
INSERT INTO tb_produtos (nome, preco, descricao, id_categoria) VALUES ('Condicionador', 20.00, 'Cuidado e hidratação dos cabelos', 2);
INSERT INTO tb_produtos (nome, preco, descricao, id_categoria) VALUES ('Perfume', 55.00, 'Fragrância suave e duradoura', 3);
INSERT INTO tb_produtos (nome, preco, descricao, id_categoria) VALUES ('Sabonete', 5.00, 'Limpeza e higiene corporal', 2);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT p.*, c.nome AS categoria_nome FROM tb_produtos p INNER JOIN tb_categorias c ON p.id_categoria = c.id;

SELECT p.*, c.nome AS categoria_nome FROM tb_produtos p INNER JOIN tb_categorias c ON p.id_categoria = c.id WHERE c.nome = 'Cosméticos';
