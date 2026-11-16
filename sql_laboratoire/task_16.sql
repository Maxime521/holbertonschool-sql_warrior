SELECT 
    id AS id_analyse,
    id_echantillon,
    TIMESTAMPDIFF(MINUTE, date_debut, date_fin) AS duree_minutes
FROM analyse
WHERE statut = 'terminée'
  AND TIMESTAMPDIFF(MINUTE, date_debut, date_fin) > (
      SELECT AVG(TIMESTAMPDIFF(MINUTE, date_debut, date_fin))
      FROM analyse
      WHERE statut = 'terminée'
  )
ORDER BY duree_minutes DESC;