-- calculating distances


select st_distance_sphere(
	point(-99.19593215, 19.49448847),
    point(-99.063367, 19.345135)
) / 1000 as distance;


select st_distance_sphere(
	point(-99.07262564, 19.4146103),
    point(-99.18803573, 19.4591369)
) / 1000 as distance;

select st_distance_sphere(
	point(-99.17122364, 19.44864628),
    point(-99.063367, 19.345135)
) / 1000 as distance;

select st_distance_sphere(
	point(-99.173702, 19.49039233),
    point(-99.063367, 19.345135)
) / 1000 as distance;

select st_distance_sphere(
	point(-99.173702, 19.49039233),
    point(-99.06114578, 19.4613523)
) / 1000 as distance;