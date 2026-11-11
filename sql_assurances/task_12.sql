DELIMITER //

DROP TRIGGER IF EXISTS trg_verifier_places //

CREATE TRIGGER trg_verifier_places
BEFORE INSERT ON deplacements
FOR EACH ROW
BEGIN
    DECLARE v_nb_places INT;
    DECLARE v_nb_passagers INT;

    -- Récupère la capacité maximale du véhicule
    SELECT t.nbplaces INTO v_nb_places
    FROM vehicules v
    JOIN types_vehicules t ON v.type_voiture = t.id
    WHERE v.id = NEW.vehicule;

    -- Compte les passagers déjà enregistrés pour le même trajet (même véhicule et même heure de début)
    SELECT COUNT(*) INTO v_nb_passagers
    FROM deplacements
    WHERE vehicule = NEW.vehicule
      AND debut_dep = NEW.debut_dep;

    -- Bloque l'insertion si la capacité maximale est atteinte
    IF v_nb_passagers >= v_nb_places THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Capacite du vehicule depassee';
    END IF;
END //

DELIMITER ;