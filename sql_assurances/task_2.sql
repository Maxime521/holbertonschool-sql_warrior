SELECT 
    v.modele,
    a.nom AS assureur
FROM contrats c
JOIN vehicules v ON c.vehicule = v.id
JOIN assureurs a ON c.assureur = a.id;