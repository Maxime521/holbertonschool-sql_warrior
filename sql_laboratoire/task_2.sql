SELECT id_demande, date_demande, priorite, objet_demande
FROM demandes
WHERE priorite IN ('haute', 'urgente')
ORDER BY date_demande ASC;