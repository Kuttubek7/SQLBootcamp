SELECT (SELECT name FROM person WHERE person_order.person_id  = person.id) AS NAME
FROM person_order
WHERE person_order.order_date = '2022-01-07' AND  (menu_id = '13' OR menu_id = '14' OR menu_id = '18');
/*
Пожалуйста, сделайте оператор выбора, который возвращает имена людей 
(на основе внутреннего запроса в SELECTпункте), 
которые сделали заказы на меню с идентификаторами 13, 14 и 18, 
а дата заказов должна быть равна 7 января 2022 года. 
Обратите внимание на «Запрещенный раздел» перед твоя работа.
*/