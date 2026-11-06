SELECT 
    f.num_facture,
    COALESCE(SUM(m.prix_base * t.coefficient), 0) AS depenses
FROM factures f
JOIN table_location l ON f.num_facture = l.num_facture
JOIN mangas m ON l.num_manga = m.num_manga
JOIN types_location t ON l.code_type = t.code_type
GROUP BY f.num_facture
ORDER BY f.num_facture;