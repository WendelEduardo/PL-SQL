create or replace FUNCTION VALIDA_CNPJ(CNPJ IN VARCHAR2) RETURN BOOLEAN AS
/*
RM 87896 Cristian Dias Rossmann Martinelli
RM 89291 Fabio Fernando de Souza 
RM 89355 Wendel Eduardo Mendes Genuino
RM 88865 Diogo Osorio

Quando executar a function , passe o CNPJ SEM FORMATAÇÃO. EX : CNPJ:='86714776000199'
*/
  dig13 CHAR(1);
  dig14 CHAR(1);
  sm NUMBER;
  i NUMBER;
  r NUMBER;
  num NUMBER;
  peso NUMBER;
BEGIN
  IF CNPJ IN ('00000000000000', '11111111111111', '22222222222222', '33333333333333',
              '44444444444444', '55555555555555', '66666666666666', '77777777777777',
              '88888888888888', '99999999999999') OR LENGTH(CNPJ) != 14 THEN
    RETURN FALSE;
  END IF;

  sm := 0;
  peso := 2;
  FOR i IN REVERSE 0..11 LOOP
    num := TO_NUMBER(SUBSTR(CNPJ, i+1, 1));
    sm := sm + (num * peso);
    peso := peso + 1;
    IF peso = 10 THEN
      peso := 2;
    END IF;
  END LOOP;

  r := MOD(sm, 11);
  IF r = 0 OR r = 1 THEN
    dig13 := '0';
  ELSE
    dig13 := TO_CHAR(11-r);
  END IF;

  sm := 0;
  peso := 2;
  FOR i IN REVERSE 0..12 LOOP
    num := TO_NUMBER(SUBSTR(CNPJ, i+1, 1));
    sm := sm + (num * peso);
    peso := peso + 1;
    IF peso = 10 THEN
      peso := 2;
    END IF;
  END LOOP;

  r := MOD(sm, 11);
  IF r = 0 OR r = 1 THEN
    dig14 := '0';
  ELSE
    dig14 := TO_CHAR(11-r);
  END IF;


IF dig13 = SUBSTR(CNPJ,13,1) AND dig14 = SUBSTR(CNPJ,14,1) THEN
   RETURN TRUE;
ELSE 
   RETURN FALSE;
END IF;

EXCEPTION
WHEN OTHERS THEN
   RETURN FALSE;
END VALIDA_CNPJ;