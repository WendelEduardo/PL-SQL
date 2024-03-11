SET SERVEROUTPUT ON

DECLARE
    emprec emp%ROWTYPE;
    
    CURSOR cursor_emp IS
    SELECT deptno, SUM(sal)
    FROM emp
    GROUP BY deptno;
    
BEGIN
    OPEN cursor_emp;
    
    LOOP
        FETCH cursor_emp INTO emprec.deptno, emprec.sal;
        
        EXIT WHEN cursor_emp%NOTFOUND;
    
        DBMS_OUTPUT.PUT_LINE('DEPARTAMENTO: ' || emprec.deptno);
        DBMS_OUTPUT.PUT_LINE('SALARIO: ' || emprec.sal);
        DBMS_OUTPUT.PUT_LINE(' ');

    END LOOP;
    
    CLOSE cursor_emp;
END;
/

CL SCREEN;
