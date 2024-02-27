SELECT 
    pizzeria.name AS pizza_name
FROM menu 
    INNER JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
    INNER JOIN person_visits ON menu.pizzeria_id = person_visits.pizzeria_id
    INNER JOIN person person ON person.id = person_visits.person_id
WHERE 
    price < 800 AND person.name = 'Dmitriy' AND visit_date = '2022-01-08';

/*
Найдите название пиццерии, 
которую Дмитрий посетил 8 января 2022 года 
и где мог съесть пиццу менее чем за 800 рублей.
*/