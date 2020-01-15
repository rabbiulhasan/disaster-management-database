declare 
   aomgov DONATION.AOM_FROM_GOV%type;
   area_id DONATION.AREA_ID%type;
   
   cursor don_money is
      select area_id,aom_from_gov from donation where area_id='CHI123709';
      
 begin 
  open don_money;
    loop
         fetch don_money into area_id,aomgov ;
         exit when don_money%notfound;
         dbms_output.put_line('area_id : ' || area_id || ' donation from gov : ' || aomgov || 'tk') ;
         end loop;
         close don_money;
 end;
 
 show error;
      