SET SERVEROUTPUT ON

DECLARE
--Aqui  definimos  as  variáveis  e  outras  estruturas  que veremos mais à frente
BEGIN
--Aqui usamos instruções SQL e PL/SQL
    INSERT INTO dept VALUES(90, 'A', 'A');
    INSERT INTO dept VALUES(91, 'B', 'B');

    UPDATE dept 
    SET dname = 'C'
    WHERE dept.deptno = 91;
    
    commit;
EXCEPTION
    WHEN OTHERS THEN ROLLBACK;
END;
/


CL SCR

SELECT * FROM dept WHERE dept.deptno >= 90;
desc emp;