CREATE OR REPLACE FUNCTION calculate_age(birthdate DATE)
RETURNS INTEGER AS $$
DECLARE
    cal_age INTEGER;
BEGIN
    cal_age := EXTRACT(YEAR FROM age(birthdate));
    RETURN cal_age;
END;
$$ LANGUAGE plpgsql;

SELECT calculate_age('1992-10-28'::DATE) AS person_age;