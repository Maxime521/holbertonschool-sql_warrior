SELECT a.id_analyse, e.code_echantillon, m.nom_methode, a.statut
FROM analyse a
JOIN echantillon e ON a.id_echantillon = e.id_echantillon
JOIN methode m ON a.id_methode = m.id_methode
ORDER BY a.id_analyse;