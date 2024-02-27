SELECT 
    person.name
FROM 
    person INNER JOIN person_order ON person.id = person_order.person_id
INNER JOIN 
    menu ON menu.id = person_order.menu_id
WHERE 
    gender = 'male' AND pizza_name 
    IN ('pepperoni pizza', 'mushroom pizza') 
    AND address IN ('Moscow', 'Samara')
ORDER BY name DESC;
/*
Пожалуйста, найдите имена всех мужчин из Москвы или Самары, 
которые заказывают пепперони или пиццу с грибами (или и то, и другое). 
Пожалуйста, упорядочите результат по имени человека в порядке убывания. 
Пример вывода представлен ниже.
name
Dmitriy
...
*/
