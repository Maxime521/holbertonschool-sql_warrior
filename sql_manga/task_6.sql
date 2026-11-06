SELECT
    g.signification AS genre,
    COUNT(m.num_manga) AS nombre_de_manga_par_genre
FROM mangas m
JOIN genres_manga g ON m.code_genre = g.code_genre
GROUP BY g.signification
ORDER BY nombre_de_manga_par_genre DESC;