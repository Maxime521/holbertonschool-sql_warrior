SELECT 
    d.titre,
    c.nom,
    c.prenom,
    c.date_naissance
FROM locations l
JOIN factures f ON l.facture_id = f.id
JOIN clients c ON f.client_id = c.id
JOIN dvd d ON l.dvd_id = d.id
JOIN genres_film g ON d.genre_id = g.id
WHERE g.code_genre = 'AV'
  AND c.date_naissance BETWEEN '1960-01-01' AND '1969-12-31'
ORDER BY d.titre ASC;