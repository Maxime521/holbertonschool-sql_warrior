SELECT 
    t.code_type,
    COUNT(tl.num_facture) AS nb_utilisations
FROM types_location t
JOIN table_location tl ON t.code_type = tl.code_type
WHERE t.libelle = 'Retard régularisé'
GROUP BY t.code_type;