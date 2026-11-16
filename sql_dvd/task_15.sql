SELECT 
    c.nom,
    c.prenom,
    d.titre,
    f.date_facture
FROM locations l
JOIN factures f ON l.facture_id = f.id
JOIN clients c ON f.client_id = c.id
JOIN dvd d ON l.dvd_id = d.id
JOIN realisateurs r ON d.realisateur_id = r.id
WHERE r.pays = 'ALLEMAGNE'
  AND f.date_facture BETWEEN '2006-06-01' AND '2006-06-30'
ORDER BY c.nom ASC, c.prenom ASC, d.titre ASC;