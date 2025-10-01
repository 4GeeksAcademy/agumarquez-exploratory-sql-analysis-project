

SELECT * FROM regions;
SELECT * FROM species;
SELECT * FROM climate;
SELECT * FROM observations;


-- MISSION 1
-- ¿Cuáles son las primeras 10 observaciones registradas?;
SELECT * FROM observations
LIMIT 10;

-- MISSION 2
-- ¿Qué identificadores de región (region_id) aparecen en los datos?;
SELECT DISTINCT region_id FROM observations;


-- MISSION 3
-- ¿Cuántas especies distintas (species_id) se han observado?;
SELECT COUNT(DISTINCT species_id) FROM observations;



-- MISSION 4
-- ¿Cuántas observaciones hay para la región con region_id = 2?;
SELECT COUNT (region_id) FROM observations
WHERE region_id = 2;

-- MISSION 5
-- ¿Cuántas observaciones se registraron el día 1998-08-08?;
SELECT COUNT (*) FROM observations
WHERE observation_date = 1998-08-08;

-- MISSION 6
-- ¿Cuál es el region_id con más observaciones?;
SELECT region_id, COUNT(*) AS observation_count 
FROM observations 
GROUP BY region_id 
ORDER BY observation_count 
DESC LIMIT 1;

-- MISSION 7
-- ¿Cuáles son los 5 species_id más frecuentes?;

-- MISSION 8
-- ¿Qué especies (species_id) tienen menos de 5 registros?;

-- MISSION 9
-- ¿Qué observadores (observer) registraron más observaciones?;

-- MISSION 10
-- Muestra el nombre de la región (regions.name) para cada observación.;

-- MISSION 11
-- Muestra el nombre científico de cada especie registrada (species.scientific_name);

-- MISSION 12
-- ¿Cuál es la especie más observada por cada región?;

-- MISSION 13
-- Inserta una nueva observación ficticia en la tabla observations.;

