-- Count how many claims submitted in December 2021 are still pending. A claim is pending when it has neither an acceptance nor rejection date.

-- Table: cvs_claims
select count(*) as claims
from cvs_claims
where date_submitted >='2021-12-01' and date_submitted < '2022-01-01'
and date_accepted is NUll
and date_rejected is Null;


