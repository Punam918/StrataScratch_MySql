-- How many orders were shipped by Speedy Express in total?

-- Tables: shopify_orders, shopify_carriers

SELECT COUNT(s.order_id)
FROM shopify_orders AS s
JOIN shopify_carriers AS C
    ON s.carrier_id = C.id
WHERE C.name = 'Speedy Express';