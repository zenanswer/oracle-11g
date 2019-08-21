create table tas_11g_dbready (
  createtime timestamp default systimestamp
);

insert into tas_11g_dbready(createtime) values(systimestamp);

commit;

