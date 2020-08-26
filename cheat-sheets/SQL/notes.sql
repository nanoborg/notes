SQLBolt - website for SQL syntax


PostgreSQL - database

https://postgresapp.com/

terminal psql <--- program that talks to the database.

client -------> 

create database school;

--   create data base
create database goodfoodhunting;

create table dishes (
    id serial primary key,
    name text
);


insert into dishes (name, image_url) values ('cake', 'https://i.pinimg.com/originals/04/a7/05/04a705b1ebc7d46ef804a28f9906b577.jpg');
insert into dishes (name, image_url) values ('pudding', 'https://i.pinimg.com/originals/04/a7/05/04a705b1ebc7d46ef804a28f9906b577.jpg');
insert into dishes (name, image_url) values ('ribs', 'https://i.pinimg.com/originals/04/a7/05/04a705b1ebc7d46ef804a28f9906b577.jpg');


alter table dishes add column image_url text;

insert into dishes (name, image_url) values ('r');

delete from dishes;

update planets SET image_url = "https://hmxearthscience.com/Sammartano/DYNAMIC%20CRUST%2013/Earth's%20Interior%20TEACHER.key/Data/droppedImage-small-4.png", diameter = 12742, distance = 150000000, mass = 5.972e+24, moon_count = 1 where id = 1;