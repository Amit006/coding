declare
    var_row number(10);
    begin
    update emp set salary=salary+(salary*0.2) where deptno=10;
    	if sql%found then
    			var_row:=sql%rowcount;
    			dbms_output.put_line('salaries for'||var_row||'employee are updated');
    			end if;
    	end;
    /