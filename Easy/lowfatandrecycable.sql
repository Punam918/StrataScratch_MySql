-- What percentage of all products are both low fat and recyclable?

-- Table: facebook_products

SELECT 
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM facebook_products)) AS percentage_low_fat_recyclable
FROM facebook_products
WHERE is_low_fat = 'Y' AND is_recyclable = 'Y';
