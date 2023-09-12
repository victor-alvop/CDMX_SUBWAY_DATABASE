use cdmx_subway;

-- creating triggers to save modified date
create trigger update_modified_at
before update 
on lines_
for each row
set new.modified_at = now();

--
create trigger update_modified_at_ls
before update 
on line_stations
for each row
set new.modified_date = now();

--
create trigger update_modified_at_loc
before update 
on locations
for each row
set new.modified_date = now();


--
create trigger update_modified_at_stat
before update 
on stations
for each row
set new.modified_at = now();

--
create trigger update_modified_at_trains
before update 
on trains
for each row
set new.modified_at = now();


--
delimiter //
create trigger update_driver_status
after update 
on drivers
for each row

begin 

	if new.status = 1 then 
		insert into active_drivers (driver_id)
		values (new.id);
	else 
		delete from active_drivers where driver_id = new.id;
	end if;

end; //
delimiter ;
