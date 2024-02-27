SELECT order_date AS action_date, person_id FROM person_order
INTERSECT
SELECT visit_date AS action_date, person_id FROM person_visits
ORDER BY action_date, person_id DESC;

/*
Напишите оператор SQL, который возвращает общие строки для атрибутов 
order_date, person_id из person_order таблицы с одной стороны и 
visit_date, person_id из person_visits таблицы с другой стороны (см. пример ниже). 
Другими словами, найдем идентификаторы людей, 
которые в тот же день зашли и заказали пиццу. 
На самом деле, пожалуйста, добавьте упорядочение по action_date в возрастающем режиме, 
а затем по person_id в нисходящем режиме.
action_date     person_id
01.01.2022      6
01.01.2022      2
01.01.2022      1
03.01.2022      7
04.01.2022      3
...             ...
требуемый вывод:
action_date     person_id
01.01.2022      6
мой вывод:
action_date     person_id
2022-01-01      6
*/

