-- создаю уникальный индекс BTree с именем idx_menu_unique 
CREATE INDEX idx_menu_unique ON menu (pizzeria_id, pizza_name);

-- проверяю на работаспособность
SET enable_seqscan TO OFF;
explain analyze
SELECT pizza_name 
FROM menu 
WHERE pizzeria_id = 5 OR pizza_name = 'Dominos';

/*
Создайте уникальный индекс BTree с именами idx_menu_unique 
в menu таблице pizzeria_id и pizza_name столбцами. 
Пожалуйста, напишите и предоставьте любой SQL с доказательством (EXPLAIN ANALYZE), 
что индекс idx_menu_unique работает.
*/