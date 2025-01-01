SELECT neighbourhood, count(*) from airbnb_search_details
where neighbourhood = 'Westlake' AND amenities LIKE '%TV%' and property_type='House';