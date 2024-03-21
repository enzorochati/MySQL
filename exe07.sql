CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    descricao VARCHAR(255),
    tipo VARCHAR(50)
);

INSERT INTO tb_categorias (nome, descricao, tipo) VALUES ('Ferragens', 'Produtos de ferragens e fixações', 'Ferramentas');
INSERT INTO tb_categorias (nome, descricao, tipo) VALUES ('Elétrica', 'Produtos elétricos e fios', 'Materiais');
INSERT INTO tb_categorias (nome, descricao, tipo) VALUES ('Hidráulica', 'Produtos hidráulicos e encanamentos', 'Materiais');
INSERT INTO tb_categorias (nome, descricao, tipo) VALUES ('Tintas', 'Tintas e materiais para pintura', 'Acabamentos');
INSERT INTO tb_categorias (nome, descricao, tipo) VALUES ('Madeiras', 'Madeiras e produtos derivados', 'Materiais');

CREATE TABLE tb_produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    preco DECIMAL(8, 2),
    descricao VARCHAR(255),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nome, preco, descricao, id_categoria) VALUES ('Furadeira', 150.00, 'Furadeira elétrica de alto desempenho', 1);
INSERT INTO tb_produtos (nome, preco, descricao, id_categoria) VALUES ('Fio Elétrico', 120.00, 'Rolo de fio elétrico de 100m', 2);
INSERT INTO tb_produtos (nome, preco, descricao, id_categoria) VALUES ('Torneira', 80.00, 'Torneira para pia de cozinha', 3);
INSERT INTO tb_produtos (nome, preco, descricao, id_categoria) VALUES ('Tinta Acrílica', 90.00, 'Lata de tinta acrílica branca de 3.6L', 4);
INSERT INTO tb_produtos (nome, preco, descricao, id_categoria) VALUES ('Viga de Madeira', 200.00, 'Viga de madeira de eucalipto tratado, 4 metros', 5);
INSERT INTO tb_produtos (nome, preco, descricao, id_categoria) VALUES ('Parafuso', 5.00, 'Pacote com 100 unidades de parafusos 5mm', 1);
INSERT INTO tb_produtos (nome, preco, descricao, id_categoria) VALUES ('Interruptor', 10.00, 'Interruptor simples para instalações elétricas', 2);
INSERT INTO tb_produtos (nome, preco, descricao, id_categoria) VALUES ('Tinta para Azulejo', 70.00, 'Lata de tinta para azulejo, 900ml', 4);

SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT p.*, c.nome AS categoria_nome FROM tb_produtos p INNER JOIN tb_categorias c ON p.id_categoria = c.id;

SELECT p.*, c.nome AS categoria_nome FROM tb_produtos p INNER JOIN tb_categorias c ON p.id_categoria = c.id WHERE c.nome = 'Hidráulica';
