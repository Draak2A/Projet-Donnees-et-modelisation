-- Table genre

INSERT INTO genre (nom_genre) VALUES
    ("Homme"),
    ("Femme");


-- Table personne
INSERT INTO personne (nom, prenom, email, numero_telephone, id_genre) VALUES
    ("Arrighi", "Fabien", "fabien@gmail.com", "0635361450", 1),
    ("Ferrer", "Nathan", "nathan@gmail.com", "0669420010", 1),
    ("Cordier", "Thomas", "thomas@gmail.com", "0678964500", 1),
    ("Corniglion", "Illian", "illian@gmail.com", "0612367894", 1),
    ("Murer", "Gaëtan", "gaetan@gmail.com", "0613967805", 1),
    ("Caci", "Arnaud", "arnaud@gmail.com", "0675981203", 1),
    ("Girod", "Valentin", "valentin@gmail.com", "0778562130", 1),
    ("Attal", "Raphael", "raphael@gmail.com", "0610258659", 1),
    ("Ficat", "Adrien", "adrien@gmail.com", "0703122378", 1),
    ("Panassac", "Matéo", "mateo@gmail.com", "0656989674", 1),
    ("Moretti", "Antoine", "antoine@gmail.com", "0674206946", 1),
    ("Brown", "Malaury", "malaury@gmail.com", "0697183829", 2),
    ("Courty", "Carla", "carla@gmail.com", "0617893802", 2),
    ("Philipot", "Florien", "florien@gmail.com", "0697643108", 1),
    ("Bonturi", "Sylvain", "sylvain@gmail.com", "0657595315", 1),
    ("Faure", "Patricia", "patricia@gmail.com", "0742569813", 2),
    ("Fonzes", "George", "george@gmail.com", "0679648025", 1),
    ("Pradelle", "Lucas", "lucas@gmail.com", "0625979878", 1),
    ("Blancher", "Serge", "serge@gmail.com", "0612345986", 1),
    ("Hugues", "Maxime", "maxime@gmail.com", "0678562345", 1),
    ("Tardif", "Luce", "luce@societe.fr", "0617893802", 2),
    ("Picard", "Brunella", "brunella@societe.fr", "0697643108", 2),
    ("Boulé", "Marshall", "marshall@societe.fr", "0657595315", 1),
    ("Aubine", "Melodie", "melodie@societe.fr", "0742569813", 2),
    ("Petit", "Louise", "louise@societe.fr", "0679648025", 1),
    ("Fouquet", "Thibaut", "thibaut@societe.fr", "0625979878", 1),
    ("Hervé", "Joséphine", "josephine@societe.fr", "0612345986", 2),
    ("Lapierre", "Denis", "denis@societe.fr", "0678562345", 1);


    -- Table destination (15 transports)

INSERT INTO	ville (nom_ville, est_destination) VALUES
    ("Paris", 1),
    ("Lyon", 1),
    ("Nice", 1),
    ("Nantes", 1),
    ("Strasbourg", 1),
    ("Montpellier", 1),
    ("Lille", 1),
    ("Rennes", 1),
    ("Reims", 1),
    ("Saint-Étienne", 1),
    ("Angers", 1),
    ("Grenoble", 1),
    ("Nîmes", 1),
    ("Aix-en-Provence", 1),
    ("Brest", 1),
    ("Nanterre", 0),
    ("Plaisir", 0),
    ("Sevran", 0),
    ("Orly", 0),
    ("Étampes", 0),
    ("Guéret", 0),
    ("Arras", 0),
    ("Bourgoin-Jallieu", 0),
    ("Pantin", 0),
    ("Saint-Benoît", 0),
    ("Chartres", 0),
    ("Toulon", 0),
    ("Neuilly-sur-Seine", 0),
    ("Dammarie-les-Lys", 0),
    ("Rouen", 0),
    ("Vienne", 0),
    ("Herblay", 0),
    ("Beauvais", 0),
    ("Aurillac", 0),
    ("Moulins", 0);


-- Table adresse client (19 adresses)

INSERT INTO	adresse_client (adresse_client, complement_adresse_client, code_postal_client, id_ville) VALUES
    ("25 rue du web", "Résidence Jean Médecin", "06200", 3),
    ("10 place Stanislas", NULL, "92000", 16),
    ("83 rue de la Boétie", NULL, "78370", 17),
    ("73 avenue de Bouvines", NULL, "93270", 18),
    ("8 rue Nationale", NULL, "75004", 1),
    ("83 boulevard Amiral Courbet", NULL, "94310", 19),
    ("25 Rue du Palais", NULL, "91150", 20),
    ("33 Avenue des Tuileries", NULL, "23000", 21),
    ("27 rue de Lille", NULL, "62000", 22),
    ("39 rue Petite Fusterie", "Résidence Les Cyclamens", "38300", 23),
    ("61 Square de la Couronne", NULL, "93500", 24),
    ("70 rue des Nations Unies", "6ème étages", "97470", 25),
    ("67 place Maurice-Charretier", NULL, "28000", 26),
    ("40 rue du Fossé des Tanneurs", NULL, "83200", 27),
    ("57 rue du Fossé des Tanneurs", NULL, "83200", 27),
    ("41 rue de Raymond Poincaré", NULL, "92200", 28),
    ("82 rue Banaudon", NULL, "69009", 2),
    ("97 boulevard Bryas", "1er étage", "77190", 29),
    ("16 rue de l'Epeule", NULL, "76000" , 30);


-- Table client (20 clients)

INSERT INTO	client (id_personne, date_naissance, id_adresse_client_livraison, id_adresse_client_facturation) VALUES
    (1, "2003-05-02", 1, 1),
    (2, "2010-08-23", 15, 15),
    (3, "2007-04-15", 3, 3),
    (4, "2014-07-24", 10, 10),
    (5, "2012-03-17", 12, 12),
    (6, "2010-06-16", 17, 17),
    (7, "1990-09-15", 9, 9),
    (8, "1997-05-04", 9, 9),
    (9, "1993-04-14", 4, 4),
    (10, "2004-08-26", 19, 19),
    (11, "1996-06-28", 13, 13),
    (12, "1996-07-04", 8, 8),
    (13, "2015-02-16", 11, 11),
    (14, "2008-08-17", 14, 14),
    (15, "2011-01-11", 5, 5),
    (16, "2011-06-27", 7, 7),
    (17, "1996-12-26", 18, 18),
    (18, "1990-12-23", 6, 6),
    (19, "2012-02-08", 16, 16),
    (20, "2015-10-25", 2, 2);


-- Table adresse_employe (8 adresses)

INSERT INTO	adresse_employe (adresse_employe, complement_adresse_employe, code_postal_employe, id_ville) VALUES
    ("85 rue Banaudon", NULL, "06000", 3),
    ("37 Place de la Madeleine", NULL, "75011", 1),
    ("30 Place du Jeu de Paume", NULL, "38200", 31),
    ("72 rue des Chaligny", NULL, "06300", 3),
    ("39 rue des Lacs", NULL, "95220", 32),
    ("79 rue Jean Vilar", NULL, "60000 ", 33),
    ("84 rue Sadi Carnot", NULL, "15000", 34),
    ("62 rue des Coudriers", NULL, "03000", 35);


-- Table moyen_transport (4 transports)

INSERT INTO	moyen_transport (nom_moyen_transport) VALUES
    ("Car"),
    ("Avion"),
    ("Train"),
    ("Bateau");


-- Table employé (8 employés)

INSERT INTO	employe (id_personne, date_embauche, id_adresse_employe) VALUES
    (21,"2004-05-13", 1),
    (22,"2004-11-27", 7),
    (23, "1995-07-12", 5),
    (24,"2016-04-13", 3),
    (25,"2007-01-09", 4),
    (26, "2014-04-14", 2),
    (27, "2017-05-09", 8),
    (28, "2017-06-22", 6);


-- Table accessible_par (toutes les villes sont accessible par car)

INSERT INTO accessible_par (id_ville, id_moyen_transport, disponible) VALUES
    (1, 1, 1),
    (1, 2, 1),
    (1, 3, 1),
    (1, 4, 0),
    (2, 1, 1),
    (2, 2, 1),
    (2, 3, 1),
    (2, 4, 0),
    (3, 1, 1),
    (3, 2, 1),
    (3, 3, 1),
    (3, 4, 1),
    (4, 1, 1),
    (4, 2, 1),
    (4, 3, 1),
    (4, 4, 0),
    (5, 1, 1),
    (5, 2, 0),
    (5, 3, 1),
    (5, 4, 0),
    (6, 1, 1),
    (6, 2, 1),
    (6, 3, 1),
    (6, 4, 0),
    (7, 1, 1),
    (7, 2, 0),
    (7, 3, 1),
    (7, 4, 0),
    (8, 1, 1),
    (8, 2, 0),
    (8, 3, 1),
    (8, 4, 0),
    (9, 1, 1),
    (9, 2, 0),
    (9, 3, 1),
    (9, 4, 0),
    (10, 1, 1),
    (10, 2, 0),
    (10, 3, 0),
    (10, 4, 0),
    (11, 1, 1),
    (11, 2, 0),
    (11, 3, 0),
    (11, 4, 0),
    (12, 1, 1),
    (12, 2, 0),
    (12, 3, 1),
    (12, 4, 0),
    (13, 1, 1),
    (13, 2, 0),
    (13, 3, 1),
    (13, 4, 0),
    (14, 1, 1),
    (14, 2, 1),
    (14, 3, 0),
    (14, 4, 0),
    (15, 1, 1),
    (15, 2, 0),
    (15, 3, 0),
    (15, 4, 1);


-- Table kilometrage

INSERT INTO kilometrage (id_ville_1, id_ville_2, distance) VALUES
    (1, 2, 462),
    (1, 3, 931),
    (1, 4, 380),
    (1, 5, 488),
    (1, 6, 746),
    (1, 7, 219),
    (1, 8, 348),
    (1, 9, 143),
    (1, 10, 522),
    (1, 11, 293),
    (1, 12, 575),
    (1, 13, 710),
    (1, 14, 759),
    (1, 15, 589),
    (2, 3, 472),
    (2, 4, 681),
    (2, 5, 494),
    (2, 6, 302),
    (2, 7, 689),
    (2, 8, 718),
    (2, 9, 487),
    (2, 10, 62),
    (2, 11, 594),
    (2, 12, 107),
    (2, 13, 251),
    (2, 14, 299),
    (2, 15, 970),
    (3, 4, 1143),
    (3, 5, 790),
    (3, 6, 326),
    (3, 7, 1157),
    (3, 8, 1186),
    (3, 9, 955),
    (3, 10, 490),
    (3, 11, 1062),
    (3, 12, 465),
    (3, 13, 279),
    (3, 14, 176),
    (3, 15, 1440),
    (4, 5, 860),
    (4, 6, 824),
    (4, 7, 597),
    (4, 8, 107),
    (4, 9, 515),
    (4, 10, 662),
    (4, 11, 88),
    (4, 12, 786),
    (4, 13, 874),
    (4, 14, 972),
    (4, 15, 296),
    (5, 6, 791),
    (5, 7, 549),
    (5, 8, 827),
    (5, 9, 347),
    (5, 10, 550),
    (5, 11, 773),
    (5, 12, 533),
    (5, 13, 739),
    (5, 14, 787),
    (5, 15, 1069),
    (6, 7, 963),
    (6, 8, 895),
    (6, 9, 787),
    (6, 10, 322),
    (6, 11, 771),
    (6, 12, 297),
    (6, 13, 56),
    (6, 14, 154),
    (6, 15, 1120),
    (7, 8, 572),
    (7, 9, 199),
    (7, 10, 749),
    (7, 11, 511),
    (7, 12, 803),
    (7, 13, 938),
    (7, 14, 986),
    (7, 15, 759),
    (8, 9, 483),
    (8, 10, 699),
    (8, 11, 126),
    (8, 12, 823),
    (8, 13, 948),
    (8, 14, 1013),
    (8, 15, 241),
    (9, 10, 546),
    (9, 11, 429),
    (9, 12, 600),
    (9, 13, 735),
    (9, 14, 783),
    (9, 15, 725),
    (10, 11, 574),
    (10, 12, 155),
    (10, 13, 271),
    (10, 14, 319),
    (10, 15, 950),
    (11, 12, 700),
    (11, 13, 824),
    (11, 14, 890),
    (11, 15, 377),
    (12, 13, 245),
    (12, 14, 293),
    (12, 15, 1075),
    (13, 14, 108),
    (13, 15, 1169),
    (14, 15, 1267);


-- Table forfait (3 forfaits commun pour chaque ville)

INSERT INTO forfait (nom_forfait, tarif_forfait) VALUES
    ("Découverte gastronomie locale", 100),
    ("Découverte de la ville en petit train", 30),
    ("Découverte de la ville avec guide", 80);


-- Table voyage (1 ou deux voyage par client)

INSERT INTO voyage (tarif_voyage, reserve_le, id_forfait, id_employe) VALUES
    (526, "2020-02-21", NULL, 7),
    (NULL, "2021-05-25", 1, 5),
    (982, "2020-03-06", NULL, 1),
    (NULL, "2020-12-31", 2, 5),
    (202, "2019-01-31", NULL, 8),
    (629, "2020-10-18", NULL, 4),
    (740, "2020-08-22", NULL, 2),
    (NULL, "2020-02-05", 1, 1),
    (786, "2021-09-18", NULL, 3),
    (512, "2019-01-15", NULL, 3),
    (544, "2019-09-07", NULL, 8),
    (126, "2020-03-12", NULL, 4),
    (NULL, "2022-03-06", 3, 6),
    (879, "2021-01-03", NULL, 1),
    (270, "2021-05-06", NULL, 2),
    (997, "2020-12-26", NULL, 6),
    (628, "2020-06-11", NULL, 2),
    (NULL, "2019-02-20", 3, 7),
    (483, "2021-04-12", NULL, 3),
    (783, "2021-12-26", NULL, 6),
    (487, "2020-08-11", NULL, 2),
    (566, "2021-02-09", NULL, 8);


-- Table reservation

INSERT INTO reservation (id_client, id_voyage) VALUES
    (1, 1),
    (1, 20),
    (2, 2),
    (3, 3),
    (3, 22),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 7),
    (9, 8),
    (10, 9),
    (11, 10),
    (12, 11),
    (13, 12),
    (14, 13),
    (15, 14),
    (15, 21),
    (16, 15),
    (17, 16),
    (18, 17),
    (19, 18),
    (20, 19);


-- Table mode_paiement

INSERT INTO mode_paiement (nom_mode_paiement) VALUES
    ("CB"),
    ("Chèque"),
    ("Espèce"),
    ("Chèque vacance"),
    ("Crypto-monnaie");


-- Table paiement

INSERT INTO paiement (date_paiement, montant_paye, paiement_differe, id_mode_paiement, id_voyage) VALUES
    ("2020-02-21", 526, 0, 1, 1),
    ("2021-05-25", 100, 0, 1, 2),
    ("2020-03-06", 982, 0, 2, 3),
    ("2020-12-31", 30, 0, 1, 4),
    ("2019-01-31", 202, 0, 3, 5),
    ("2020-10-18", 629, 0, 2, 6),
    ("2020-08-22", 700, 1, 1, 7),
    ("2020-02-05", 100, 0, 3, 8),
    ("2021-09-18", 786, 0, 1, 9),
    ("2019-01-15", 512, 0, 1, 10),
    ("2019-09-07", 444, 1, 1, 11),
    ("2020-03-12", 126, 0, 4, 12),
    ("2022-03-06", 80, 0, 1, 13),
    ("2021-01-03", 100, 1, 5, 11),
    ("2021-05-06", 79, 1, 4, 14),
    ("2020-12-26", 800, 1, 5, 14),
    ("2020-06-11", 270, 0, 1, 15),
    ("2019-02-20", 40, 1, 3, 7),
    ("2022-04-12", 997, 0, 2, 16),
    ("2021-04-12", 628, 0, 2, 17),
    ("2021-12-26", 80, 0, 2, 18),
    ("2021-12-26", 483, 0, 1, 19),
    ("2020-08-11", 783, 0, 5, 20),
    ("2021-02-09", 487, 0, 2, 21),
    ("2022-02-09", 566, 0, 5, 22);


-- Table etape

INSERT INTO etape (date_depart, date_arrive, id_ville_depart, id_ville_arrive, id_moyen_transport, id_voyage) VALUES
    ("2021-04-21", "2021-04-30", 1, 15, 1, 1),
    ("2022-03-15", "2022-03-18", 8, 8, NULL, 2),
    ("2021-03-16", "2021-03-20", 5, 1, 1, 3),
    ("2021-01-01", "2021-01-10", 15, 15, NULL, 4),
    ("2019-03-31", "2019-04-02", 6, 2, 3, 5),
    ("2020-11-28", "2020-12-01", 9, 3, 1, 6),
    ("2020-08-28", "2020-09-01", 8, 7, 3, 7),
    ("2020-09-01", "2020-09-03", 11, 4, 1, 7),
    ("2020-02-15", "2020-02-19", 10, 10, NULL, 8),
    ("2021-10-10", "2021-10-15", 13, 12, 3, 9),
    ("2019-03-15", "2019-03-16", 4, 11, 1, 10),
    ("2021-01-03", "2021-01-04", 5, 8, 3, 11),
    ("2021-01-04", "2021-01-06", 6, 4, 2, 11),
    ("2021-01-06", "2021-01-08", 3, 1, 1, 11),
    ("2020-03-24", "2020-03-26", 2, 6, 3, 12),
    ("2022-04-06", "2022-04-09", 5, 5, NULL, 13),
    ("2021-12-24", "2021-12-26", 1, 8, 3, 14),
    ("2022-05-11", "2022-05-12", 1, 12, 1, 15),
    ("2022-04-15", "2022-04-20", 15, 11, 1, 16),
    ("2021-04-29", "2021-05-02", 14, 10, 1, 17),
    ("2021-12-30", "2022-01-02", 2, 2, NULL, 18),
    ("2022-01-26", "2022-01-29", 6, 1, 2, 19),
    ("2020-09-11", "2020-09-18", 9, 3, 3, 20),
    ("2022-02-15", "2022-02-16", 2, 7, 1, 21),
    ("2022-03-09", "2022-03-13", 1, 8, 3, 22);