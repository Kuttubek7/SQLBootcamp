SELECT menu.id AS menu_id
FROM menu
LEFT JOIN person_order ON menu.id = person_order.menu_id
WHERE person_order.menu_id IS NULL
ORDER BY menu_id
/*
Пожалуйста, найдите все идентификаторы меню, которые никем не заказаны. 
Результат должен быть отсортирован по идентификаторам. 
Пример выходных данных представлен ниже.
menu_id
5
10
...
*/