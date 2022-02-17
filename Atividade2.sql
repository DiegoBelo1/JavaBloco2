CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    quantidade INT,
    preco DOUBLE NOT NULL,
    marca VARCHAR(30),
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome, quantidade, preco, marca) VALUES ("Mouse", 5, 199.99, "Logitech");
INSERT INTO tb_produtos (nome, quantidade, preco, marca) VALUES ("Teclado", 4, 250.00, "Corsair");
INSERT INTO tb_produtos (nome, quantidade, preco, marca) VALUES ("Fone", 1, 150.00, "HyperX");
INSERT INTO tb_produtos (nome, quantidade, preco, marca) VALUES ("Monitor", 1, 1000.00, "BenQ");
INSERT INTO tb_produtos (nome, quantidade, preco, marca) VALUES ("Computador", 1, 3500.00, "Asus");

SELECT preco FROM tb_produtos WHERE preco > 500;
SELECT preco FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 120.00 WHERE id = 3;