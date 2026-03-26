create table books(
id smallserial PRIMARY KEY,
title varchar(100) NOT NULL,
author_id integer REFERENCES authors(id),
genre varchar(50),
price numeric(5,2),
publish_year integer
 );
