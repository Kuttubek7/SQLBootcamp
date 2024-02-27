SELECT id AS object_id, pizza_name AS object_name
FROM menu
UNION
SELECT id AS object_id, name AS object_name
FROM person
ORDER BY object_id, object_name;
/*
Напишите оператор SQL, который возвращает идентификатор 
меню и названия пиццы из menu таблицы, 
а также идентификатор человека и имя человека из 
person таблицы в одном глобальном списке 
(с именами столбцов, как представлено в примере ниже), 
упорядоченном по столбцам object_id, а затем по столбцам object_name.

object_id   object_name
1			Anna
1			cheese pizza
...			...
*/
