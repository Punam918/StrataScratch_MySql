-- Find the search details for apartments where the property type is Apartment and the accommodation is suitable for one person.

-- Table: airbnb_search_details


select * from  airbnb_search_details
where property_type = 'Apartment' and beds =1;