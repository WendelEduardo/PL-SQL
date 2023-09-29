create or replace function valida_titulo_eletor (v_titulo varchar2)
return varchar2 is
    v_sequencial varchar2(20) := SUBSTR(v_titulo, 1, length(v_titulo) - 4);
    v_uf varchar2(2) := SUBSTR(v_titulo, length(v_titulo) - 3, 2);
    v_dv varchar2(2) := SUBSTR(v_titulo, length(v_titulo) - 1, 2);
    v_dv_cal VARCHAR2(2);
    
    v_aux number;
    v_soma number := 0;
    
    e_titulo_invalido exception;
begin
    if length(v_titulo) > 12 then
        raise e_titulo_invalido;
    end if;
     
    v_aux := 10 - length(v_sequencial);
     
    for i in 1..length(v_sequencial) loop
        v_soma := v_soma + SUBSTR(v_sequencial, i, 1) * v_aux;
        v_aux := v_aux + 1;
    end loop;
     
    v_aux := mod(v_soma, 11);
     
    if (v_aux = 10) then
        v_aux := 0;
    end if;
    
    if (v_uf = '01' or v_uf = '02') then
        if (v_aux = 0) then
            v_aux := 1;
        end if;
    end if;
     
    v_dv_cal := v_aux;
     
    v_aux := 7;
    v_soma := 0;
    
    for i in 1..3 loop
        if(i <> 3) then
            v_soma := v_soma + SUBSTR(v_uf, i, 1) * v_aux;
        else
            v_soma := v_soma + SUBSTR(v_dv, 1, 1) * v_aux;
        end if;
        v_aux := v_aux + 1;
    end loop;
    
    v_aux := mod(v_soma, 11);
     
    if (v_aux = 10) then
        v_aux := 0;
    end if;
    
    if (v_uf = '01' or v_uf = '02') then
        if (v_aux = 0) then
            v_aux := 1;
        end if;
    end if;
    
    v_dv_cal := v_dv_cal || v_aux;
    
    if(v_dv = v_dv_cal) then
        return 'Titulo de Eleitor Válido';
    else
        return 'Titulo de Eleitor Inválido';
    end if;
    
EXCEPTION 
   WHEN e_titulo_invalido THEN
   return 'Titulo de eleitor inválido. O titulo de eleitor deve conter no maximo 12 dígitos';
end;
/


EXECUTE dbms_output.put_line(valida_titulo_eletor(4356870906));
EXECUTE dbms_output.put_line(valida_titulo_eletor(123456780396));
EXECUTE dbms_output.put_line(valida_titulo_eletor(4706702601670));
EXECUTE dbms_output.put_line(valida_titulo_eletor(4356870905));
EXECUTE dbms_output.put_line(valida_titulo_eletor(123456780394));