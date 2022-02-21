CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
	id BIGINT(10) AUTO_INCREMENT,
    categoria VARCHAR(40) NOT NULL,
    atendente VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_categoria (categoria, atendente)
	VALUES
        ("Medicamento", "João"),
        ("Higiene", "Maria"),
        ("Beleza", "José"),
        ("Alimento", "Marcos"),
        ("Bebida", "Luís");
        

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
		("Avamys Spray", 45.50, 1, "GSK", 1),
        ("Escova Dental", 27.00, 1, "Colgate", 2),
        ("Batom Líquido", 74.00, 1, "Maybilline", 3),
        ("Leite em pó", 38.00, 2, "Nestlé", 4),
        ("Água 1,5L", 8.70, 2, "Crystal", 5);

SELECT * FROM tb_produto WHERE preco > 50.00;

SELECT * FROM tb_produto WHERE preco BETWEEN 3.00 and 60.00;

SELECT * FROM tb_produto WHERE nome LIKE "%b%";

SELECT * FROM tb_produto
	INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.produto_id;

SELECT * FROM tb_produto
	INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.produto_id WHERE tb_categoria.categoria= "Beleza";