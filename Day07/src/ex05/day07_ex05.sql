SELECT DISTINCT p.name AS person_name
FROM person_order po
    INNER JOIN person p ON po.person_id = p.id
ORDER BY person_name ASC;
