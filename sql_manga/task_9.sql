SELECT 
    m.titre,
    mk.prenom,
    mk.nom,
    mk.pays
FROM mangas m
JOIN mangakas mk ON m.code_mangaka = mk.code_mangaka
ORDER BY m.titre;