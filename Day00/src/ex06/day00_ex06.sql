SELECT (SELECT name FROM person WHERE person_order.person_id  = person.id) AS NAME, (SELECT name = 'Denis' FROM person WHERE person_order.person_id  = person.id) AS check_name
FROM person_order -- тут не получилось как на примере и поэтому пришлось сделать через внутренний запрос
WHERE person_order.order_date = '2022-01-07' AND  (menu_id = '13' OR menu_id = '14' OR menu_id = '18');
/*
Используйте конструкцию SQL из упражнения 05 и добавьте в 
предложение новый вычисляемый столбец (используйте имя столбца «check_name») 
с оператором проверки (псевдокод для этой проверки представлен ниже) SELECT.
*/