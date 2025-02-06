-- Find all businesses which have a phone number.

-- Table: sf_restaurant_health_violations
select  * from sf_restaurant_health_violations
where business_phone_number is not null;