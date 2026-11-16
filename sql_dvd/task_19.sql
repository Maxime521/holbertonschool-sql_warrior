SELECT 
    LEFT(code_postal, 2) AS departement,
    civilite,
    COUNT(*) AS nb_clients
FROM clients
GROUP BY departement, civilite
ORDER BY departement ASC, civilite ASC;