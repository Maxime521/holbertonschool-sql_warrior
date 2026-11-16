SELECT DISTINCT
    c.nom,
    c.prenom
FROM clients c
JOIN factures f ON c.id = f.client_id
WHERE f.date_facture BETWEEN '2006-06-01' AND '2006-06-30'
ORDER BY c.nom ASC;