-- DDL (definição de dados)
-- CREATE
-- ALTER
-- DROP
CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
id_classe BIGINT NOT NULL , 
tipo_ataque VARCHAR(25) NOT NULL, 
terrestre_ou_aereo VARCHAR(20) NOT NULL,  
raridade VARCHAR(20) NOT NULL,
PRIMARY KEY (id_classe)

);

CREATE TABLE tb_personagens(
id_personagem INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(30) NOT NULL,
arena_de_desbloqueio INT NOT NULL, 
dano LONG NOT NULL,
nivel INT NOT NULL,
velocidade VARCHAR(10) NOT NULL,
fk_classe BIGINT NOT NULL,

PRIMARY KEY (id_personagem),
FOREIGN KEY (fk_classe) REFERENCES tb_classe(id_classe)
);

