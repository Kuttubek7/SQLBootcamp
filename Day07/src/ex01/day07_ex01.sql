SELECT p.name AS person_name, COUNT(pv.id) AS visits_count
FROM person_visits pv
    INNER JOIN person p ON pv.person_id = p.id
GROUP BY pv.person_id, p.name
ORDER BY visits_count DESC, person_name ASC
LIMIT 4;
