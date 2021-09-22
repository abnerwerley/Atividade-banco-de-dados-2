-- DML (manipulação de dados)
-- INSERT
-- UPDATE
-- DELETE
-- SELECT

-- se terrestre -> id_ classe x1x;
-- se aéreo -> id_ classe x2x;

-- se comum -> id_ classe = xx1;
-- se raro -> id_ classe= xx2;
-- se épico ->  id_ classe= xx3;
-- se lendário -> id_classe = xx4;

-- popule esta tabela com até 5 dados
INSERT INTO tb_classe (id_classe, tipo_ataque, terrestre_ou_aereo, raridade) 
VALUES

(111,"Corpo a corpo", "Terrestre", "Comum"),
(112,"Corpo a corpo", "Terrestre", "Raro"),
(113,"Corpo a corpo", "Terrestre", "Épico"),
(114,"Corpo a corpo", "Terrestre", "Lendário"),

(121,"Corpo a corpo", "Aéreo", "Comum"),
(122,"Corpo a corpo", "Aéreo", "Raro"),
(123,"Corpo a corpo", "Aéreo", "Épico"),
(124,"Corpo a corpo", "Aéreo", "Lendário"),


(211,"Médio alcance", "Terrestre", "Comum"),
(212,"Médio alcance", "Terrestre", "Raro"),
(213,"Médio alcance", "Terrestre", "Épico"),
(214,"Médio alcance", "Terrestre", "Lendário"),

(221,"Médio alcance", "Aéreo", "Comum"),
(222,"Médio alcance", "Aéreo", "Raro"),
(223,"Médio alcance", "Aéreo", "Épico"),
(224,"Médio alcance", "Aéreo", "Lendário"),


(311,"Longo alcance", "Terrestre", "Comum"),
(312,"Longo alcance", "Terrestre", "Raro"),
(313,"Longo alcance", "Terrestre", "Épico"),
(314,"Longo alcance", "Terrestre", "Lendário"),

(321,"Longo alcance", "Aéreo", "Comum"),
(322,"Longo alcance", "Aéreo", "Raro"),
(323,"Longo alcance", "Aéreo", "Épico"),
(324,"Longo alcance", "Aéreo", "Lendário");


-- pupule essa tabela com até 8 dados
INSERT INTO tb_personagens (nome, arena_de_desbloqueio, dano, nivel,velocidade, fk_classe)
VALUES
("Arqueira",1,304, 11, "Média", 211),
("Princesa", 5,  140, 9, "Média",314),
("Lançador" , 13, 262, 10, "Lento" , 213),
("Três mosqueteiras" , 7, 720,11, "Média" , 212),
("Morcegos", 5,67, 9,"Muito Rápido" , 121),
("Curadoura" , 15 , 123,9, "Média" , 122),
("Lava-Hound", 10, 45 , 9 , "Lento" , 124),
("Horda de Servos" , 10, 190 , 9 , "Rápida" , 121);

-- faça um SELECT que retorne os personagens com dano maior que 2000
SELECT * FROM tb_personagens WHERE dano>2000;

-- faça um SELECT usando LIKE buscando personagens com a letra c.alter
SELECT tb_personagens.nome , tb_personagem.dano, tb_personagens.nivel
FROM tb_personagens
WHERE tb_personagens.nome LIKE "%C%";

-- faça um SELECT com inner join entre tabela classe e personagem
SELECT * FROM tb_personagens
INNER JOIN tb_classe ON tb_personagens.fk_classe = tb_classe.id;

-- Faça um SELECT onde traga todos os personagens de uma classe específica (Exemplo: todos os personagens que são arqueiros).
SELECT * FROM tb_personagens WHERE fk.classe = 121;