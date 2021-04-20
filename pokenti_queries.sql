DROP TABLE IF EXISTS evolutions;
DROP TABLE IF EXISTS party_pokemons;
DROP TABLE IF EXISTS pc_boxs;
DROP TABLE IF EXISTS stats;
DROP TABLE IF EXISTS pokemons;
DROP TABLE IF EXISTS types;

CREATE TABLE types (
	id_type INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    type VARCHAR(10) NOT NULL
   
);

INSERT INTO types (type) VALUES ('Bug');
INSERT INTO types (type) VALUES ('Dark');
INSERT INTO types (type) VALUES ('Dragon');
INSERT INTO types (type) VALUES ('Electric');
INSERT INTO types (type) VALUES ('Fairy');
INSERT INTO types (type) VALUES ('Fighting');
INSERT INTO types (type) VALUES ('Fire');
INSERT INTO types (type) VALUES ('Flying');
INSERT INTO types (type) VALUES ('Ghost');
INSERT INTO types (type) VALUES ('Grass');
INSERT INTO types (type) VALUES ('Ground');
INSERT INTO types (type) VALUES ('Ice');
INSERT INTO types (type) VALUES ('Normal');
INSERT INTO types (type) VALUES ('Poison');
INSERT INTO types (type) VALUES ('Psychic');
INSERT INTO types (type) VALUES ('Rock');
INSERT INTO types (type) VALUES ('Steel');
INSERT INTO types (type) VALUES ('Water');

CREATE TABLE pokemons (
	id_pokemon INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(16) NOT NULL,
    gender CHAR(1) NOT NULL,
    description TEXT,
    ot VARCHAR(8) NOT NULL,
    evolution BOOLEAN NOT NULL,
    shiny BOOLEAN NOT NULL,
    image VARCHAR(24) NOT NULL,
    id_type INT UNSIGNED NOT NULL,
    	FOREIGN KEY (id_type) REFERENCES types (id_type)
);

INSERT INTO pokemons(name, gender, description, ot, evolution, shiny, image, id_type) 
VALUES ('Garchomp', 'M', 'mach', 'Sara', 0, 1, 'garchomp.png', 3);
INSERT INTO pokemons(name, gender, description, ot, evolution, shiny, image, id_type) 
VALUES ('Darkrai', 'M', 'darkness', 'Sara', 0, 0, 'darkrai.png', 2);
INSERT INTO pokemons(name, gender, description, ot, evolution, shiny, image, id_type) 
VALUES ('Vulpix', 'F', 'fox', 'Sara', 1, 0, 'vulpix.png', 7);
INSERT INTO pokemons(name, gender, description, ot, evolution, shiny, image, id_type) 
VALUES ('Togepi', 'M', 'ball', 'Sara', 1, 0, 'togepi.png', 5);
INSERT INTO pokemons(name, gender, description, ot, evolution, shiny, image, id_type) 
VALUES ('Riolu', 'M', 'aura', 'Sara', 1, 0, 'riolu.png', 6);
INSERT INTO pokemons(name, gender, description, ot, evolution, shiny, image, id_type) 
VALUES ('Milotic', 'F', 'tender', 'Sara', 0, 0, 'milotic.png', 18);
INSERT INTO pokemons(name, gender, description, ot, evolution, shiny, image, id_type) 
VALUES ('Spiritomb', 'F', 'forbidden', 'Sara', 0, 1, 'spiritomb.png', 9);
INSERT INTO pokemons(name, gender, description, ot, evolution, shiny, image, id_type) 
VALUES ('Glalie', 'M', 'face', 'Sara', 0, 0, 'glalie.png', 12);
INSERT INTO pokemons(name, gender, description, ot, evolution, shiny, image, id_type) 
VALUES ('Volbeat', 'M', 'firefly', 'Sara', 0, 0, 'volbeat.png', 1);
INSERT INTO pokemons(name, gender, description, ot, evolution, shiny, image, id_type) 
VALUES ('Luxray', 'M', 'gleameyes', 'Sara', 0, 0, 'luxray.png', 4);
INSERT INTO pokemons(name, gender, description, ot, evolution, shiny, image, id_type) 
VALUES ('Nosepass', 'F', 'compass', 'Sara', 1, 0, 'nosepass.png', 16);
INSERT INTO pokemons(name, gender, description, ot, evolution, shiny, image, id_type) 
VALUES ('Skitty', 'F', 'cat', 'Sara', 1, 0, 'skitty.png', 13);
INSERT INTO pokemons(name, gender, description, ot, evolution, shiny, image, id_type) 
VALUES ('Roserade', 'F', 'flower', 'Sara', 0, 0, 'roserade.png', 10);
INSERT INTO pokemons(name, gender, description, ot, evolution, shiny, image, id_type) 
VALUES ('Durant', 'M', 'ant', 'Sara', 0, 0, 'durant.png', 17);
INSERT INTO pokemons(name, gender, description, ot, evolution, shiny, image, id_type) 
VALUES ('Sandile', 'M', 'crocodile', 'Sara', 1, 0, 'crocodile.png', 11);
INSERT INTO pokemons(name, gender, description, ot, evolution, shiny, image, id_type) 
VALUES ('Staraptor', 'M', 'predator', 'Sara', 0, 0, 'staraptor.png', 8);

CREATE TABLE stats (
	id_stat INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `level` INT NOT NULL,
    xp INT NOT NULL,
    hp INT NOT NULL,
    attack INT NOT NULL,
    defense INT NOT NULL,
    sp_atk INT NOT NULL,
    sp_def INT NOT NULL,
    speed INT NOT NULL,
    ability VARCHAR(10) NOT NULL,
    id_pokemon INT UNSIGNED NOT NULL,
    	FOREIGN KEY (id_pokemon) REFERENCES pokemons(id_pokemon)
);
INSERT INTO stats (`level`, xp, hp, attack, defense, sp_atk, sp_def, speed, ability, id_pokemon)
VALUES (85,15000,300,250,200,255,215,195,'Pressure',1);
INSERT INTO stats (`level`, xp, hp, attack, defense, sp_atk, sp_def, speed, ability, id_pokemon)
VALUES (100,25000,400,350,310,300,315,295,'Bad Dreams',2);
INSERT INTO stats (`level`, xp, hp, attack, defense, sp_atk, sp_def, speed, ability, id_pokemon)
VALUES (25,100,35,28,31,25,31,31,'Intimidate',3);
INSERT INTO stats (`level`, xp, hp, attack, defense, sp_atk, sp_def, speed, ability, id_pokemon)
VALUES (10,15,20,19,20,20,20,19,'Cute',4);
INSERT INTO stats (`level`, xp, hp, attack, defense, sp_atk, sp_def, speed, ability, id_pokemon)
VALUES (39,60,45,36,40,43,40,60,'Pressure',5);
INSERT INTO stats (`level`, xp, hp, attack, defense, sp_atk, sp_def, speed, ability, id_pokemon)
VALUES (50,100,170,100,99,108,100,120,'Cure',6);
INSERT INTO stats (`level`, xp, hp, attack, defense, sp_atk, sp_def, speed, ability, id_pokemon)
VALUES (60,400,298,160,152,165,160,201,'Pressure',7);
INSERT INTO stats (`level`, xp, hp, attack, defense, sp_atk, sp_def, speed, ability, id_pokemon)
VALUES (40,61,45,38,44,44,44,65,'Intimidate',8);
INSERT INTO stats (`level`, xp, hp, attack, defense, sp_atk, sp_def, speed, ability, id_pokemon)
VALUES (20,20,30,21,19,22,20,25,'Static',9);
INSERT INTO stats (`level`, xp, hp, attack, defense, sp_atk, sp_def, speed, ability, id_pokemon)
VALUES (49,99,171,103,99,100,100,120,'Static',10);
INSERT INTO stats (`level`, xp, hp, attack, defense, sp_atk, sp_def, speed, ability, id_pokemon)
VALUES (57,200,199,150,180,151,181,100,'Steadfast',11);
INSERT INTO stats (`level`, xp, hp, attack, defense, sp_atk, sp_def, speed, ability, id_pokemon)
VALUES (15,30,20,19,19,19,19,25,'Cure',12);
INSERT INTO stats (`level`, xp, hp, attack, defense, sp_atk, sp_def, speed, ability, id_pokemon)
VALUES (60,300,230,210,203,211,205,215,'Cure',13);
INSERT INTO stats (`level`, xp, hp, attack, defense, sp_atk, sp_def, speed, ability, id_pokemon)
VALUES (31,80,33,30,29,31,31,29,'Steadfast',14);
INSERT INTO stats (`level`, xp, hp, attack, defense, sp_atk, sp_def, speed, ability, id_pokemon)
VALUES (25,45,49,35,38,37,40,33,'Steadfast',15);
INSERT INTO stats (`level`, xp, hp, attack, defense, sp_atk, sp_def, speed, ability, id_pokemon)
VALUES (70,400,220,168,160,170,156,200,'Intimidate',16);

CREATE TABLE pc_boxs (
	id_pc_box INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_pokemon INT UNSIGNED NOT NULL,
    id_stat INT UNSIGNED NOT NULL,
    	FOREIGN KEY (id_pokemon) REFERENCES pokemons (id_pokemon),
    	FOREIGN KEY (id_stat) REFERENCES stats (id_stat)
);
INSERT INTO pc_boxs(id_pokemon, id_stat) VALUES (3,3);
INSERT INTO pc_boxs(id_pokemon, id_stat) VALUES (4,4);
INSERT INTO pc_boxs(id_pokemon, id_stat) VALUES (5,5);
INSERT INTO pc_boxs(id_pokemon, id_stat) VALUES (8,8);
INSERT INTO pc_boxs(id_pokemon, id_stat) VALUES (9,9);
INSERT INTO pc_boxs(id_pokemon, id_stat) VALUES (10,10);
INSERT INTO pc_boxs(id_pokemon, id_stat) VALUES (11,11);
INSERT INTO pc_boxs(id_pokemon, id_stat) VALUES (12,12);
INSERT INTO pc_boxs(id_pokemon, id_stat) VALUES (14,14);
INSERT INTO pc_boxs(id_pokemon, id_stat) VALUES (15,15);

CREATE TABLE party_pokemons (
	id_party_pokemon INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
   	id_pokemon INT UNSIGNED NOT NULL,
	id_stat INT UNSIGNED NOT NULL,
    		FOREIGN KEY (id_pokemon) REFERENCES pokemons (id_pokemon),
		FOREIGN KEY (id_stat) REFERENCES stats (id_stat)
);
INSERT INTO party_pokemons(id_pokemon, id_stat) VALUES (1,1);
INSERT INTO party_pokemons(id_pokemon, id_stat) VALUES (2,2);
INSERT INTO party_pokemons(id_pokemon, id_stat) VALUES (7,7);
INSERT INTO party_pokemons(id_pokemon, id_stat) VALUES (16,16);
INSERT INTO party_pokemons(id_pokemon, id_stat) VALUES (13,13);
INSERT INTO party_pokemons(id_pokemon, id_stat) VALUES (6,6);

CREATE TABLE evolutions (
	id_evolution INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    	at_level INT NOT NULL,
    	id_pokemon INT UNSIGNED NOT NULL,
    		FOREIGN KEY (id_pokemon) REFERENCES pokemons (id_pokemon)
);
INSERT INTO evolutions(at_level, id_pokemon) VALUES (25,3);
INSERT INTO evolutions(at_level, id_pokemon) VALUES (25,4);
INSERT INTO evolutions(at_level, id_pokemon) VALUES (40,4);
INSERT INTO evolutions(at_level, id_pokemon) VALUES (50,5);
INSERT INTO evolutions(at_level, id_pokemon) VALUES (60,11);
INSERT INTO evolutions(at_level, id_pokemon) VALUES (20,12);
INSERT INTO evolutions(at_level, id_pokemon) VALUES (29,15);
INSERT INTO evolutions(at_level, id_pokemon) VALUES (40,15);

DELIMITER ;

DROP PROCEDURE IF EXISTS pcboxtoparty;

DELIMITER //
CREATE PROCEDURE pcboxtoparty (IN idpartypokemon INT UNSIGNED,
                               	OUT idpokemon INT UNSIGNED,
                               OUT idstat INT UNSIGNED)
BEGIN
	SELECT party_pokemons.id_party_pokemon,party_pokemons.id_pokemon,party_pokemons.id_stat INTO idpartypokemon, idpokemon,idstat
    FROM party_pokemons
    WHERE party_pokemons.id_pokemon=idpokemon
END//
DELIMITER ;

DELIMITER ;

DROP PROCEDURE IF EXISTS partytopcbox;

DELIMITER //
CREATE PROCEDURE partytopcbox (IN idpcbox INT UNSIGNED,
                              OUT idpokemon INT UNSIGNED,
                              OUT idstat INT UNSIGNED)
BEGIN
	SELECT pc_boxs.id_pc_box, pc_boxs.id_pokemon, pc_boxs.id_stat INTO idpcbox, idpokemon,idstat
    FROM pc_boxs
    WHERE pc_boxs.id_pokemon=idpokemon
END//
DELIMITER ;


DELIMITER ;

DROP FUNCTION IF EXISTS potion;

DELIMITER //

CREATE FUNCTION potion (hp INT UNSIGNED, potion INT UNSIGNED) RETURNS INT UNSIGNED
BEGIN
	RETURN hp + potion;
END //

DELIMITER ;