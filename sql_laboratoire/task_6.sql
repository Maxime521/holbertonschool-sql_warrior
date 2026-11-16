SELECT nom_equipement, type_equipement, date_mise_service, statut
FROM equipements
ORDER BY date_mise_service DESC
LIMIT 3;