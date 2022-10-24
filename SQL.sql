CREATE TABLE ville(
   id_ville INT AUTO_INCREMENT,
   nom_ville VARCHAR(30) NOT NULL,
   est_destination BOOLEAN,
   PRIMARY KEY(id_ville)
);

CREATE TABLE moyen_transport(
   id_moyen_transport INT AUTO_INCREMENT,
   nom_moyen_transport VARCHAR(30) NOT NULL,
   PRIMARY KEY(id_moyen_transport)
);

CREATE TABLE forfait(
   id_forfait INT AUTO_INCREMENT,
   nom_forfait VARCHAR(50),
   tarif_forfait DECIMAL(10,2),
   PRIMARY KEY(id_forfait)
);

CREATE TABLE mode_paiement(
   id_mode_paiement INT AUTO_INCREMENT,
   nom_mode_paiement VARCHAR(30) NOT NULL,
   PRIMARY KEY(id_mode_paiement)
);

CREATE TABLE genre(
   id_genre INT AUTO_INCREMENT,
   nom_genre VARCHAR(10),
   PRIMARY KEY(id_genre)
);

CREATE TABLE personne(
   id_personne INT AUTO_INCREMENT,
   nom VARCHAR(50) NOT NULL,
   prenom VARCHAR(50) NOT NULL,
   email VARCHAR(50),
   numero_telephone VARCHAR(50),
   id_genre INT NOT NULL,
   PRIMARY KEY(id_personne),
   FOREIGN KEY(id_genre) REFERENCES genre(id_genre)
);

CREATE TABLE adresse_client(
   id_adresse_client INT AUTO_INCREMENT,
   adresse_client VARCHAR(200),
   complement_adresse_client VARCHAR(100),
   code_postal_client VARCHAR(10),
   id_ville INT NOT NULL,
   PRIMARY KEY(id_adresse_client),
   FOREIGN KEY(id_ville) REFERENCES ville(id_ville)
);

CREATE TABLE adresse_employe(
   id_adresse_employe INT AUTO_INCREMENT,
   adresse_employe VARCHAR(200),
   complement_adresse_employe VARCHAR(100),
   code_postal_employe VARCHAR(10),
   id_ville INT NOT NULL,
   PRIMARY KEY(id_adresse_employe),
   FOREIGN KEY(id_ville) REFERENCES ville(id_ville)
);

CREATE TABLE client(
   id_client INT AUTO_INCREMENT,
   date_naissance DATE,
   id_adresse_client_livraison INT NOT NULL,
   id_adresse_client_facturation INT NOT NULL,
   id_personne INT NOT NULL,
   PRIMARY KEY(id_client),
   FOREIGN KEY(id_adresse_client_livraison) REFERENCES adresse_client(id_adresse_client),
   FOREIGN KEY(id_adresse_client_facturation) REFERENCES adresse_client(id_adresse_client),
   FOREIGN KEY(id_personne) REFERENCES personne(id_personne)
);

CREATE TABLE employe(
   id_employe INT AUTO_INCREMENT,
   date_embauche DATE,
   id_adresse_employe INT NOT NULL,
   id_personne INT NOT NULL,
   PRIMARY KEY(id_employe),
   FOREIGN KEY(id_adresse_employe) REFERENCES adresse_employe(id_adresse_employe),
   FOREIGN KEY(id_personne) REFERENCES personne(id_personne)
);

CREATE TABLE voyage(
   id_voyage INT AUTO_INCREMENT,
   tarif_voyage DECIMAL(10,2) DEFAULT NULL,
   reserve_le DATETIME,
   id_forfait INT DEFAULT NULL,
   id_employe INT NOT NULL,
   PRIMARY KEY(id_voyage),
   FOREIGN KEY(id_forfait) REFERENCES forfait(id_forfait),
   FOREIGN KEY(id_employe) REFERENCES employe(id_employe)
);

CREATE TABLE paiement(
   id_paiement INT AUTO_INCREMENT,
   date_paiement DATETIME,
   montant_paye INT,
   paiement_differe BOOLEAN,
   id_mode_paiement INT NOT NULL,
   id_voyage INT NOT NULL,
   PRIMARY KEY(id_paiement),
   FOREIGN KEY(id_mode_paiement) REFERENCES mode_paiement(id_mode_paiement),
   FOREIGN KEY(id_voyage) REFERENCES voyage(id_voyage)
);

CREATE TABLE etape(
   id_etape INT AUTO_INCREMENT,
   date_depart DATETIME,
   date_arrive DATETIME,
   id_ville_depart INT NOT NULL,
   id_ville_arrive INT NOT NULL,
   id_moyen_transport INT,
   id_voyage INT NOT NULL,
   PRIMARY KEY(id_etape),
   FOREIGN KEY(id_ville_depart) REFERENCES ville(id_ville),
   FOREIGN KEY(id_ville_arrive) REFERENCES ville(id_ville),
   FOREIGN KEY(id_moyen_transport) REFERENCES moyen_transport(id_moyen_transport),
   FOREIGN KEY(id_voyage) REFERENCES voyage(id_voyage)
);

CREATE TABLE reservation(
   id_client INT,
   id_voyage INT,
   PRIMARY KEY(id_client, id_voyage),
   FOREIGN KEY(id_client) REFERENCES client(id_client),
   FOREIGN KEY(id_voyage) REFERENCES voyage(id_voyage)
);

CREATE TABLE accessible_par(
   id_ville INT,
   id_moyen_transport INT,
   disponible BOOLEAN,
   PRIMARY KEY(id_ville, id_moyen_transport),
   FOREIGN KEY(id_ville) REFERENCES ville(id_ville),
   FOREIGN KEY(id_moyen_transport) REFERENCES moyen_transport(id_moyen_transport)
);

CREATE TABLE kilometrage(
   id_ville_1 INT,
   id_ville_2 INT,
   distance INT,
   PRIMARY KEY(id_ville_1, id_ville_2),
   FOREIGN KEY(id_ville_1) REFERENCES ville(id_ville),
   FOREIGN KEY(id_ville_2) REFERENCES ville(id_ville)
);