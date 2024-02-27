(SELECT pizzeria.name as pizzeria_name
FROM person 
INNER JOIN person_visits ON person.id = person_visits.person_id
INNER JOIN pizzeria ON pizzeria.id = person_visits.pizzeria_id
WHERE person.gender = 'female'
EXCEPT ALL 
SELECT pizzeria.name 
FROM person 
INNER JOIN person_visits ON person_visits.person_id = person.id
INNER JOIN pizzeria ON pizzeria.id = person_visits.pizzeria_id
WHERE person.gender = 'male')

UNION ALL

(SELECT pizzeria.name 
FROM person 
INNER JOIN person_visits person_visits ON person.id = person_visits.person_id
INNER JOIN pizzeria ON pizzeria.id = person_visits.pizzeria_id
WHERE person.gender = 'male'
EXCEPT ALL
SELECT pizzeria.name
FROM person 
INNER JOIN person_visits person_visits ON person.id = person_visits.person_id
INNER JOIN pizzeria ON pizzeria.id = person_visits.pizzeria_id
WHERE person.gender = 'female')
ORDER BY pizzeria_name;
/*
Пожалуйста, найдите пиццерии, которые чаще посещают женщины или мужчины. 
Для любых операторов SQL с наборами сохраняйте дубликаты 
(конструкции UNION ALL, EXCEPT ALL, INTERSECT ALL). 
Пожалуйста, отсортируйте результаты по названию пиццерии. Образец данных представлен ниже.

pizzeria_name
Best Pizza
Dominos
...
*/