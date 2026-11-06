SELECT 
    g.signification,
    t.libelle,
    COUNT(*) AS nombre_location
FROM genres_manga g
JOIN mangas m ON g.code_genre = m.code_genre
JOIN table_location tl ON m.num_manga = tl.num_manga
JOIN types_location t ON tl.code_type = t.code_type
GROUP BY g.signification, t.libelle
ORDER BY g.signification, t.libelle;