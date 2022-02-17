CREATE DATABASE db_rh;
    
    USE db_rh;
    
    CREATE TABLE tb_funcionarios(
    id BIGINT (5) AUTO_INCREMENT,
    nome VARCHAR (50),
    cpf VARCHAR (20),
    rg VARCHAR (20), 
    salario DECIMAL (10,2),
    email VARCHAR (120),
    
    PRIMARY KEY (id)
    );
    
    INSERT INTO tb_funcionarios(nome,cpf,rg, salario, email) 
    VALUES ("Mario", "111.111.111-22", "22.222.222-3", 1500.00, "Mario@email.com");
    
    INSERT INTO tb_funcionarios(nome,cpf,rg, salario, email) 
    VALUES ("Marcelo", "222.222.222-33", "33.333.333-4", 3000.00, "Marcelo@email.com");
    
    INSERT INTO tb_funcionarios(nome,cpf,rg, salario, email) 
    VALUES ("João", "333.333.333-44", "44.444.444-5", 1500.00, "Joao@email.com");
    
    INSERT INTO tb_funcionarios(nome,cpf,rg, salario, email) 
    VALUES ("Fernando", "444.444.444-55", "55.555.555-6", 5000.00, "Fernando@email.com");
    
    INSERT INTO tb_funcionarios(nome,cpf,rg, salario, email) 
    VALUES ("Alex", "555.555.555-66", "66.666.666-7", 6000.00, "Alex@email.com");
    
    SELECT * FROM 	tb_funcionarios WHERE salario > 2000.00;
    
     SELECT * FROM 	tb_funcionarios WHERE salario < 2000.00;
     
     UPDATE tb_funcionarios SET salario = 2100.00 WHERE id = 3;