SELECT 
    u.nom_complet,
    COUNT(l.id) AS nombre_locations
FROM utilisateurs u
JOIN locations l ON u.id = l.utilisateur_id
GROUP BY u.id, u.nom_complet;