SET enable_seqscan TO OFF;
EXPLAIN ANALYZE
    SELECT m.pizza_name, pz.name AS pizzeria_name FROM pizzeria pz, menu m
    WHERE pz.id = m.pizzeria_id;
/*
Прежде чем двигаться дальше, напишите оператор SQL, 
который возвращает названия пицц и соответствующих им пиццерий. 
Пожалуйста, взгляните на образец результата ниже (сортировка не требуется).
pizza_name		pizzeria_name
cheese pizza	Pizza Hut
...				...
Давайте предоставим доказательства того, что ваши индексы работают для вашего SQL. 
Образцом доказательства является вывод команды EXPLAIN ANALYZE. 
Пожалуйста, взгляните на пример команды вывода.
...
->  Index Scan using idx_menu_pizzeria_id on menu m  (...)
...
*/