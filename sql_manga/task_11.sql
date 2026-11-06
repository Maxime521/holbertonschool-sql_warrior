SELECT 
    c.code_client,
    c.prenom,
    c.nom,
    COUNT(tl.num_manga) AS nombre_de_location,
    ROUND(SUM(m.prix_base * t.coefficient), 2) AS total_depenses
FROM clients c
JOIN factures f ON c.code_client = f.code_client
JOIN table_location tl ON f.num_facture = tl.num_facture
JOIN mangas m ON tl.num_manga = m.num_manga
JOIN types_location t ON tl.code_type = t.code_type
GROUP BY c.code_client, c.prenom, c.nom
ORDER BY total_depenses DESC
LIMIT 5;