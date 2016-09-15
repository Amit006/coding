declare
i number(10);
j number(10);
f number(10);
begin
i:=2;
dbms_output.put_line('prime number upto 1-10');
 	while(i<10) loop
 	    f:=0;
 	    j:=2;
 	    while(j<i) loop
 	    	if (i mod j=0) then
 	    			f:=1;
 	    			exit;
 	    		j:=j+1;
 	    	end if;
 	     end loop;
 	    if(f=0) then
 	     	dbms_output.put_line(i);
 	     end if;
 	    i:=i+1;
 	 end loop;
end;
/
