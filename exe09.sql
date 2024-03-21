CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    descricao VARCHAR(255)
);

INSERT INTO tb_categorias (nome, descricao) VALUES ('Salgada', 'Pizzas salgadas tradicionais');
INSERT INTO tb_categorias (nome, descricao) VALUES ('Doce', 'Pizzas doces e sobremesas');

CREATE TABLE IF NOT EXISTS tb_pizzas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    preco DECIMAL(8, 2),
    ingredientes VARCHAR(255),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (nome, preco, ingredientes, id_categoria) VALUES ('Calabresa', 50.00, 'Calabresa, mussarela, molho de tomate', 1);
INSERT INTO tb_pizzas (nome, preco, ingredientes, id_categoria) VALUES ('Margherita', 40.00, 'Mussarela, tomate, manjericão', 1);
INSERT INTO tb_pizzas (nome, preco, ingredientes, id_categoria) VALUES ('Quatro Queijos', 55.00, 'Mussarela, provolone, parmesão, gorgonzola', 1);
INSERT INTO tb_pizzas (nome, preco, ingredientes, id_categoria) VALUES ('Brigadeiro', 30.00, 'Chocolate, granulado, leite condensado', 2);
INSERT INTO tb_pizzas (nome, preco, ingredientes, id_categoria) VALUES ('Romeu e Julieta', 45.00, 'Goiabada, queijo minas', 2);
INSERT INTO tb_pizzas (nome, preco, ingredientes, id_categoria) VALUES ('Mussarela', 35.00, 'Mussarela, molho de tomate', 1);
INSERT INTO tb_pizzas (nome, preco, ingredientes, id_categoria) VALUES ('Frango com Catupiry', 60.00, 'Frango desfiado, catupiry, molho de tomate', 1);
INSERT INTO tb_pizzas (nome, preco, ingredientes, id_categoria) VALUES ('Milho Verde', 40.00, 'Milho verde, mussarela, molho de tomate', 1);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT p.*, c.nome AS categoria_nome FROM tb_pizzas p INNER JOIN tb_categorias c ON p.id_categoria = c.id;

SELECT p.*, c.nome AS categoria_nome FROM tb_pizzas p INNER JOIN tb_categorias c ON p.id_categoria = c.id WHERE c.nome = 'Doce';
