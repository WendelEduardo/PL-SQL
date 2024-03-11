SET SERVEROUTPUT ON

DECLARE
    CURSOR cursor_emp IS
    SELECT deptno, SUM(sal) soma
    FROM emp
    GROUP BY deptno;
BEGIN
    
    FOR emprec IN cursor_emp LOOP
        DBMS_OUTPUT.PUT_LINE('DEPARTAMENTO: ' || emprec.deptno);
        DBMS_OUTPUT.PUT_LINE('SALARIO: ' || emprec.soma);
        DBMS_OUTPUT.PUT_LINE(' ');
    END LOOP;
END;
/

CL SCREEN;
