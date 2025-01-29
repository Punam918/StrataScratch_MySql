SELECT 
    s.shipment_id,
    s.weight
FROM amazon_shipment s
INNER JOIN (
    SELECT 
        shipment_id,
        MIN(shipment_date) AS earliest_shipment_date
    FROM amazon_shipment
    GROUP BY shipment_id
) AS earliest_dates
ON s.shipment_id = earliest_dates.shipment_id
AND s.shipment_date = earliest_dates.earliest_shipment_date;
