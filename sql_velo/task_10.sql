SELECT 
    id,
    code,
    type_velo,
    statut,
    station_actuelle_id
FROM velos
WHERE statut = 'maintenance';