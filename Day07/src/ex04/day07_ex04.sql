SELECT p.name AS person_name,
    COUNT(pv.id) AS visits_count
FROM person_visits pv
    INNER JOIN person p ON pv.person_id = p.id
GROUP BY p.name
HAVING COUNT(pv.id) > 3;
