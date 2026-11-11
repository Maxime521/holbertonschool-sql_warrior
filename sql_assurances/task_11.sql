DELIMITER //

DROP PROCEDURE IF EXISTS ajouter_employe //

CREATE PROCEDURE ajouter_employe(
    IN p_nom VARCHAR(50),
    IN p_prenom VARCHAR(50),
    IN p_num_permis VARCHAR(12)
)
BEGIN
    DECLARE v_next_id INT;

    SELECT COALESCE(MAX(id), 0) + 1 
    INTO v_next_id 
    FROM employes;

    INSERT INTO employes (id, nom, prenom, num_permis)
    VALUES (v_next_id, UPPER(p_nom), p_prenom, p_num_permis);
END //

DELIMITER ;