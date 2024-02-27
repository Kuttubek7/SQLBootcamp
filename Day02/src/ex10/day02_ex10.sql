SELECT
    person1.name AS person_name1, 
    person2.name AS person_name2, 
    person1.address AS common_address
FROM 
    person person1 
INNER JOIN 
    person person2 ON person1.id > person2.id AND person1.address = person2.address
ORDER BY person_name1, person_name2, common_address;
/*
Пожалуйста, найдите имена людей, которые живут по тому же адресу. 
Убедитесь, что результат упорядочен по имени 1-го лица, 
имени 2-го лица и общему адресу. Пример данных представлен ниже. 
Убедитесь, что имена ваших столбцов соответствуют именам столбцов ниже.

person_name1    person_name2    common_address
Andrey          Anna            Moscow
Denis           Kate            Kazan
Elvira          Denis           Kazan
*/