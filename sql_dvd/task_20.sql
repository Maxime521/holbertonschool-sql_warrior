SELECT 
    r.pays,
    g.libelle_genre,
    ROUND(AVG(d.duree_minutes), 1) AS duree_moyenne
FROM dvd d
JOIN realisateurs r ON d.realisateur_id = r.id
JOIN genres_film g ON d.genre_id = g.id
GROUP BY r.pays, g.id, g.libelle_genre
ORDER BY r.pays ASC, g.libelle_genre ASC;