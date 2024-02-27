WITH cte_missing_date AS (
    SELECT g::date AS missing_date
    FROM (SELECT * FROM person_visits po WHERE person_id = 1 OR person_id = 2) AS po RIGHT JOIN
    GENERATE_SERIES('2022-01-01','2022-01-10', interval '1 day') AS g ON po.visit_date = g 
    WHERE 
        po.id IS NULL
    ORDER BY 
        missing_date
)
-- Теперь можно использовать CTE в основном запросе
SELECT *
FROM cte_missing_date;

/*
Вернемся к упражнению № 01. 
Перепишите свой SQL, используя шаблон CTE (Common Table Expression). 
Пожалуйста, перейдите в часть CTE вашего «генератора дней». 
Результат должен быть таким же, как в упражнении № 01.
*/