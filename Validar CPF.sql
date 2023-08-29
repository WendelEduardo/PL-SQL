set feed off
set verify off
set echo off
set serverout on

-- Solução 1
declare
    v_cpf         varchar(30):=12312312387;
    v_digentrada  char(2):=substr(v_cpf,10,11);
    v_dig         number(3):=0;
    v_dig1        number(3):=0;
    v_dig2        number(3):=0;
    v_i           number(2) :=11;
    v_i2          number(2) :=12;
    e_cpfinvalido exception;
begin
     if length(v_cpf) <> 11 then
         raise e_cpfinvalido;
     end if;
     for i in  2..10 loop
         v_i:=v_i-1;
         v_dig:=substr(v_cpf,i-1,1)*v_i;
         v_dig1:=v_dig1+v_dig;
     end loop;
     v_dig1 := mod(v_dig1,11);
     if v_dig1 < 2 then
        v_dig1:=0;
     else
        v_dig1:=11-v_dig1;
     end if;

     for i in  2..11 loop
         v_dig:=substr(v_cpf,i-1,1)*v_i2;
         v_dig2:=v_dig2+v_dig;
     end loop;
     v_dig2 := mod(v_dig2,11);
     dbms_output.put_line(v_dig2);
     if v_dig2 < 2 then
        v_dig2:=0;
     else
        v_dig2:=11-v_dig2;
     end if;

     v_dig:=v_dig1||v_dig2;
     if v_digentrada=v_dig then
        dbms_output.put_line('CPF Válido');
     else
         dbms_output.put_line('CPF Inválido');
     end if;
EXCEPTION 
   WHEN e_cpfinvalido THEN
   dbms_output.put_line ('Número de CPF inválido. O CPF deve conter 11 dígitos');
end ;
/


-- Solução 2
set feed off
set verify off
set echo off
set serverout on
cl scre
declare
    v_cpf         varchar(30):=12312312387;
    v_digentrada  char(2):=substr(v_cpf,10,11);
    v_dig         number(3):=0;
    v_dig1        number(3):=0;
    v_dig2        number(3):=0;
    v_i           number(2) :=0;
    e_cpf_compr_invalido exception;
    e_cpf_invalido  exception;
begin
     if length(v_cpf) <> 11 then
         raise e_cpf_compr_invalido;
     end if;
     for i in  1..9 loop
         v_i:= v_i+1;
         v_dig:=substr(v_cpf,v_i,1)*i;
         v_dig1:=v_dig1+v_dig;
     end loop;
     v_dig1 := mod(v_dig1,11);
     v_i := 0;  
     
     if substr(v_digentrada,1,1) <> v_dig1 then
        raise e_cpf_invalido;
     end if;
     for i in  0..9 loop
         v_i:= v_i+1;
         v_dig:=substr(v_cpf,v_i,1)*i;
         v_dig2:=v_dig2+v_dig;
     end loop;
     
     v_dig2 := mod(v_dig2,11);
     v_dig:=v_dig1||v_dig2;
     if v_digentrada=v_dig then
         dbms_output.put_line('CPF Válido');
     else
         raise e_cpf_invalido;
     end if;
EXCEPTION 
   WHEN e_cpf_compr_invalido THEN
        dbms_output.put_line ('Número de CPF inválido. O CPF deve conter 11 dígitos');
   WHEN e_cpf_invalido THEN
         dbms_output.put_line('CPF Inválido');
end ;
/