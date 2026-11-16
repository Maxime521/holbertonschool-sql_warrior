SELECT 
    g.libelle_genre,
    COUNT(l.dvd_id) AS nb_locations
FROM locations l
JOIN dvd d ON l.dvd_id = d.id
JOIN genres_film g ON d.genre_id = g.id
GROUP BY g.id, g.libelle_genre
ORDER BY nb_locations DESC, g.libelle_genre ASC;