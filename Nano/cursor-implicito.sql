SET SERVEROUTPUT ON

BEGIN
    DELETE
    FROM emp
    WHERE deptno = 10;
    
    DBMS_OUTPUT.PUT_LINE('Linhas apagadas = ' || SQL%ROWCOUNT);
    IF SQL%FOUND = TRUE THEN
        DBMS_OUTPUT.PUT_LINE('Encontrado');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Não Encontrado');
    END IF;
    
    ROLLBACK;
END;
/

CL SCREEN;


-- %FOUND
-- %ISOPEN
-- %NOTFOUND
-- %ROWCOUNT