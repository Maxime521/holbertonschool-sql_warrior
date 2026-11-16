SELECT 
    e.code_echantillon,
    a.id_analyse,
    CASE 
        WHEN r.conforme = 1 THEN 'conforme'
        WHEN r.conforme = 0 THEN 'non conforme'
        ELSE 'en attente'
    END AS statut_resultat
FROM analyse a
JOIN echantillon e ON a.id_echantillon = e.id_echantillon
LEFT JOIN resultat_analyse r ON a.id_analyse = r.id_analyse
ORDER BY a.id_analyse;