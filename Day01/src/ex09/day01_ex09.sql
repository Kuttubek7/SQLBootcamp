SELECT name 
FROM pizzeria
WHERE pizzeria.id NOT IN (select pizzeria_id FROM person_visits);
SELECT name 
FROM pizzeria
WHERE NOT EXISTS(SELECT pizzeria_id FROM person_visits WHERE person_visits.pizzeria_id = pizzeria.id);

/*
Пожалуйста, напишите 2 оператора SQL, 
которые возвращают список названий пиццерий, которые не посещались людьми, 
используя IN для 1-го и EXISTS для 2-го.
*/