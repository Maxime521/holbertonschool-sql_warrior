SELECT s.nom_site, s.ville, s.type_site, c.nom_client AS client
FROM sites s
JOIN clients c ON s.id_client = c.id_client
ORDER BY c.nom_client ASC, s.nom_site ASC;