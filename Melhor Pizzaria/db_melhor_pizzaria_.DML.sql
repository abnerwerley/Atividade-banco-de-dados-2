-- DML (manipulação de dados)
-- INSERT
-- UPDATE
-- DELETE
-- SELECT

USE db_melhor_pizzaria;

-- popule  tb_categoria com até 5 dados.
INSERT INTO tb_categoria (tamanho, qtd_pedacos, qtd_sabores, doce_salgada)
VALUES 
("Grande", 10, 1, "Salgada"),
("Grande", 10, 2, "Salgada"),
("Grande", 10, 1, "Doce"),
("Grande", 10, 2, "Doce"),

("Brotinho", 6, 1, "Salgada"),
("Brotinho", 6, 2, "Salgada"),
("Brotinho", 6, 1, "Doce"),
("Brotinho", 6, 2, "Doce");

SELECT * FROM tb_categoria;

-- popule  tb_pizza com até 8 dados.
INSERT INTO tb_pizza (sabor, ingredientes, preco, fk_categoria)
VALUES
("Atum" , "Atum ralado bem fresco e cebola na medida certa." , 43.00 , 1),
("Milho verde" , "Milho fresco e catupiry original." , 38.00 , 1 ),
("Grajaú" , "Pepperoni Ceratti , azeitonas verde sem caroço catupiry orginal e muita mussarela." , 40.50 , 5),
("Banana" , "Banana, canela e leite condensado." , 27.50 ,  7),
("Moralete" , "Morango e chocolate" ,47.00  ,  3),
("Prestígio" , "Chocolate e coco ralado." , 42.00 , 3 ),
("1/2 Romeu e Julieta 1/2 Uva com chocolate" , "Creme de goiabada, mussarela e catupiry original; uva sem caroço e chocolate ao leite" , 44.50 , 4 ),
("1/2 Mussarela 1/2 Napolitana" , "Muita mussarela, pitadas de orégano e rodelas de tomate ; Muita mussarela, molho de tomate e parmesão ralado  " ,38.50  ,2  );

SELECT *FROM tb_pizza;

-- faça um SELECT que retorne todas as pizzas que custam mais de45 reais
SELECT * FROM tb_pizza WHERE preco >=45;

-- faça um SELECT que retorne as pizzas entre 29 e 60 reais
SELECT * FROM tb_pizza WHERE preco BETWEEN 29 AND 60;

-- faça um SELECT que retorne as pizzas que tem a letra c
SELECT sabor FROM tb_pizza
WHERE sabor LIKE "%c%";

-- faça um SELECT com INNER JOIN entre a tabela categoria e pizza
SELECT tb_pizza.sabor, tb_pizza.preco, tb_pizza.fk_categoria
FROM tb_pizza
INNER JOIN tb_categoria ON tb_pizza.fk_categoria = tb_categoria.id_categoria;

-- faça um SELECT que traga todas as pizzas de uma categoria específica (ex: todas as pizzas grandes, doces)
SELECT  * FROM tb_pizza WHERE tb_pizza.fk_categoria =1;