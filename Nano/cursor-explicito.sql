SET SERVEROUTPUT ON

DECLARE
    CURSOR cursor_emp IS
    SELECT deptno, SUM(sal)
    FROM emp
    GROUP BY deptno;
BEGIN
    OPEN cursor_emp;
END;
/

CL SCREEN;