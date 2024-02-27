SELECT
    pizza_name, 
    (SELECT name FROM pizzeria WHERE pizzeria.id = menu.pizzeria_id) AS pizzeria_name, 
    price
FROM 
    menu
WHERE 
    pizza_name = 'mushroom pizza' OR pizza_name = 'pepperoni pizza'
ORDER BY 
    pizza_name, pizzeria_name;

/*
Найдите полную информацию обо всех возможных названиях и ценах пиццерий, 
чтобы получить пиццу с грибами или пепперони. 
Пожалуйста, отсортируйте результат по названию пиццы и названию пиццерии. 
Результат примера данных приведен ниже 
(пожалуйста, используйте те же имена столбцов в своем операторе SQL).
pizza_name      pizzeria_name       price
mushroom pizza  Dominos             1100
mushroom pizza  Papa Johns          950
pepperoni pizza Best Pizza          800
...             ...                 ...
*/