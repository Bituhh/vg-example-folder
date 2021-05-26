CREATE OR REPLACE FUNCTION "public"."abcf_test"(i_usr character varying) RETURNS INTEGER
    STABLE
AS
$body$
DECLARE
    v_user_code  CHAR(4) := '';
    v_my_user_id INTEGER := 0;
BEGIN
    SELECT security_user_id, security_user_code
    INTO v_my_user_id,v_user_code
    FROM obf_is_user_authorized(i_usr, NULL);

    -- Code Here
END;
$body$ LANGUAGE plpgsql;
