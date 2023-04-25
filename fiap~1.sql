


declare 
    v_ei number(5,2) := 10;
    v_ln varchar(50) := 'Chispita';
    v_sal number(10, 2) not null := 0;
    c_tax constant integer := 1;
begin
    dbms_output.put_line('Código do funcionário: ' || v_ei);
    v_ei := 20;
    dbms_output.put_line('Código do funcionário: ' || v_ei);
    dbms_output.put_line('Nome do funcionário: ' || v_ln);
end;
/