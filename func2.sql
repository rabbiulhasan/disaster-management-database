set serveroutput on

DECLARE
   afp Disaster_area_details.affected_people%type;

begin
      afp:=f1('1991', 'TSUNAMI');
      DBMS_OUTPUT.PUT_LINE('Total affected people in = '||afp);
end;
/