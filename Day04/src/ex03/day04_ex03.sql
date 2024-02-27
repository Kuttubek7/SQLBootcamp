-- SQL-запрос для получения пропущенных дней визитов в январе 2022 года
SELECT generated_date AS missing_date FROM v_generated_dates
EXCEPT 
SELECT visit_date FROM person_visits
ORDER BY missing_date;
/*
Напишите оператор SQL, который возвращает пропущенные дни для посещений людей в январе 2022 года. 
Используйте v_generated_datesпредставление для этой задачи и 
отсортируйте результат по столбцу Missing_date. 
*/