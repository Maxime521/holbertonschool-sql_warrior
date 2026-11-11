SELECT 
    t.libelle,
    COUNT(v.id) AS total
FROM types_vehicules t
LEFT JOIN vehicules v ON t.id = v.type_voiture
GROUP BY t.id, t.libelle
ORDER BY total DESC, t.libelle ASC;