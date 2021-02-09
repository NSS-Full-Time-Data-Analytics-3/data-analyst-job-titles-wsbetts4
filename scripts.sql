-- question 1:How many rows are in the data_analyst_jobs table?
select count(*)
from data_analyst_jobs;
-- answer: 1793
-- question 2: Write a query to look at just the first 10 rows. What company is associated with the job posting on the 10th row?
select *
from data_analyst_jobs
limit 10;
-- answer: ExxonMobil
-- question 3: How many postings are in Tennessee? How many are there in either Tennessee or Kentucky?
select count(*)
from data_analyst_jobs
where location = 'TN';
-- answer: 21
select count(*)
from data_analyst_jobs
where location = 'TN' OR location = 'KY';
-- answer: 27
-- question 4: How many postings in Tennessee have a star rating above 4?
select count(*)
from data_analyst_jobs
where location = 'TN'
AND star_rating > 4;
-- answer: 3
-- question 5: How many postings in the dataset have a review count between 500 and 1000?
select count (*)
from data_analyst_jobs
where review_count between 500 and 1000;
-- answer: 151
--question 6: Show the average star rating for companies in each state. The output should show the state as state and the average rating for the state as avg_rating. Which state shows the highest average rating?
select location, avg(star_rating)
from data_analyst_jobs
group by location
order by avg(star_rating) desc;
-- answer: NE (Nebraska)
--question 7: Select unique job titles from the data_analyst_jobs table. How many are there?
select count(distinct(title))
from data_analyst_jobs;
-- answer: 881, but there are duplicates due to capitalization, so maybe 877...?
-- question 8: How many unique job titles are there for California companies?
select distinct(title)
from data_analyst_jobs
where location = 'CA';
-- answer: 230, again dupes due to cap, so maybe 229...?
-- question 9: Find the name of each company and its average star rating for all companies that have more than 5000 reviews across all locations. How many companies are there with more that 5000 reviews across all locations?
select company, avg(star_rating)
from data_analyst_jobs
where review_count > 5000
AND star_rating is NOT NULL
group by company
order by avg(star_rating) desc;
-- answer: 40
-- question 10: Add the code to order the query in #9 from highest to lowest average star rating. Which company with more than 5000 reviews across all locations in the dataset has the highest star rating? What is that rating?
up,up,down,down,left,right,left,right,B,A,select, start
-- answer: General Motors, Unilever, Microsoft, Nike, American Express, Kaiser Permanente; 4.1999
-- question 11: Find all the job titles that contain the word ‘Analyst’. How many different job titles are there?
select distinct(title)
from data_analyst_jobs
where title LIKE '%analyst%'
OR title LIKE '%Analyst%'
OR title LIKE '%ANALYST%';
-- answer: 774,770 w dupes removed
-- question 12: How many different job titles do not contain either the word ‘Analyst’ or the word ‘Analytics’? What word do these positions have in common?
select distinct(title)
from data_analyst_jobs 
where title NOT LIKE '%ANALYST%'
AND title NOT LIKE '%ANALYTICS%'
AND title NOT LIKE '%Analyst%'
AND title NOT LIKE '%Analytics%'
AND title NOT LIKE '%analyst%'
AND title NOT LIKE '%analytics%'; 
-- answer: 4; looking for Data Visualization Specialist, especially Tableau