SET SERVEROUTPUT ON

DECLARE
--Aqui  definimos  as  variáveis  e  outras  estruturas  que veremos mais à frente
    v_contador NUMBER(2) := 1;
BEGIN
--Aqui usamos instruções SQL e PL/SQL
    LOOP
        INSERT INTO tabela1
        VALUES('Inserindo texto numero ' || v_contador);
        v_contador := v_contador+1;
        EXIT WHEN v_contador > 10;
    END LOOP;
END;
/


SELECT * FROM tabela1;