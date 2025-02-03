-- Find the maximum step reached for every feature.
-- Output the feature id along with its maximum step.

-- Table: facebook_product_features_realizations

select feature_id, max(step_reached) from facebook_product_features_realizations
group by feature_id;a