SELECT 
    c.code_client,
    c.nom,
    c.prenom,
    COUNT(l.dvd_id) AS nb_dvd_loues
FROM clients c
LEFT JOIN factures f ON c.id = f.client_id
LEFT JOIN locations l ON f.id = l.facture_id
GROUP BY c.id, c.code_client, c.nom, c.prenom
ORDER BY nb_dvd_loues DESC, c.nom ASC, c.prenom ASC;