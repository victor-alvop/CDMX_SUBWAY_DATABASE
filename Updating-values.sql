-- Updating some values

update stations
set name="Lázaro Cardenas"
where id=1329;

update stations 
set name="Ferrería"
where id=1330;
select *
from stations
limit 10;

update stations 
set name="Pantitlán"
where id=1331;
select *
from stations
limit 10;

update stations 
set name="Tacuba"
where id=1332;
select *
from stations
limit 10;


update stations 
set name="Martín Carrera"
where id=1333;
select *
from stations
limit 10;

-- to check the trigger update_driver_status
update drivers
set `status` = 1
where id = 4;
select * from drivers;