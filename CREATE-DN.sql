-- create database
CREATE DATABASE cdmx_subway;

-- create tables
-- table lines
use cdmx_subway 
create table `lines` (
    `id` bigint(20) unsigned not null auto_increment,
    `name` varchar(15) not null,
    `color` varchar(15) not null,
    `created_at` timestamp not null default current_timestamp,
    `modified_at` timestamp not null default current_timestamp,
    primary key(id)
)
default charset=utf8mb4;

-- table trains
use cdmx_subway
create table `trains` (
    `serial_number` varchar(10) not null,
    `line_id`  bigint(20) unsigned not null,
    `type` tinyint(4) not null,
    `year` tinyint(4) not null,
    `created_at` timestamp not null default current_timestamp,
    `modified_at` timestamp not null default current_timestamp,
    primary key(serial_number),
    foreign key (`line_id`) references `lines`(`id`)
)
default CHARSET=utf8mb4;

-- table stations

use cdmx_subway
create table `stations` (
    `id` bigint(20) unsigned not null auto_increment,
    `train_id` varchar(10) not null,
    `line_id` bigint(20) unsigned not null,
    `name` varchar(25) not null,
    `created_at` timestamp not null default current_timestamp,
    `modified_at` timestamp not null default current_timestamp,
    primary key (id),
    foreign key (`train_id`) references `trains`(`serial_number`),
    foreign key (`line_id`) references `lines`(`id`)
)
default CHARSET=utf8mb4;

-- pivot table 
use cdmx_subway;
create table line_stations (
	id bigint(20) unsigned not null auto_increment,
    line_id bigint(20) unsigned not null,
    station_id bigint(20) unsigned not null,
    created_date timestamp not null default current_timestamp,
	modified_date timestamp not null default current_timestamp,
	primary key (id),
    
    constraint line_stations_line_id_foreign
    foreign key (line_id) references lines_ (id),
    constraint line_stations_station_id_foreign
    foreign key (station_id) references stations (id)
    
)
default charset=utf8mb4
collate=utf8mb4_unicode_ci;

create table locations(

	id bigint(20) unsigned not null auto_increment,
	station_id bigint(20) unsigned not null,
    location point not null,
    created_date timestamp not null default current_timestamp,
    modified_date timestamp not null default current_timestamp,
    
    primary key(id),
    constraint locations_stations
    foreign key (station_id) references stations(id)
    
);
select * from locations;

create table drivers (
	id bigint(20) unsigned not null auto_increment,
    name varchar(20),
    status boolean not null default false,
    created_at timestamp not null default current_timestamp,
	modified_at timestamp not null default current_timestamp,

    primary key (id)
)
default CHARSET=utf8mb4;

create table active_drivers (
	id bigint(20) unsigned not null auto_increment,
	driver_id bigint(20) unsigned not null,
    created_at timestamp not null default current_timestamp,
	modified_at timestamp not null default current_timestamp,

    primary key (id),
    foreign key (driver_id) references drivers (id)
)
default CHARSET=utf8mb4;


