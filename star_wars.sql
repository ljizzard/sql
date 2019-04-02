DROP TABLE lightsabers;

DROP TABLE characters;

CREATE TABLE characters (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  age INT,
  darkside BOOLEAN
);

CREATE TABLE lightsabers(
id SERIAL PRIMARY KEY,
hilt_metal VARCHAR(255),
colour VARCHAR(255),
character_id INT REFERENCES characters(id)
);



INSERT INTO characters (name, age, darkside) VALUES ('Obi_Wan Kenobi', 27, false);
INSERT INTO characters (name, age, darkside) VALUES ('Anakin Skywalker', 19, false);
INSERT INTO characters (name, age, darkside) VALUES ('Darth Maul', 32, true);
INSERT INTO characters (name, darkside) VALUES ('Yoda', false);

UPDATE characters SET  (name, darkside ) = ('vader', true) WHERE name = 'Anakin Skywalker';

DELETE FROM characters WHERE name = 'Darth Maul';

INSERT INTO characters (name, age, darkside) VALUES ('Stormtrooper', 25, true);
INSERT INTO characters (name, age, darkside) VALUES ('Stormtrooper', 25, true);
INSERT INTO characters (name, age, darkside) VALUES ('Stormtrooper', 25, true);
INSERT INTO characters (name, age, darkside) VALUES ('Stormtrooper', 25, true);
INSERT INTO characters (name, age, darkside) VALUES ('Stormtrooper', 25, true);
UPDATE characters SET age = 26 WHERE id = 8;

INSERT INTO lightsabers (hilt-metal, colour, character_id) VALUES ('Palladium','red', 2);
INSERT INTO lightsabers (hilt-metal, colour, character_id) VALUES ('Gold','green', 4);
DELETE FROM characters WHERE id =4;
