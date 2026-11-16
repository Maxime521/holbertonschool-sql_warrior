WITH echantillons_par_client AS (
    SELECT 
        c.id AS id_client,
        c.nom AS nom_client,
        COUNT(e.id) AS nombre_echantillons
    FROM client c
    LEFT JOIN echantillon e ON c.id = e.id_client
    GROUP BY c.id, c.nom
)
SELECT 
    nom_client,
    nombre_echantillons
FROM echantillons_par_client
WHERE nombre_echantillons >= 1;