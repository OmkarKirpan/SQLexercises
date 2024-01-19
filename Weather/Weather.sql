-- create a table name users

create table users(
   ...> id integer primary key,
   ...> name text not null,
   ...> timezone text,
   ...> updated_at text,
   ...> created_at text
   ...> );

-- -- insert data into the users table

-- insert into users(name, timezone) values("John", "PDT");
-- insert into users(name, timezone) values("Jenny", "EDT");
-- insert into users(name, timezone) values("Jane", "CDT");
-- insert into users(name, timezone) values("SOK", "IST");

-- -- Run queris to see the data and fetch the data from the users table
-- select * from users;
-- 1|John|PDT||
-- 2|Jenny|EDT||
-- 3|Jane|CDT||
-- 4|SOK|IST||

-- select * from users where timezone = "EDT";
-- 2|Jenny|EDT||

-- select count(*) from users where timezone = "IST";
-- 1