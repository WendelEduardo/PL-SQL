SET SERVEROUTPUT ON

DECLARE
--Aqui  definimos  as  vari�veis  e  outras  estruturas  que veremos mais � frente
    v_sal_increase NUMBER := 2000;
BEGIN
--Aqui usamos instru��es SQL e PL/SQL
    UPDATE emp SET sal = sal+v_sal_increase
    WHERE emp.job = 'ANALYST';
END;
/


CL SCR

SELECT * FROM emp WHERE emp.job = 'ANALYST';
desc emp;