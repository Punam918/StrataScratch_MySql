-- How many athletes were drafted into NFL from 2013 NFL Combine? The pickround column specifies if the athlete was drafted into the NFL. A value of 0 means that the athlete was not drafted into the NFL.

-- Table: nfl_combine
SELECT COUNT(*) AS drafted_athletes
FROM nfl_combine
WHERE year = 2013
AND pickround != 0;
