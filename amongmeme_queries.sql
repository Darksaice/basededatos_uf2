--Tablas de AmongMeme
DROP TABLE IF EXISTS characters_items;
DROP TABLE IF EXISTS items;
DROP TABLE IF EXISTS items_types;

DROP TABLE IF EXISTS characters_weapons;
DROP TABLE IF EXISTS weapons;
DROP TABLE IF EXISTS weapons_types;

DROP TABLE IF EXISTS characters_armors;
DROP TABLE IF EXISTS armors;
DROP TABLE IF EXISTS armors_types;

DROP TABLE IF EXISTS stats;
DROP TABLE IF EXISTS skills;
DROP TABLE IF EXISTS characters;

CREATE TABLE characters(
	id_character INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(24) NOT NULL,
	age INT NOT NULL,
	hp INT NOT NULL,
	gender CHAR(1) NOT NULL,
	style CHAR(1) NOT NULL,
	mana INT NOT NULL,
	class CHAR(2) NOT NULL,
	race CHAR(2) NOT NULL,
	xp INT NOT NULL,
	level INT NOT NULL,
	height FLOAT NOT NULL
);
CREATE TABLE stats(
	id_stat INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	intel INT NOT NULL,
	strenght INT NOT NULL,
	charisma INT NOT NULL,
	`level` INT NOT NULL,
	id_character INT UNSIGNED NOT NULL,
	FOREIGN KEY (id_character) REFERENCES characters(id_character)
);

CREATE TABLE skills(
    id_skill INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    skill VARCHAR(24) NOT NULL,
    description TEXT,
    icon VARCHAR(16)
);

CREATE TABLE items_types(
    id_item_type INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    type VARCHAR(16) NOT NULL
);
CREATE TABLE items(
    id_item INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	item VARCHAR(24) NOT NULL,
    cost INT NOT NULL,
    consumable BOOLEAN NOT NULL,
    tradeable BOOLEAN NOT NULL,
    weight FLOAT NOT NULL,
    image VARCHAR(32),
    description TEXT,
    id_item_type INT UNSIGNED NOT NULL,
	FOREIGN KEY (id_item_type) REFERENCES items_types(id_item_type)
	);

CREATE TABLE characters_items (
    id_character_item INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_character INT UNSIGNED NOT NULL,
    id_item INT UNSIGNED NOT NULL,
	FOREIGN KEY (id_character) REFERENCES characters(id_character),
	FOREIGN KEY (id_item) REFERENCES items(id_item)
    );
CREATE TABLE weapons_types(
    id_weapon_type INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    type VARCHAR(24) NOT NULL
);
CREATE TABLE weapons(
	id_weapon INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    weapon VARCHAR(16) NOT NULL,
    damage INT NOT NULL,
    quality INT NOT NULL,
    rarity INT NOT NULL,
    weight INT NOT NULL,
    durability INT NOT NULL,
    `range` INT NOT NULL,
    id_weapon_type INT UNSIGNED NOT NULL,
	FOREIGN KEY (id_weapon_type) REFERENCES weapons_types(id_weapon_type)
);
CREATE TABLE armors_types (
	id_armor_type INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    type VARCHAR(24) NOT NULL
);
CREATE TABLE armors(
	id_armor INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    armor VARCHAR(16) NOT NULL,
    defence INT NOT NULL,
    durability INT NOT NULL,
    weight INT NOT NULL,
    quality INT NOT NULL,
    rarity INT NOT NULL,
    toughness INT NOT NULL,
    id_armor_type INT UNSIGNED NOT NULL,
	FOREIGN KEY (id_armor_type) REFERENCES armors_types(id_armor_type)
);
CREATE TABLE characters_weapons(
	id_character_weapon INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_character INT UNSIGNED NOT NULL,
    id_weapon INT UNSIGNED NOT NULL,
	FOREIGN KEY (id_character) REFERENCES characters(id_character),
	FOREIGN KEY (id_weapon) REFERENCES weapons(id_weapon)
);
CREATE TABLE characters_armors(
	id_character_armor INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_character INT UNSIGNED NOT NULL,
    id_armor INT UNSIGNED NOT NULL,
	FOREIGN KEY (id_character) REFERENCES characters(id_character),
	FOREIGN KEY (id_armor) REFERENCES armors(id_armor)
);
CREATE TABLE users(
	id_user INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	username VARCHAR(24) NOT NULL,
    name VARCHAR(24) NOT NULL,
	subname VARCHAR(24) NOT NULL,
    password CHAR(35) NOT NULL,
    birthdate DATE NOT NULL,
    email VARCHAR (32) NOT NULL,
    register DATE NOT NULL
    
);
----------BUCLES------------
DELIMITER //
CREATE PROCEDURE doiterate (p1 INT)
BEGIN
	label1: LOOP
	SET p1 = p1 + 1;
    IF p1 < 10 THEN
    ITERATE label1;
    END IF;
    LEAVE label1;
    END LOOP label1;
    SET @x = p1;
END //

DELIMITER ;
---------funcion insertar--------
DELIMITER //

CREATE FUNCTION inster_users (id_user INT UNSIGNED) RETURNS INT
BEGIN
	INSERT INTO users(username,name,subname,password,birthdate,email,register) VALUES ('patata', 'Paco','Lopez',MD5('contraseña'),0000-00-00,'olakease@adios.com',NOW());

END //

DELIMITER ;