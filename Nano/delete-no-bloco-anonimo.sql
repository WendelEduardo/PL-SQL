SET SERVEROUTPUT ON

DECLARE
--Aqui  definimos  as  vari�veis  e  outras  estruturas  que veremos mais � frente
    v_dept NUMBER := 10;
BEGIN
--Aqui usamos instru��es SQL e PL/SQL
    delete from emp
    WHERE emp.DEPTNO = v_dept;
END;
/


CL SCR

SELECT * FROM emp;
desc emp;