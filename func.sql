set serveroutput on

create or REPLACE function f1(year in integer, name in varchar2 ) return number IS
afp Disaster_area_details.affected_people%type;

begin
select sum(affected_people) into afp from Disaster_area_details where disaster_year=year and disaster_name=name;
return afp;
end;
/
show ERRORS PROCEDURE f1;

