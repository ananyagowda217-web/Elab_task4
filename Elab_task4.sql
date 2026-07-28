USE WasteWiseDB;

DESCRIBE collections;

SELECT SUM(weight_kg) AS total_waste_kg
FROM collections;

SELECT ROUND(AVG(weight_kg), 2) AS avg_waste_kg
FROM collections;

SELECT COUNT(*) AS total_collections
FROM collections;

SELECT MAX(weight_kg) AS max_waste_kg, MIN(weight_kg) AS min_waste_kg
FROM collections;

SELECT area, SUM(weight_kg) AS total_waste_kg
FROM collections
GROUP BY area
ORDER BY total_waste_kg DESC;

SELECT waste_type, ROUND(AVG(weight_kg), 2) AS avg_waste_kg
FROM collections
GROUP BY waste_type;

SELECT vehicle_id, COUNT(*) AS collections_done
FROM collections
GROUP BY vehicle_id;

SELECT area, waste_type, SUM(weight_kg) AS total_kg
FROM collections
GROUP BY area, waste_type
ORDER BY area, total_kg DESC;

SELECT area, SUM(weight_kg) AS total_waste_kg
FROM collections
GROUP BY area
HAVING SUM(weight_kg) > 500;

SELECT waste_type, ROUND(AVG(weight_kg), 2) AS avg_waste
FROM collections
GROUP BY waste_type
HAVING AVG(weight_kg) > 20;

SELECT DATE_FORMAT(collection_date, '%Y-%m') AS month, 
       COUNT(*) AS total_collections,
       SUM(weight_kg) AS total_kg
FROM collections
GROUP BY month
ORDER BY month;

SELECT COUNT(DISTINCT area) AS total_areas_served
FROM collections;

