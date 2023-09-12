-- to see wich lines we have in line_stations database
select lines_.id, lines_.name, lines_.color, line_stations.station_id 
from lines_
inner join line_stations
on lines_.id = line_stations.line_id;


-- to see if a train doesn´t have a line
select trains.serial_number, trains.type, lines_.name, lines_.color
from trains 
left join lines_
on trains.line_id = lines_.id;

-- to see which lines doesn´t have stations yet
select lines_.id, lines_.name, lines_.color, line_stations.line_id
from lines_
left join line_stations
on lines_.id = line_stations.line_id;