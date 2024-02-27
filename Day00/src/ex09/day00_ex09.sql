SELECT (SELECT name FROM person WHERE person.id = person_id) AS person_name, -- делаем внутренний запрос
(SELECT name FROM pizzeria WHERE  pizzeria.id = pizzeria_id ) AS pizzeria_name
FROM (SELECT person_id, pizzeria_id FROM person_visits WHERE visit_date BETWEEN '2022-01-07' AND '2022-01-09') AS pv -- тут можно использовать битвин либо операторы сравнения
ORDER BY person_name, pizzeria_name DESC;
-- Значение ASC сортирует от низких значений к высоким. Значение DESC сортирует от высоких значений к низким

/*
Сделайте оператор выбора, который возвращает имена людей 
и названия пиццерий на основе таблицы person_visitsс 
датой посещения в период с 7 по 9 января 2022 года 
(включая все дни) (на основе внутреннего запроса в FROM пункте).
*/