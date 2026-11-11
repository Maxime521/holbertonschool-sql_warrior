SELECT 
    MONTH(date_debut) AS mois,
    COUNT(id) AS nombre_locations
FROM locations
GROUP BY MONTH(date_debut);