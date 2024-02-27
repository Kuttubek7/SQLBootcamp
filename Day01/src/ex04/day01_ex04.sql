SELECT person_id
FROM person_order
WHERE order_date = '2022-01-07'
EXCEPT ALL
SELECT person_id
FROM person_visits
WHERE visit_date = '2022-01-07';
/*
Напишите оператор SQL, который возвращает разницу (минус) значений столбца person_id 
с сохранением дубликатов между person_order таблицей и person_visits таблицей 
для order_date и visit_date, 
относящихся к 7 января 2022 года.
*/
