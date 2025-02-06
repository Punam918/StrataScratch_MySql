-- Find all business postal codes of restaurants with issues related to the water (violation description contains substring "water").

-- Table: sf_restaurant_health_violations
select business_postal_code from sf_restaurant_health_violations
where violation_description like '%water%';