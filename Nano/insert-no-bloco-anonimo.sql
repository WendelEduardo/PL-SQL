SET SERVEROUTPUT ON

DECLARE
--Aqui  definimos  as  variáveis  e  outras  estruturas  que veremos mais à frente
    v_empno NUMBER := 11;
    v_ename VARCHAR2(13) := 'Sandra';
    v_job VARCHAR2(13) := 'GERENTE';
    v_deptno NUMBER := 10;
BEGIN
--Aqui usamos instruções SQL e PL/SQL
    INSERT INTO emp(EMPNO, ename, job, deptno)
    VALUES(v_empno, v_ename, v_job, v_deptno);
END;
/

SELECT * FROM emp WHERE deptno = 10;

CL SCR

desc emp;