SET SERVEROUTPUT ON

DECLARE
--Aqui  definimos  as  vari�veis  e  outras  estruturas  que veremos mais � frente
BEGIN
--Aqui usamos instru��es SQL e PL/SQL
    FOR i IN 1..10 LOOP
        INSERT INTO tabela1
        VALUES('Inserindo texto numero ' || i);
    END LOOP;
END;
/