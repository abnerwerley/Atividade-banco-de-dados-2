-- DDL (definição de dados)
-- CREATE
-- ALTER
-- DROP

-- crie uma tabela db_melhor_pizzaria, com 3 atributos relevantes
CREATE DATABASE db_melhor_pizzaria;
USE db_melhor_pizzaria;

CREATE TABLE tb_categoria(
id_categoria INT NOT NULL auto_increment,
tamanho VARCHAR(50) NOT NULL,
qtd_pedacos INT NOT NULL,
qtd_sabores INT NOT NULL,
doce_salgada VARCHAR(25) NOT NULL,
PRIMARY KEY (id_categoria)
);

-- crie uma tabela tb_pizza, com 5 atributos relevantes
CREATE TABLE tb_pizza(
id_pizza BIGINT NOT NULL auto_increment,
sabor VARCHAR (50) NOT NULL,
ingredientes VARCHAR (255) NOT NULL,
preco BIGINT NOT NULL,
fk_categoria INT NOT NULL,
PRIMARY KEY (id_pizza),
FOREIGN KEY (fk_categoria) REFERENCES tb_categoria(id_categoria)
);