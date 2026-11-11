SELECT 
    t.libelle,
    t.nbplaces,
    v.modele,
    v.couleur,
    v.immat
FROM vehicules v
JOIN types_vehicules t ON v.type_voiture = t.id;