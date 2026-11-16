SELECT 
    a.id_analyse,
    e.code_echantillon,
    TIMESTAMPDIFF(MINUTE, a.date_debut, a.date_fin) AS duree_minutes,
    RANK() OVER (ORDER BY TIMESTAMPDIFF(MINUTE, a.date_debut, a.date_fin) DESC) AS rang_duree
FROM analyse a
JOIN echantillon e ON a.id_echantillon = e.id_echantillon
WHERE a.statut = 'terminée'
ORDER BY rang_duree;