SELECT 
    v.code,
    COUNT(l.id) AS total_locations
FROM velos v
LEFT JOIN locations l ON v.id = l.velo_id
GROUP BY v.id, v.code
ORDER BY total_locations DESC, v.code ASC;