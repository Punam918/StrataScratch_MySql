-- You've been asked by Amazon to find the shipment_id and weight of the third heaviest shipment.
-- Output the shipment_id, and total_weight for that shipment_id.
-- In the event of a tie, do not skip ranks.

-- Table: amazon_shipment

WITH RankedShipments AS (
    SELECT 
        shipment_id, 
        SUM(weight) AS total_weight,
        DENSE_RANK() OVER (ORDER BY SUM(weight) DESC) AS rnk
    FROM amazon_shipment
    GROUP BY shipment_id
)
SELECT shipment_id, total_weight
FROM RankedShipments
WHERE rnk = 3;
