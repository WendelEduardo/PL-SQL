SET SERVEROUTPUT ON

DECLARE
--Aqui  definimos  as  variáveis  e  outras  estruturas  que veremos mais à frente
    v_coll tabela1.coll%TYPE;
    v_tamanho NUMBER(3);
BEGIN
--Aqui usamos instruções SQL e PL/SQL
    SELECT LENGTH(coll), coll
    INTO v_tamanho, v_coll
    FROM tabela1;
    
    IF v_tamanho > 25 THEN
        DBMS_OUTPUT.PUT_LINE('Maior que 25');
    END IF;
END;
/
