-- создаю многостолбцовый индекс BTree
CREATE INDEX idx_person_order_multi ON person_order (person_id, menu_id, order_date);

-- проверяю
SET enable_seqscan TO OFF;
explain analyze
SELECT person_id, menu_id,order_date
FROM person_order
WHERE person_id = 8 AND menu_id = 19;
/*
Пожалуйста, создайте лучший многостолбцовый индекс B-дерева с именем 
idx_person_order_multi для оператора SQL ниже.
SELECT person_id, menu_id,order_date
FROM person_order
WHERE person_id = 8 AND menu_id = 19;

Команда EXPLAIN ANALYZE должна вернуть следующий шаблон. 
Обратите внимание на сканирование «Только индексирование»!

Index Only Scan using idx_person_order_multi on person_order ...

Предоставьте любой SQL-запрос с доказательством (EXPLAIN ANALYZE) того, 
что индекс idx_person_order_multi работает.
*/