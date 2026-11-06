SELECT 
    m.titre,
    mk.prenom,
    mk.nom,
    g.signification
FROM mangas m
JOIN mangakas mk ON m.code_mangaka = mk.code_mangaka
JOIN genres_manga g ON m.code_genre = g.code_genre
WHERE g.signification = 'Horreur';