SELECT m1.pizza_name, p1.name AS pizzeria_name_1, p2.name AS pizzeria_name_2, m1.price
FROM menu m1
INNER JOIN
    menu m2 ON m1.id <> m2.id
    AND m1.price = m2.price
    AND m1.pizzeria_id > m2.pizzeria_id
    AND m1.pizza_name = m2.pizza_name
INNER JOIN pizzeria p1 ON p1.id = m1.pizzeria_id
INNER JOIN pizzeria p2 ON p2.id = m2.pizzeria_id
ORDER BY m1.pizza_name;

/*
Найдите одинаковые названия пицц по одинаковой цене, но из разных пиццерий. 
Убедитесь, что результат упорядочен по названию пиццы. 
Пример данных представлен ниже. 
Убедитесь, что имена ваших столбцов соответствуют именам столбцов ниже.
pizza_name      pizzeria_name_1     pizzeria_name_2     price
cheese pizza    Best Pizza          Papa Johns          700
...             ...                 ...                 ...
*/