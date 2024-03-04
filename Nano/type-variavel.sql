SET SERVEROUTPUT ON

DECLARE
--Aqui  definimos  as  variáveis  e  outras  estruturas  que veremos mais à frente
    v_coll tabela1.coll%TYPE;
BEGIN
--Aqui usamos instruções SQL e PL/SQL
    SELECT coll
    INTO v_coll
    FROM tabela1;
    DBMS_OUTPUT.PUT_LINE(v_coll);
END;
/

truncate table tabela1;

ALTER TABLE tabela1
MODIFY coll VARCHAR2(30);

insert into tabela1
values('Tamanho aumento para 30 bytes')

CL SCR

SELECT * FROM dept WHERE dept.deptno >= 90;
desc emp;