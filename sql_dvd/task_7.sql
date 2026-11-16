SELECT 
    civilite,
    COUNT(*) AS nb_clients
FROM clients
GROUP BY civilite
ORDER BY nb_clients DESC;