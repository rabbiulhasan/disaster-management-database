set serveroutput on;

create or replace procedure p1(year in integer,tm out integer)
is
begin
select sum(lom_in_crore) into tm from Disaster_area_details where disaster_year=year;
end;
/
show error;

