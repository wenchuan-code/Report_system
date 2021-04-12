-- 创建demand表序列
create sequence seq_demand
start with 1
increment by 1;
--创建触发器   调不同，放弃
create or replace trigger tri_demand   
before insert on demand
  referencing old as old new as new
  for each row
  begin
   select seq_demand.nextval
   into :new.ID
     from dual;
  end tri_demand;
