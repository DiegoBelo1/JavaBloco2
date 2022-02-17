CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos (
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(50)NOT NULL,
matricula INT NOT NULL ,
turma VARCHAR(4) NOT NULL,
nota DOUBLE NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_alunos (nome, matricula, turma, nota)VALUES ("Julio", 12345, "7º", 5.0);
INSERT INTO tb_alunos (nome, matricula, turma, nota)VALUES ("Mario", 56789, "7º", 7.0);
INSERT INTO tb_alunos (nome, matricula, turma, nota)VALUES ("Fernando", 98765, "7º", 8.5);
INSERT INTO tb_alunos (nome, matricula, turma, nota)VALUES ("Marcos", 54321, "7º", 7.5);
INSERT INTO tb_alunos (nome, matricula, turma, nota)VALUES ("João", 14725, "7º", 4.0);
INSERT INTO tb_alunos (nome, matricula, turma, nota)VALUES ("Maria", 58369, "7º", 9.5);
INSERT INTO tb_alunos (nome, matricula, turma, nota)VALUES ("Pedro", 15975, "7º", 5.5);

SELECT * FROM tb_alunos WHERE nota >= 7;

SELECT * FROM tb_alunos WHERE nota < 7;

SET SQL_SAFE_UPDATES = 0;
UPDATE tb_alunos SET turma = "8º" WHERE nota >= 7;
SELECT * FROM tb_alunos;