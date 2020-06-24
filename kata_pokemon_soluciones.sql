-- 1) Crea una tabla con el id, nombre, nivel, ataque y defensa

CREATE TABLE pokemons_478p (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    level INT NULL,
    attack INT NULL,
    defence INT NULL
);

    -- Opcional: Que el nivel empiece en 1, y además tenga fecha de nacimiento

    CREATE TABLE pokemons_478p (
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(20) NOT NULL,
        level INT NULL DEFAULT 1,
        attack INT NULL,
        defence INT NULL,
        birth DATE NULL
    );

-- 2) Inserta 3 pokemons en la tabla creada

INSERT INTO pokemons_478p (name, attack, defence, birth)
  VALUES ('Bulbasaur', 10, 20, '2020-04-30');
INSERT INTO pokemons_478p (name, attack, defence, birth)
  VALUES ('Koffing', 10, 20, '2020-04-30');

    -- Opcional: 1 de ellos que empiece en nivel 3, y todos con su fecha de nacimiento

    INSERT INTO pokemons_478p (name, level, attack, defence, birth)
      VALUES ('Pikachu', 3, 10, 20, '2020-04-30');

-- 3) Selecciona todos los pokemons con todos sus datos

SELECT *
  FROM pokemons_478p;

-- 4) Modifica el nivel de un pokemon a tu elección poniéndoselo a nivel 4

UPDATE pokemons_478p
  SET level = 4
  WHERE name = 'Bulbasaur';

    -- Opcional: Modifica el nivel de otro pokemon, incrementa en 1 el que ya tuviera antes

    UPDATE pokemons_478p
      SET level += 1
      WHERE name = 'Pikachu';

-- 5) Elimina aquellos pokemons que tengan un nivel menor que 2

DELETE FROM pokemons_478p
  WHERE level < 2;

    -- Opcional: Elimina aquellos pokemons cuya suma de ataque y defensa sea mayor que 20

    DELETE FROM pokemons_478p
      WHERE (attack + defence) > 20;

-- 6) Selecciona solo el nivel y el nombre de todos los pokemons

SELECT level, name
  FROM pokemons_478p;

-- 7) Selecciona solo el nivel y el nombre de todos los pokemons, ordenados por nivel de mayor a menor

SELECT level, name
  FROM pokemons_478p
  ORDER BY level DESC;

-- 8) Selecciona el nombre de aquellos pokemons cuyo nivel es mayor que 2

SELECT name
  FROM pokemons_478p
  WHERE level > 2;

    -- Opcional: Selecciona el nombre de aquellos pokemons cuyo nivel está entre 2 y 4 incluidos

    SELECT name
      FROM pokemons_478p
      WHERE level BETWEEN 2 AND 4;

    SELECT name
      FROM pokemons_478p
      WHERE level > 1
        AND level < 5;

-- 9) Muestra cuántos pokemons hay en la base de datos

SELECT COUNT(*)
  FROM pokemons_478p;

    -- Opcional: Muestra cuántos pokemons hay en la base de datos cuyo nombre empiece por P

    SELECT COUNT(*)
      FROM pokemons_478p
      WHERE name LIKE 'P%';

-- 10) Destruye la tabla pokemons y todo su contenido

DROP TABLE pokemons_478p;
