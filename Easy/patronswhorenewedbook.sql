select count(*) as no_of_patron
from 
(
   select * from library_usage
   where circulation_active_month = "April"
   And circulation_active_year =2025
   AND total_renewals between 1 and 9
)as s;