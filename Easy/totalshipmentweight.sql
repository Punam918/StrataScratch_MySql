SELECT 
    shipment_date,
    shipment_id,
    sub_id,
    weight,
    SUM(weight) OVER (PARTITION BY shipment_id) AS total_weight
FROM amazon_shipment;
