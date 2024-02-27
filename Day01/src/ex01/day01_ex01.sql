SELECT t1.object_name
FROM (SELECT pizza_name as object_name, 'menu' as label
    FROM menu
    UNION ALL
    SELECT name, 'person' as label
    FROM person
    ORDER BY label desc, object_name) as t1
/*
Измените оператор SQL из «упражнения 00», 
удалив столбец object_id. 
Затем измените порядок по имени объекта для части данных из person таблицы, 
а затем из menu таблицы (как показано в примере ниже). 
Пожалуйста, сохраняйте дубликаты!
object_name
Andrey
Anna
...
cheese pizza
cheese pizza
...
*/
