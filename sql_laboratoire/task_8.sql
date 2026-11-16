SELECT e.code_echantillon, t.libelle_type
FROM echantillon e
JOIN type_echantillon t ON e.id_type = t.id_type
ORDER BY e.code_echantillon;