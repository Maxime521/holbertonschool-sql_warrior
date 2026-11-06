SELECT 
    c.ville,
    ROUND(SUM(m.prix_base * t.coefficient), 2) AS chiffre_affaires
FROM clients c
JOIN factures f ON c.code_client = f.code_client
JOIN table_location tl ON f.num_facture = tl.num_facture
JOIN mangas m ON tl.num_manga = m.num_manga
JOIN types_location t ON tl.code_type = t.code_type
GROUP BY c.ville
ORDER BY chiffre_affaires DESC;