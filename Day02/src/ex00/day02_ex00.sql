SELECT 
    pizzeria.name AS pizzeria_name, rating 
FROM 
    pizzeria pizzeria LEFT JOIN person_visits person_visits ON pizzeria.id = person_visits.pizzeria_id
WHERE 
    person_visits.id IS NULL;
/*
Напишите оператор SQL, 
который возвращает список названий пиццерий 
с соответствующим значением рейтинга, 
которые никто не посещал.
*/