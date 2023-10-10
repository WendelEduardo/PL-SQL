create or replace function valida_rg( v_rg varchar2 )

/*
RM 87896 Cristian Dias Rossmann Martinelli
RM 89291 Fabio Fernando de Souza 
RM 89355 Wendel Eduardo Mendes Genuino
RM 88865 Diogo Osorio
*/

RETURN VARCHAR2 IS 
    v_digentrada char(30) := substr(v_rg, 9, 10); 
    v_rg_sem_dv char(30) := substr(v_rg, 1, 8); 

    v_dig         number(3):=0;
    v_i           number(2) := 8;

    v_valor_decrementa number(1) := 9;
    v_soma  number(3) := 0;

    v_resposta varchar2(20) := '';

    e_rginvalido exception;
begin

    if length(v_rg) <> 9 then
         raise e_rginvalido;
     end if;

     for i in  1..8 loop

         v_dig:=substr(v_rg_sem_dv,i,1);

         v_soma := v_soma + (v_dig * v_valor_decrementa);

         v_valor_decrementa := v_valor_decrementa-1;
     end loop;

     if v_digentrada = mod(v_soma, 11) then
        v_resposta := 'RG valido.';
     else
        v_resposta := 'RG invalido.';
     end if;

    return v_resposta;

EXCEPTION 
   WHEN e_rginvalido THEN
   dbms_output.put_line ('Número do RG inválido. O RG deve conter 9 dígitos');
end;
