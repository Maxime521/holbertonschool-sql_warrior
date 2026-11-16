SELECT 
    c.nom,
    COUNT(e.id_echantillon) AS nombre_echantillons
FROM client c
LEFT JOIN site s ON c.id_client = s.id_client
LEFT JOIN demande_analyse da ON s.id_site = da.id_site
LEFT JOIN echantillon e ON da.id_demande = e.id_demande
GROUP BY c.id_client, c.nom
ORDER BY nombre_echantillons DESC, c.nom ASC;