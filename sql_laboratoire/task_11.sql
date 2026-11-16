SELECT 
    c.nom AS nom_client,
    s.nom AS nom_site,
    e.code_echantillon,
    p.nom AS nom_parametre,
    ra.valeur_mesuree,
    ra.conforme
FROM resultat_analyse ra
JOIN parametre p ON ra.id_parametre = p.id_parametre
JOIN echantillon e ON ra.id_echantillon = e.id_echantillon
JOIN demande_analyse da ON e.id_demande = da.id_demande
JOIN site s ON da.id_site = s.id_site
JOIN client c ON s.id_client = c.id_client
ORDER BY c.nom ASC, e.code_echantillon ASC;