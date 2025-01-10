select request_status, avg(monetary_cost) from uber_ride_requests
group by request_status;