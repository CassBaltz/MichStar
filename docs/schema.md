# Schema Information

## restaurants
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
name        | string    | not null
mich_review | text      | not null
head chef   | string    | not null
stars       | integer   | not null
genre       | string    | not null
website     | string    | not null

## images
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
description | string    | not null, foreign key (references users), indexed
title       | string    | not null
rest_id     | integer   | not null, foreign key

## reviews
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
user_id     | integer   | not null, foreign key (references users), indexed
rest_id     | integer   | not null, foreign key (references restaurant), indexed
date        | datetime  | not null
content     | text      | not null

## ratings
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
user_id     | integer   | not null, foreign key (references users), indexed
rest_id     | integer   | not null, foreign key (references notes), indexed
value       | integer   | not null

## reservation_options(setting available reservations to be used by the site)
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
rest_id     | string    | not null
day         | datetime  | not null
table_size  | integer   | not null
time_slot   | datetime  | not null
reserved    | boolean   | not null, default: false  

## reservations
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
res_opt_id  | integer   | not null, foreign key
user_id     | integer   | not null  

## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
username        | string    | not null, indexed, unique
password_digest | string    | not null
session_token   | string    | not null, indexed, unique
