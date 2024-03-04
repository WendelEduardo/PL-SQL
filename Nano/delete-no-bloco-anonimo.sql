SET SERVEROUTPUT ON

DECLARE
--Aqui  definimos  as  variáveis  e  outras  estruturas  que veremos mais à frente
    v_dept NUMBER := 10;
BEGIN
--Aqui usamos instruções SQL e PL/SQL
    delete from emp
    WHERE emp.DEPTNO = v_dept;
END;
/


CL SCR

SELECT * FROM emp;
desc emp;