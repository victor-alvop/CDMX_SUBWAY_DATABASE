-- creating a procedure to calculate distance between two points

use cdmx_subway;

delimiter //
create procedure calculate_distance(
	in station_one point,
    in station_two point,
    in meters boolean
)
begin 

 if meters then 
	select st_distance_sphere(station_one, station_two)
	as distances;
else 
    select st_distance_sphere(station_one, station_two)/1000
	as distances;
end if;
    
end //
delimiter ;

-- calling procedure
call calculate_distance(
	point(-99.07262564, 19.4146103),
    point(-99.18803573, 19.4591369),
    false
);