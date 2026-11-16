SELECT e.code_echantillon, a.id_analyse, r.valeur_mesuree, r.conforme
FROM echantillon e
LEFT JOIN analyse a ON e.id_echantillon = a.id_echantillon
LEFT JOIN resultat r ON a.id_analyse = r.id_analyse
ORDER BY e.code_echantillon;