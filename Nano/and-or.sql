SET SERVEROUTPUT ON

DECLARE
--Aqui  definimos  as  vari�veis  e  outras  estruturas  que veremos mais � frente
    v_tamanho NUMBER(3);
BEGIN
--Aqui usamos instru��es SQL e PL/SQL
    SELECT LENGTH(coll)
    INTO v_tamanho
    FROM tabela1;
    
    IF v_tamanho > 25 OR TO_CHAR(SYSDATE, 'YYYY') = 2018 THEN
        DBMS_OUTPUT.PUT_LINE('Maior que 25 OU ano 2018');
    END IF;
END;
/



UPDATE tabela1 SET coll = ('TEXTooOOoooooooooooooooooooooo');