-- nested queries
-- adding values to lines_stations table

use cdmx_subway;
insert into line_stations (line_id, station_id)
values
	(
    
    (select id 
    from lines_
    where name="Line 9"),
    
    (select id
    from stations
    where name="Lázaro Cardenas")
    
    );
select * from line_stations;


--
use cdmx_subway;

insert into line_stations (line_id, station_id)
values (
	(select id from lines_
    where name = "Line 1"),
    
    (select id from stations
    where name="Juanacatlán")
);
select * from line_stations;
 

 --
use cdmx_subway;
insert into line_stations (line_id, station_id)
values (
	(select id from lines_
    where name = "Line 1"),
    
    (select id from stations
    where name="Observatorio")
);
select * from line_stations;

--
use cdmx_subway;

insert into line_stations (line_id, station_id)
values (
	(select id 
    from lines_
    where name = "Line 1"),
    (select id
    from stations
    where name ="Sevilla")
);
select * from line_stations;

--
use cdmx_subway;

insert into line_stations (line_id, station_id)
values (
	(select id 
    from lines_
    where name = "Line 1"),
    (select id
    from stations
    where name = "CUAUHTÉMOC")
);
select * from line_stations;

use cdmx_subway;

insert into line_stations (line_id, station_id)
values (
	(select id
    from lines_
    where name = "Line 1"),
	(select id 
    from stations
    where name = "Salto del agua")

);
select * from line_stations;

--
use cdmx_subway;

insert into line_stations(line_id, station_id)
values(
	(select id
    from lines_
    where name = "Line 1"),
    (select id
    from stations
    where name = "Cuauhtémoc")
);
select * from line_stations;

-- 
use cdmx_subway;

insert into line_stations (line_id, station_id)
values (
	(select id 
    from lines_
    where name = "Line 1"),
    (select id
    from stations
    where name = "Salto del agua")
);
select * from line_stations;

--
use cdmx_subway; 

insert into line_stations (line_id, station_id)
values (
	(select id 
    from lines_
    where name ="Line 1"),
    (select id
    from stations
    where name = "Pino Suárez")

);
select * from line_stations;