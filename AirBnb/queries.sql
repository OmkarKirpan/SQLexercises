select * from homes where price_per_night < 45;

select * from homes limit 2,2;

select * from homes order by price_per_night;

select count(*) from  users_homes join homes on homes.id = users_homes.home_id where homes.address = "234 main st" and users_homes.role = "visitors";


select count(*) from  users_homes join homes on homes.id = users_homes.home_id where homes.address = "345 main st" and users_homes.role = "visitor";

select address, start, end from homes join users_homes on users_homes.home_id = homes.id join users on users_homes.user_id = users.id where users.name = "John" and users_homes.role = "visitor";
