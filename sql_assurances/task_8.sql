SELECT 
    v.modele,
    t.nbplaces,
    ROUND((COUNT(d.employe) / t.nbplaces) * 100, 2) AS taux_remplissage
FROM vehicules v
JOIN types_vehicules t ON v.type_voiture = t.id
LEFT JOIN deplacements d ON v.id = d.vehicule
GROUP BY v.id, v.modele, t.nbplaces
ORDER BY taux_remplissage DESC, v.modele ASC;