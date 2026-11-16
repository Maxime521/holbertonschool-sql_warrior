SELECT 
    d.titre,
    g.libelle_genre
FROM dvd d
JOIN genres_film g ON d.genre_id = g.id
ORDER BY d.titre ASC;