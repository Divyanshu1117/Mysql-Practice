   SET SERVEROUTPUT ON;
declare
   a number(10);
   b number(10);
   c number(10);
begin
   a := 10;
   b := 20;
   c := a + b;
   dbms_output.put_line('Sum = ' || c);
exception
   when others then
      dbms_output.put_line('Some Error Occurred');
end;
/