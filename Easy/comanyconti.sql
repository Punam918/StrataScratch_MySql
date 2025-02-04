-- List all companies working in the financial sector with headquarters in Europe or Asia.

-- Table: forbes_global_2010_2014

SELECT company
FROM forbes_global_2010_2014
WHERE sector = 'Financials'
  AND (continent = 'Europe' OR continent = 'Asia');