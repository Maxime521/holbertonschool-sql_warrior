SELECT 
    c.ville,
    COUNT(CASE WHEN g.signification = 'Aventure' THEN 1 END) AS Aventure,
    COUNT(CASE WHEN g.signification = 'Fantasy' THEN 1 END) AS Fantasy,
    COUNT(CASE WHEN g.signification = 'Horreur' THEN 1 END) AS Horreur,
    COUNT(CASE WHEN g.signification = 'Shōnen' THEN 1 END) AS Shōnen
FROM clients c
JOIN factures f ON c.code_client = f.code_client
JOIN table_location tl ON f.num_facture = tl.num_facture
JOIN mangas m ON tl.num_manga = m.num_manga
JOIN genres_manga g ON m.code_genre = g.code_genre
GROUP BY c.ville
ORDER BY c.ville;