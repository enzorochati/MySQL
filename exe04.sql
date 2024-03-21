CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    tipo VARCHAR(255)
);

INSERT INTO tb_classes (nome, tipo) VALUES ('Guerreiro', 'Melee');
INSERT INTO tb_classes (nome, tipo) VALUES ('Arqueiro', 'À distância');
INSERT INTO tb_classes (nome, tipo) VALUES ('Mago', 'Mágico');
INSERT INTO tb_classes (nome, tipo) VALUES ('Assassino', 'Stealth');
INSERT INTO tb_classes (nome, tipo) VALUES ('Cavaleiro', 'Tank');

CREATE TABLE tb_personagens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    nivel INT,
    poder_ataque INT,
    poder_defesa INT,
    id_classe INT,
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, id_classe) VALUES ('Lancelot', 50, 2500, 1800, 5);
INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, id_classe) VALUES ('Legolas', 45, 2200, 1200, 2);
INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, id_classe) VALUES ('Merlin', 55, 1800, 1500, 3);
INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, id_classe) VALUES ('Shadow', 48, 2100, 1100, 4);
INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, id_classe) VALUES ('Aragorn', 52, 2400, 2000, 1);
INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, id_classe) VALUES ('Cassius', 42, 1900, 1300, 4);
INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, id_classe) VALUES ('Cyrus', 47, 2300, 1800, 2);
INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, id_classe) VALUES ('Sif', 50, 2600, 1700, 1);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT p.*, c.nome AS classe_nome FROM tb_personagens p INNER JOIN tb_classes c ON p.id_classe = c.id;

SELECT p.*, c.nome AS classe_nome FROM tb_personagens p INNER JOIN tb_classes c ON p.id_classe = c.id WHERE c.nome = 'Arqueiro';
