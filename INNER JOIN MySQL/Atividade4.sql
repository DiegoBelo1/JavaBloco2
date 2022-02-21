CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categoria(
	id BIGINT(10) AUTO_INCREMENT,
    categoria VARCHAR(40) NOT NULL,
    atendente VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_categoria (categoria, atendente)
	VALUES
        ("Bovinos", "Marcio"),
        ("Aves", "Carlos"),
        ("Suínos", "Fernando"),
        ("Pescados", "Maria"),
        ("Variados", "Claudia");
        

CREATE TABLE tb_produto(
	id BIGINT(10) AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
	preco DECIMAL(10,2),
    quantidade INT NOT NULL,
    marca VARCHAR(60) NOT NULL,
    produto_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (produto_id) REFERENCES tb_categoria (id)
);

 INSERT INTO tb_produto (nome, preco, quantidade, marca, produto_id)
	VALUES
		("Picanha", 79.00, 1, "Swifit", 1),
        ("Filé de peito", 17.90, 2, "Sadia", 2),
        ("Linguiça", 14.00, 3, "Aurora", 3),
        ("Filé de Salmão ", 35.00, 1, "Bom Peixe", 4),
        ("Farofa pronta", 8.00, 2, "Yoki", 5);

SELECT * FROM tb_produto WHERE preco > 50.00;

SELECT * FROM tb_produto WHERE preco BETWEEN 3.00 and 60.00;

SELECT * FROM tb_produto WHERE nome LIKE "%c%";

SELECT * FROM tb_produto
	INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.produto_id;

SELECT * FROM tb_produto
	INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.produto_id WHERE tb_categoria.categoria= "Pescados";