SET SERVEROUTPUT ON

DECLARE
--Aqui  definimos  as  vari�veis  e  outras  estruturas  que veremos mais � frente
    emprec emp%ROWTYPE;

BEGIN
--Aqui usamos instru��es SQL e PL/SQL
    SELECT *
    INTO emprec
    FROM emp
    WHERE empno = 7839;
    
    DBMS_OUTPUT.PUT_LINE(emprec.empno);
END;
/

SELECT * FROM tabela1