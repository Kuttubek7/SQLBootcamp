SELECT order_date AS action_date, 
(SELECT name FROM person WHERE person_order.person_id = person.id) 
AS person_name FROM person_order
INTERSECT
SELECT visit_date AS action_date, 
(SELECT name FROM person WHERE person_visits.person_id = person.id) 
AS person_name FROM person_visits
ORDER BY action_date ASC;
/* 
Давайте вернемся к упражнению № 03 и изменим наш оператор SQL, 
чтобы он возвращал имена людей вместо идентификаторов людей, 
и изменим порядок действий по action_date в возрастающем режиме, 
а затем по person_name в нисходящем режиме. 
Пожалуйста, взгляните на образец данных ниже.
action_date     person_name
2022-01-01      irina
2022-01-01      Anna
2022-01-01      Andrey
...             ...
*/