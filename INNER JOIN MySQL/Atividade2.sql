CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_pizza(
	id BIGINT(10) AUTO_INCREMENT,
    nome VARCHAR(40) NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_pizza (nome, tipo)
	VALUES
        ("Pizza", "Salgada"),
        ("Pizza", "Salgada"),
        ("Pizza", "Salgada"),
        ("Pizza", "Doce"),
        ("Pizza", "Doce");
        

CREATE TABLE tb_categoria(
	id BIGINT(10) AUTO_INCREMENT,
    sabor VARCHAR(60) NOT NULL,
    tamanho VARCHAR(60) NOT NULL,
    preco DECIMAL(10,2),
    entrega VARCHAR(60) NOT NULL,
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_pizza (id)
);

 INSERT INTO tb_categoria (sabor, tamanho, preco, entrega,categoria_id)
	VALUES
		("Mussarela", "Média", 29.99, "Delivery", 1),
        ("Calabresa", "Grande", 39.99, "Retirar no local", 2),
        ("Marguerita", "Média", 35.00, "Retirar no local", 3),
        ("Chocolate", "Grande", 49.99, "Delivery", 4),
        ("Chocolate c/ Morango", "Pequena", 25.00, "Delivery", 5);

SELECT * FROM tb_categoria WHERE preco > 45.00;

SELECT * FROM tb_categoria WHERE preco BETWEEN 29.00 and 60.00;

SELECT * FROM tb_categoria WHERE sabor LIKE "%c%";

SELECT * FROM tb_categoria
	INNER JOIN tb_pizza ON tb_pizza.id = tb_categoria.categoria_id;

SELECT * FROM tb_categoria
	INNER JOIN tb_pizza ON tb_pizza.id = tb_categoria.categoria_id WHERE tb_pizza.tipo= "Doce";