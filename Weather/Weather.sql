-- create a table name users
create table
   users (
      id integer primary key,
      name text not null,
      timezone text,
      updated_at text,
      created_at text
   );

-- -- insert data into the users table
insert into
   users (name, timezone)
values
   ("John", "PDT");

insert into
   users (name, timezone)
values
   ("Jenny", "EDT");

insert into
   users (name, timezone)
values
   ("Jane", "CDT");

insert into
   users (name, timezone)
values
   ("SOK", "IST");

-- -- Run queris to see the data and fetch the data from the users table
select
   *
from
   users;

-- select * from users where timezone = "EDT";
-- select count(*) from users where timezone = "IST";