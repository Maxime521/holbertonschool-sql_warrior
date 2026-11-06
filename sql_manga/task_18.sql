INSERT INTO mangakas (code_mangaka, prenom, nom, annee_naissance, pays)
VALUES (13, 'Makoto', 'Yukimura', 1976, 'Japon');

SELECT * FROM mangakas WHERE code_mangaka = 13;

INSERT INTO mangas (num_manga, titre, prix_base, code_mangaka, code_genre, annee, duree, descriptif)
VALUES (25, 'Vinland Saga - Tome 1', 2.90, 13, 13, 2005, 92, 'Thorfinn grandit dans un contexte de guerres vikings.');

SELECT num_manga, titre, prix_base, code_mangaka, code_genre, annee, duree FROM mangas WHERE num_manga = 25;