-- How many rows are in the data_analyst_jobs table?
select count(*)
from data_analyst_jobs;
-- 1793
-- Write a query to look at just the first 10 rows. What company is associated with the job posting on the 10th row?
select *
from data_analyst_jobs
limit 10;
-- ExxonMobil
