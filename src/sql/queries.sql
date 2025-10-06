

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
WHERE observation_date = '1998-08-08';

-- MISSION 6
-- ¿Cuál es el region_id con más observaciones?;
SELECT region_id, COUNT(*) AS observation_count 
FROM observations 
GROUP BY region_id 
ORDER BY observation_count 
DESC LIMIT 1;

-- MISSION 7
-- ¿Cuáles son los 5 species_id más frecuentes?;
-- selecciona los species id, cuenta la cantidad de veces que aparece cada uno y lo muestra en fracuencias;
SELECT species_id, COUNT(species_id) AS frecuencias
FROM observations 
GROUP BY species_id 
ORDER BY COUNT(species_id) 
DESC LIMIT 5; 

-- MISSION 8
-- ¿Qué especies (species_id) tienen menos de 5 registros?;
SELECT species_id, COUNT(species_id) AS frecuencias
FROM observations
GROUP BY species_id
HAVING COUNT(species_id) < 5;

-- MISSION 9
-- ¿Qué observadores (observer) registraron más observaciones?;
SELECT observer, COUNT(*) AS observations_count
FROM observations
GROUP BY observer
DESC LIMIT 20;

-- MISSION 10
-- Muestra el nombre de la región (regions.name) para cada observación.;
SELECT T1.observer, T2.name 
FROM observations AS T1 
JOIN regions AS T2 
ON T1.region_id = T2.id; 

-- MISSION 11
-- Muestra el nombre científico de cada especie registrada (species.scientific_name);

SELECT T2.scientific_name 
FROM observations T1
JOIN species T2 ON T1.species_id = T2.id;

-- MISSION 12
-- ¿Cuál es la especie más observada por cada región?;
SELECT T1.name, T3.scientific_name 
FROM regions T1 
JOIN observations T2 ON T1.id = T2.region_id 
JOIN species T3 ON T3.id = T2.species_id
GROUP BY T1.name, T3.scientific_name 
ORDER BY COUNT(*) DESC; 


