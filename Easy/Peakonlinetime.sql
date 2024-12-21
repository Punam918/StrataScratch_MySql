SELECT user_count , device_type,   CONCAT(start_timestamp, ' to ', end_timestamp) as time_period
from user_activity
group by user_count;