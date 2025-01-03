SELECT substring(review_date,1,4),stars,count(review_id) from yelp_reviews
where business_name like "Lo-lo%"
group by substring(review_date,1,4)
order by stars asc;