SET SERVEROUTPUT ON

DECLARE
--Aqui  definimos  as  vari�veis  e  outras  estruturas  que veremos mais � frente
    v_soma_sal NUMBER;
    v_deptno NUMBER NOT NULL := 10;
BEGIN
--Aqui usamos instru��es SQL e PL/SQL
    SELECT SUM(sal)
    INTO v_soma_sal
    FROM emp
    WHERE deptno = v_deptno;
    
    DBMS_OUTPUT.PUT_LINE(v_soma_sal);

END;
/

select * from emp WHERE deptno = 10;

CL SCR