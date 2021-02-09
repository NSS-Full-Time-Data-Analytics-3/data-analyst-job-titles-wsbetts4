-- How many rows are in the data_analyst_jobs table?
select count(*)
from data_analyst_jobs;
-- 1793
-- Write a query to look at just the first 10 rows. What company is associated with the job posting on the 10th row?
select *
from data_analyst_jobs
limit 10;
-- ExxonMobil
-- How many postings are in Tennessee? How many are there in either Tennessee or Kentucky?
select count(*)
from data_analyst_jobs
where location = 'TN';
-- 21
select count(*)
from data_analyst_jobs
where location = 'TN' OR location = 'KY';
-- 27

