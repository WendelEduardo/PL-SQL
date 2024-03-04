SET SERVEROUTPUT ON

DECLARE
--Aqui  definimos  as  variáveis  e  outras  estruturas  que veremos mais à frente
BEGIN
--Aqui usamos instruções SQL e PL/SQL
    FOR i IN 1..10 LOOP
        INSERT INTO tabela1
        VALUES('Inserindo texto numero ' || i);
    END LOOP;
END;
/