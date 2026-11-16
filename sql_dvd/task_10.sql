SELECT 
    g.libelle_genre,
    ROUND(AVG(d.duree_minutes), 1) AS duree_moyenne
FROM genres_film g
JOIN dvd d ON g.id = d.genre_id
GROUP BY g.id, g.libelle_genre
ORDER BY duree_moyenne DESC, g.libelle_genre ASC;