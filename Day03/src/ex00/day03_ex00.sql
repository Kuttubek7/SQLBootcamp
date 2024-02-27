SELECT 
    menu.pizza_name,
    menu.price,
    pizzeria.name AS pizzeria_name,
    person_visits.visit_date
FROM menu
INNER JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
INNER JOIN person_visits ON pizzeria.id = person_visits.pizzeria_id
INNER JOIN person ON person_visits.person_id = person.id
WHERE 
    menu.price BETWEEN 800 AND 1000 AND person.name = 'Kate'
ORDER BY 
    menu.pizza_name, menu.price, pizzeria.name;

/* Напишите, пожалуйста, оператор SQL, который возвращает список названий пицц, 
цен на пиццу, названий пиццерий и дат посещения для Кати и цен в диапазоне 
от 800 до 1000 рублей. Пожалуйста, отсортируйте пиццу по цене и названию пиццерии. 
Взгляните на образец данных ниже.
pizza_name      price       pizzeria_name       visit_date
cheese pizza    950         DinoPizza           2022-01-04
pepperoni pizza 800         Best Pizza          2022-01-03
pepperoni pizza 800         DinoPizza           2022-01-04
...             ...         ...                 ...
*/