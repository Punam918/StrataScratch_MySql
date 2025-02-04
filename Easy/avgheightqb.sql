-- What is the average height of quarterbacks?

-- Table: nfl_combine

SELECT AVG(heightinchestotal) AS avg_height
FROM nfl_combine
WHERE position = 'QB';
