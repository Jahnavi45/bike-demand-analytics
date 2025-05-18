
-- Total number of bike rentals
SELECT SUM(cnt) AS total_rentals FROM bike_sharing;

-- Top 5 days with the highest demand
SELECT dteday, cnt FROM bike_sharing ORDER BY cnt DESC LIMIT 5;

-- Average rentals by season
SELECT season,
       ROUND(AVG(cnt), 2) AS avg_rentals
FROM bike_sharing
GROUP BY season;

-- Rentals on holiday vs working day
SELECT holiday,
       ROUND(AVG(cnt), 2) AS avg_rentals
FROM bike_sharing
GROUP BY holiday;

-- Monthly rental trend
SELECT SUBSTR(dteday, 1, 7) AS month,
       SUM(cnt) AS total_rentals
FROM bike_sharing
GROUP BY month
ORDER BY month;

-- Correlation checks for temperature and demand (conceptual, not executable in SQL)
-- Use Python for deeper correlation or regression analysis
