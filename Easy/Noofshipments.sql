SELECT 
    DATE_FORMAT(shipment_date, '%Y-%m') AS year_month,
    COUNT(DISTINCT CONCAT(shipment_id, '-', sub_id)) AS number_of_shipments
FROM amazon_shipment
GROUP BY year_month
ORDER BY year_month;
