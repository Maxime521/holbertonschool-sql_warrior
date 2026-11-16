CREATE OR REPLACE VIEW vue_resultats_complets AS
SELECT 
    c.nom AS client,
    s.nom_site,
    e.code_echantillon,
    p.nom_parametre,
    p.unite,
    p.seuil_reglementaire,
    r.valeur_mesuree,
    r.conforme
FROM resultat_analyse r
JOIN analyse a ON r.id_analyse = a.id_analyse
JOIN echantillon e ON a.id_echantillon = e.id_echantillon
JOIN site s ON e.id_site = s.id_site
JOIN client c ON s.id_client = c.id_client
JOIN parametre p ON r.id_parametre = p.id_parametre;

SELECT * FROM vue_resultats_complets;