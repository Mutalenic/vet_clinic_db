/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id SERIAL not null primary key,
    name varchar(100) not null,
    date_of_birth date not null,
    escape_attempts int not null,
    neutered boolean not null,
    weight_kg real not null
);

/*Add a column 'species' of type 'string' to the animals table*/

ALTER TABLE animals
ADD COLUMN species VARCHAR(100);

--owners table
CREATE TABLE owners(
id SERIAL PRIMARY KEY NOT NULL,
full_name VARCHAR(100) NOT NULL,
age INT NOT NULL
);

--species table
CREATE TABLE species (
    id SERIAL PRIMARY KEY NOT NULL, 
    name VARCHAR(100) NOT NULL
);


