SELECT *
FROM clients
WHERE civilite IN ('Mme', 'Mlle')
  AND prenom LIKE 'A%'
ORDER BY prenom ASC;