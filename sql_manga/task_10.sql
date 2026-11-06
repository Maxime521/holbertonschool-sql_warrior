SELECT 
    f.num_facture,
    c.prenom,
    c.nom,
    m.titre,
    t.libelle,
    tl.date_retour
FROM table_location tl
JOIN factures f ON tl.num_facture = f.num_facture
JOIN clients c ON f.code_client = c.code_client
JOIN mangas m ON tl.num_manga = m.num_manga
JOIN types_location t ON tl.code_type = t.code_type;