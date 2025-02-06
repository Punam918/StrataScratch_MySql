-- Find all businesses which have low-risk safety violations.

-- Table: sf_restaurant_health_violations
select * from sf_restaurant_health_violations
where risk_category = 'low risk';a