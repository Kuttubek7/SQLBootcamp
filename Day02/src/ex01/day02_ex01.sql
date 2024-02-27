SELECT 
    g::date AS missing_date
FROM 
    (SELECT * FROM person_visits po WHERE person_id = 1 OR person_id = 2) AS po RIGHT JOIN
    GENERATE_SERIES('2022-01-01','2022-01-10', interval '1 day') AS g ON po.visit_date = g 
WHERE 
    po.id IS NULL
ORDER BY 
    missing_date;

/* 
который возвращает пропущенные дни 
с 1 по 10 января 2022 года (включая все дни) 
для посещений лиц с идентификаторами 1 или 2 
(это означает дни, пропущенные обоими). 
Пожалуйста, заказывайте дни посещения 
в порядке возрастания.
missing_date
2022-01-03
2022-01-04
2022-01-05
...
*/