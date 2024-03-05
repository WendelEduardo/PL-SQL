SET SERVEROUTPUT ON

DECLARE
--Aqui  definimos  as  variáveis  e  outras  estruturas  que veremos mais à frente
    emprec emp%ROWTYPE;

BEGIN
--Aqui usamos instruções SQL e PL/SQL
    SELECT *
    INTO emprec
    FROM emp
    WHERE empno = 7839;
    
    DBMS_OUTPUT.PUT_LINE(emprec.empno);
END;
/

SELECT * FROM tabela1