-- How many searches were there in the second quarter of 2021?

-- Table: fb_searches


SELECT COUNT(*) AS total_searches
FROM fb_searches
WHERE date >= '2021-04-01' AND date < '2021-07-01';
