SELECT order_date, 
(SELECT CONCAT(name, '(age:', age, ')') FROM person WHERE person_order.person_id = person.id) 
AS person_information FROM person_order
NATURAL JOIN (select id as person_id from person) person
ORDER BY order_date, person_information ASC;
/*
Перепишите оператор SQL из упражнения №07, 
используя конструкцию NATURAL JOIN. 
Результат должен быть таким же, как в упражнении №07.
*/