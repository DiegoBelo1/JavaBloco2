CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
	id BIGINT(8) AUTO_INCREMENT,
    nome VARCHAR(40) NOT NULL,
    habilidade VARCHAR(50) NOT NULL,
    elemento VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE tb_personagem(
	id BIGINT(5) AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    idade INT(5) NOT NULL,
    poder_ataque INT(7),
    poder_defesa INT(7),
    classe_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

INSERT INTO tb_classe (nome, habilidade, elemento)
	VALUES
		("Atacante", "Chute incendiário", "Fogo"),
        ("Meio Campo", "Lançamento aquático", "Água"),
        ("Lateral", "Velocidade da luz", "Luz"),
        ("Zagueiro", "Defesa tornado","Ar"),
        ("Goleiro", "Mão de pedra", "Terra");
        
 INSERT INTO tb_personagem (nome, idade, classe_id, poder_ataque, poder_defesa)
	VALUES
		("Romário", 28, 1, 5000, 1500),
        ("Raí", 29, 2, 3700, 1250),
        ("Cafu", 24, 3, 2300, 4500),
        ("Aldair", 29, 4, 2000, 4300),
        ("Taffarel", 28, 5, 1200, 6200);

SELECT * FROM tb_personagem WHERE poder_ataque > 2000;

SELECT * FROM tb_personagem WHERE poder_defesa BETWEEN 1000 and 2000;

SELECT * FROM tb_personagem WHERE nome LIKE "%c%";

SELECT * FROM tb_personagem
	INNER JOIN tb_classe ON tb_classe.id = tb_personagem.classe_id;

SELECT * FROM tb_personagem
	INNER JOIN tb_classe ON tb_classe.id = tb_personagem.classe_id WHERE tb_classe.nome= "Goleiro";