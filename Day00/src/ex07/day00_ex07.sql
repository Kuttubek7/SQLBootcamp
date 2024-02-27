SELECT id, name,
CASE WHEN age >= 10 AND age <=20 THEN  'interval #1' -- не получилось через if else как на примере 
WHEN age > 20 AND age < 24 THEN 'interval #2' -- пришлось посмотреть в гите и использовать case
ELSE 'interval #3'
END   AS interval_info
FROM person
ORDER BY interval_info; -- упорядичиваю по интервалу

/*
Давайте применим интервалы данных для personтаблицы. 
Создайте оператор SQL, который возвращает идентификаторы человека, 
имена человека и интервал возраста человека 
(задайте имя нового вычисляемого столбца как «interval_info») 
на основе приведенного ниже псевдокода.
*/