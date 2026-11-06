SELECT
    COUNT(*) AS nombre_total_de_mangas,
    ROUND(AVG(prix_base), 2) AS prix_moyen,
    MAX(prix_base) AS prix_max
FROM mangas;