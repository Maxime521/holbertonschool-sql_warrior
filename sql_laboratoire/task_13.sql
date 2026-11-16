SELECT DISTINCT 
    p.nom AS nom_parametre,
    p.unite,
    p.seuil_reglementaire
FROM parametre p
JOIN resultat_analyse ra ON p.id_parametre = ra.id_parametre
WHERE ra.conforme = 0;