-- drop existing table with name users if exists
drop table if exists users;

drop table if exists tasks;

-- create a table name users
create table
    users (
        id INTEGER PRIMARY KEY,
        name text not null,
        email text not null unique,
        updated_at text,
        created_at text
    );

create table
    tasks (
        id integer primary key,
        user_id integer,
        status text,
        description text,
        updated_at text,
        created_at text,
        foreign key (user_id) references users (id)
    );

-- insert data into the table
insert into
    users (name, email)
values
    ("John", "john@test.com");

insert into
    users (name, email)
values
    ("Jane", "jane@test.com");

insert into
    users (name, email)
values
    ("Jenny", "jenny@test.com");

insert into
    users (name, email)
values
    ("Amy", "amy@test.com");

insert into
    users (name, email)
values
    ("Sid", "sid@test.com");

-- add tasks for the user. The user_id 1 will be assigned to 1st entry in the table i.e. John
insert into
    tasks (user_id, description)
values
    (1, "Swim");

insert into
    tasks (user_id, description)
values
    (1, "Run");

insert into
    tasks (user_id, description)
values
    (2, "Groceries");

insert into
    tasks (user_id, description)
values
    (2, "Study");

-- Run following queries
-- 1. select * from tasks;
-- 2. select * from users;
-- 3. select name, email from users;
-- 4. select name, description from users join tasks on users.id = tasks.user_id;