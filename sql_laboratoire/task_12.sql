SELECT 
    CONCAT(em.prenom, ' ', em.nom) AS analyste,
    COUNT(ra.id_resultat) AS nombre_analyses
FROM employe em
LEFT JOIN resultat_analyse ra ON em.id_employe = ra.id_employe
WHERE em.role = 'analyste'
GROUP BY em.id_employe, em.prenom, em.nom
ORDER BY nombre_analyses DESC;