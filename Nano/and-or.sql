SET SERVEROUTPUT ON

DECLARE
--Aqui  definimos  as  variáveis  e  outras  estruturas  que veremos mais à frente
    v_tamanho NUMBER(3);
BEGIN
--Aqui usamos instruções SQL e PL/SQL
    SELECT LENGTH(coll)
    INTO v_tamanho
    FROM tabela1;
    
    IF v_tamanho > 25 OR TO_CHAR(SYSDATE, 'YYYY') = 2018 THEN
        DBMS_OUTPUT.PUT_LINE('Maior que 25 OU ano 2018');
    END IF;
END;
/



UPDATE tabela1 SET coll = ('TEXTooOOoooooooooooooooooooooo');