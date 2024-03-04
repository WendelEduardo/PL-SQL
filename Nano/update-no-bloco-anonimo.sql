SET SERVEROUTPUT ON

DECLARE
--Aqui  definimos  as  variáveis  e  outras  estruturas  que veremos mais à frente
    v_sal_increase NUMBER := 2000;
BEGIN
--Aqui usamos instruções SQL e PL/SQL
    UPDATE emp SET sal = sal+v_sal_increase
    WHERE emp.job = 'ANALYST';
END;
/


CL SCR

SELECT * FROM emp WHERE emp.job = 'ANALYST';
desc emp;