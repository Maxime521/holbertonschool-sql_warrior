DELIMITER //

DROP FUNCTION IF EXISTS date_fin_contrat //

CREATE FUNCTION date_fin_contrat(p_id_contrat INT)
RETURNS DATE
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE v_date_effet DATETIME;
    DECLARE v_duree INT;
    DECLARE v_date_fin DATE;

    SELECT date_effet, duree 
    INTO v_date_effet, v_duree
    FROM contrats
    WHERE id = p_id_contrat;

    IF v_date_effet IS NULL THEN
        RETURN NULL;
    END IF;

    SET v_date_fin = DATE_ADD(v_date_effet, INTERVAL v_duree MONTH);

    RETURN v_date_fin;
END //

DELIMITER ;