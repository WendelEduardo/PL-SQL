SET SERVEROUTPUT ON

DECLARE
--Aqui  definimos  as  vari�veis  e  outras  estruturas  que veremos mais � frente
    v_nome varchar2(30);
    v_cargo varchar2(30);
BEGIN
--Aqui usamos instru��es SQL e PL/SQL
    SELECT ename, job
    INTO v_nome, v_cargo
    FROM emp
    WHERE empno = 7934;
    
    DBMS_OUTPUT.PUT_LINE(v_nome);
    DBMS_OUTPUT.PUT_LINE(v_cargo);

END;
/

select * from emp WHERE empno = 7934;

CL SCR