SELECT 
    g.signification,
    ROUND(SUM(m.prix_base * t.coefficient), 2) AS chiffre_affaires
FROM genres_manga g
JOIN mangas m ON g.code_genre = m.code_genre
JOIN table_location tl ON m.num_manga = tl.num_manga
JOIN types_location t ON tl.code_type = t.code_type
GROUP BY g.signification
ORDER BY chiffre_affaires DESC;