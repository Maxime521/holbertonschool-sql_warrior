SELECT 
    m.nom AS nom_methode,
    ROUND(AVG(TIMESTAMPDIFF(MINUTE, a.date_debut, a.date_fin)), 2) AS duree_moyenne_minutes
FROM analyse a
JOIN methode m ON a.id_methode = m.id
WHERE a.statut = 'terminée'
GROUP BY m.id, m.nom
ORDER BY duree_moyenne_minutes DESC;