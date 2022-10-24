-- SF_GSTS_04

SELECT ville.nom_ville, COUNT(etape.id_ville_arrive) AS Nombre_voyage_effectue
FROM (SELECT id_ville, nom_ville FROM ville) AS ville
JOIN (SELECT id_ville_arrive FROM etape) AS etape ON ville.id_ville = etape.id_ville_arrive
GROUP BY ville.nom_ville
ORDER BY nombre_voyage_effectue DESC


-- SF_GSTS_05

SELECT (SELECT COUNT(id_etape) FROM etape WHERE id_ville_depart = id_ville_arrive) * 100 / (SELECT COUNT(id_etape) FROM etape) AS voyage_intra_ville, (SELECT COUNT(id_etape) FROM etape WHERE id_ville_depart != id_ville_arrive) * 100 / (SELECT COUNT(id_etape) FROM etape) AS voyage_inter_ville


-- SF_GSTS_09

SELECT moyen_transport.nom_moyen_transport, COUNT(moyen_transport.id_moyen_transport) AS nombre_utilisation
FROM moyen_transport
JOIN (SELECT id_moyen_transport, date_depart FROM etape) AS etape ON moyen_transport.id_moyen_transport = etape.id_moyen_transport
WHERE etape.date_depart >= DATE_SUB(CURRENT_DATE(), INTERVAL 3 MONTH)
GROUP BY moyen_transport.id_moyen_transport
ORDER BY COUNT(moyen_transport.id_moyen_transport) DESC
LIMIT 1


-- SF_GSTS_13

SELECT COUNT(*) / (SELECT COUNT(DISTINCT voyage.id_voyage) 
                   FROM (SELECT id_voyage FROM voyage) AS voyage 
                   NATURAL JOIN (SELECT id_voyage, date_depart FROM etape) AS etape 
                   WHERE etape.date_depart > DATE_SUB(CURRENT_DATE(), INTERVAL 6 MONTH)) AS nombre_moyen_enfant 
FROM (SELECT COUNT(id_voyage AND id_client) 
      FROM client 
      NATURAL JOIN reservation
      NATURAL JOIN (SELECT id_voyage, id_etape, date_depart FROM etape) AS etape
      WHERE client.date_naissance > DATE_SUB(CURRENT_DATE(), INTERVAL 12 YEAR) AND etape.date_depart > DATE_SUB(CURRENT_DATE(), INTERVAL 6 MONTH)
      GROUP BY id_voyage, id_client) AS voyage_enfant



-- SF_GC_03

DROP PROCEDURE IF EXISTS modif_nom_client;
DELIMITER //
CREATE PROCEDURE modif_nom_client (IN nouveau_nom VARCHAR(100), IN ancien_nom VARCHAR(100))
BEGIN
UPDATE client NATURAL JOIN personne SET nom = nouveau_nom WHERE nom = ancien_nom;
END //


-- SF_GP_04

DROP PROCEDURE IF EXISTS recherche_employe;
DELIMITER //
CREATE PROCEDURE recherche_employe (IN nom_employe VARCHAR(50))
BEGIN
SELECT * FROM employe NATURAL JOIN personne WHERE nom = nom_employe;
END //