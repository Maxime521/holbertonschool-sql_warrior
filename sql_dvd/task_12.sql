SELECT 
    d.titre,
    r.nom,
    r.prenom,
    r.pays,
    g.libelle_genre
FROM dvd d
JOIN realisateurs r ON d.realisateur_id = r.id
JOIN genres_film g ON d.genre_id = g.id
ORDER BY d.titre ASC;