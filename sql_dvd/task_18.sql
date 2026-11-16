SELECT 
    r.pays,
    g.libelle_genre,
    COUNT(d.id) AS nb_dvd
FROM dvd d
JOIN realisateurs r ON d.realisateur_id = r.id
JOIN genres_film g ON d.genre_id = g.id
GROUP BY r.pays, g.id, g.libelle_genre
ORDER BY r.pays ASC, g.libelle_genre ASC;