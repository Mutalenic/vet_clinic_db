/* Populate database with sample data. */

 INSERT INTO animals 
 (name, date_of_birth,escape_attempts, neutered, weight_kg)
 VALUES
 ('Agumon', '03-02-2020', 0, true, 10.23),
 ('Gabumon', '2018-11-03', 2, true, 8),
 ('Pikachu', '2021-01-07', 1, false, 15.04),
 ('Devimon', '2017-05-12', 5, true, 11);


INSERT INTO animals 
(name, date_of_birth,escape_attempts, neutered, weight_kg) 
VALUES
('Charmander', '2020-02-08', 0, false, -11),
('Plantmon', '2021-11-15', 2, true, -5.7),
('Squirtle', '1993-04-02', 3, false, -12.13),
('Angemon', '2005-06-12', 1, true, -45),
('Boarmon', '2005-06-07', 7, true, 20.4),
('Blossom', '1998-10-13', 3, true, 17),
('Dito', '2022-05-14', 4, true, 22);

--Insert data into the owners table
INSERT INTO owners(full_name, age)
VALUES 
('Sam Smith', 34),
('Jennifer Orwell', 19),
('Bob', 45),
('Melody Pond', 77),
('Dean Winchester', 14),
('Jodie Whittaker', 38);

--Insert data into the species table
INSERT INTO species(name)
VALUES
('Pokemon'),
('Digimon');

--Modify species_id column in animals table so it includes the species_id value in animals ending with 'mon'
UPDATE animals
set species_id = (SELECT id from species where name = 'Digimon')
WHERE name LIKE '%mon';

--Modify species_id column in animals table so it includes the species_id value in animals not ending with 'mon'
UPDATE animals
set species_id = (SELECT id from species where name = 'Pokemon')
WHERE species_id IS NULL;

--Modify animals table to include owner information.Sam Smith set to own Agumon
UPDATE animals
set owner_id = (SELECT id from owners where full_name = 'Sam Smith')
WHERE name='Agumon';

--Jennifer Orwell owns Gabumon and Pikachu.
UPDATE animals
set owner_id = (SELECT id from owners where full_name = 'Jennifer Orwell')
WHERE name IN ('Gabumon','Pikachu');

--Bob owns Devimon and Plantmon
UPDATE animals
set owner_id = (SELECT id from owners where full_name = 'Bob')
WHERE name IN ('Devimon','Plantmon');

--Melody Pond owns Charmander,Squirtle and Blossom
UPDATE animals
set owner_id = (SELECT id from owners where full_name = 'Melody Pond')
WHERE name IN ('Charmander','Squirtle','Blossom');

--Dean Winchester owns Angemon and Boarmon
UPDATE animals
set owner_id = (SELECT id from owners where full_name = 'Dean Winchester')
WHERE name IN ('Angemon','Boarmon');

-- Insert data into vets table
INSERT INTO vets (name, age, date_of_graduation)
VALUES
('William Tatcher', 45, '2000-04-23'),
('Maisy Smith', 26, '2019-01-17'),
('Stephanie Mendez', 64, '1981-05-04'),
('Jack Harkness', 38, '2008-06-08');