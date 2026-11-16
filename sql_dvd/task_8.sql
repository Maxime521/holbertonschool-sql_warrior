SELECT 
    g.libelle_genre,
    COUNT(d.id) AS nb_dvd
FROM genres_film g
LEFT JOIN dvd d ON g.id = d.genre_id
GROUP BY g.id, g.libelle_genre
ORDER BY nb_dvd DESC, g.libelle_genre ASC;