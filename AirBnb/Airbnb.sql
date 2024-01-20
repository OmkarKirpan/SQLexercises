DROP TABLE if exists users;

DROP TABLE if exists homes;

DROP TABLE if exists users_homes;

CREATE TABLE
    users (
        id integer PRIMARY KEY,
        name text not null,
        email text not null unique,
        updated_at text,
        created_at text default CURRENT_TIMESTAMP
    );

CREATE TABLE
    homes (
        id integer PRIMARY key,
        address text not null,
        price_per_night int not null,
        updated_at text,
        created_at text DEFAULT CURRENT_TIMESTAMP
    );

CREATE TABLE
    users_homes (
        id integer PRIMARY KEY,
        home_id integer,
        user_id integer,
        role text,
        start text,
        end text,
        updated_at text,
        created_at text default current_timestamp
    );

insert into
    users (name, email)
values
    ("John", "john@test.com");

insert into
    users (name, email)
values
    ("Jenny", "jenny@test.com");

insert into
    users (name, email)
values
    ("Bob", "bob@test.com");

insert into
    homes (address, price_per_night)
values
    ("123 main st", 60);

insert into
    homes (address, price_per_night)
values
    ("234 main st", 70);

insert into
    homes (address, price_per_night)
values
    ("345 main st", 40);

insert into
    users_homes (home_id, user_id, start, end)
VALUES
    (
        1,
        1,
        "owner",
        "2024-10-01 00:00:00",
        "1995-10-01 00:00:00"
    );

insert into
    users_homes (home_id, user_id, start, end)
VALUES
    (
        2,
        2,
        "owner",
        "2024-10-01 00:00:00",
        "1995-10-01 00:00:00"
    );

insert into
    users_homes (home_id, user_id, start, end)
VALUES
    (
        3,
        2,
        "owner",
        "2024-10-01 00:00:00",
        "1995-10-01 00:00:00"
    );

insert into
    users_homes (home_id, user_id, start, end)
VALUES
    (
        2,
        1,
        "visitor",
        "2024-10-05 12:00:00",
        "2024-10-06 12:00:00"
    );

insert into
    users_homes (home_id, user_id, start, end)
VALUES
    (
        31,
        1,
        "visitor",
        "2024-10-07 00:00:00",
        "2024-10-08 00:00:00"
    );

insert into
    users_homes (home_id, user_id, start, end)
VALUES
    (
        3,
        3,
        "visitor",
        "2024-10-02 00:00:00",
        "2024-10-03 00:00:00"
    );