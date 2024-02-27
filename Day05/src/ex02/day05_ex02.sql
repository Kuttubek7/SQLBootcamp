-- Создал функциональный индекс B-дерева с именем idx_person_name
CREATE INDEX idx_person_name ON person(name);

-- Пример запроса с использованием индекса idx_person_name
SET enable_seqscan TO OFF;
EXPLAIN ANALYZE
SELECT * FROM person WHERE name = 'Anna';
/*
Создайте функциональный индекс B-дерева с именем idx_person_name
для имени столбца таблицы person. Индекс должен содержать имена людей в верхнем регистре.

Пожалуйста, напишите и предоставьте любой SQL с доказательством (EXPLAIN ANALYZE), 
что индекс idx_person_name работает.
*/