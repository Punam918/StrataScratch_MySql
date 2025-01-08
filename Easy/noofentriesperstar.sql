select stars, count(*) from yelp_reviews
group by stars
order by stars asc;