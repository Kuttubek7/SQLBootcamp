SELECT 
    COALESCE(p.name, '-') AS person_name,
    pv.visit_date,
    COALESCE(pz.name, '-') AS pizzeria_name
FROM 
    person p
FULL JOIN 
    (
        SELECT * FROM person_visits po 
        WHERE visit_date BETWEEN '2022-01-01' AND '2022-01-03'
    ) pv ON p.id = pv.person_id FULL JOIN pizzeria pz ON pz.id = pv.pizzeria_id
ORDER BY 
    person_name, 
    visit_date, 
    pizzeria_name;

/*
Напишите, пожалуйста, оператор SQL, 
который возвращает полный список имен посещенных (или не посещенных) пиццерий в период 
с 1 по 3 января 2022 года с одной стороны и весь список названий пиццерий, 
которые были посещены (или не посещены) с Обратная сторона. 
Пример данных с необходимыми именами столбцов представлен ниже. 
Обратите внимание на значение подстановки «-» 
для NULL значений в столбцах person_nameи pizzeria_name. Пожалуйста, 
также добавьте порядок для всех трех столбцов.

person_name     visit_date      pizzeria_name
    -           null            DinoPizza
    -           null            DoDo Pizza
Andrey          2022-01-01      Dominos
Andrey          2022-01-02      Pizza Hut
Anna            2022-01-01      Pizza Hut
Denis           null                -
Dmitry          null                -
*/  