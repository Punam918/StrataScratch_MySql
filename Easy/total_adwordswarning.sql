select business_type, sum(adwords_earnings) as total_adwords
from google_adwords_earnings
group by business_type;