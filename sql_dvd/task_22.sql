SELECT 
    f.id AS facture_id,
    f.date_facture,
    c.nom,
    c.prenom,
    SUM(tl.tarif) AS montant_total
FROM factures f
JOIN clients c ON f.client_id = c.id
JOIN locations l ON f.id = l.facture_id
JOIN types_location tl ON l.type_location_id = tl.id
GROUP BY f.id, f.date_facture, c.nom, c.prenom
ORDER BY montant_total DESC;