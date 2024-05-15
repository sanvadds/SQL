-- User Defined Function Create in Postgres
CREATE FUNCTION cal_square(num integer)
RETURNS integer
AS $$
DECLARE
	result integer;
BEGIN
	result = num * num;
    RETURN result;
END;
$$
LANGUAGE plpgsql;

SELECT cal_square(5)