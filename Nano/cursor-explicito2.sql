SET SERVEROUTPUT ON

DECLARE
    emprec emp%ROWTYPE;
    
    CURSOR cursor_emp IS
    SELECT deptno, SUM(sal)
    FROM emp
    GROUP BY deptno;
    
BEGIN
    OPEN cursor_emp;
    
    FETCH cursor_emp INTO emprec.deptno, emprec.sal;
    
    DBMS_OUTPUT.PUT_LINE('DEPARTAMENTO: ' || emprec.deptno);
    DBMS_OUTPUT.PUT_LINE('SALARIO: ' || emprec.sal);
    
END;
/

CL SCREEN;
