--SECTION B: Date&Time Functions
--Name: Gabriel Kimani
--Date: 16/4/2026
--===================================================================================================

set search_path to nairobi_academy;

select * from students;

--Q1 display birth_day,birth_month,birth_year from each students date of birth
select 
	first_name,
	date_of_birth,
	DATE_PART('year', date_of_birth) as birth_year,
	DATE_PART('month', date_of_birth) as birth_month,
	DATE_PART('day', date_of_birth) as birth_day
from
students;

--Q2 Display students fullname,date_of_birth,age in complete years.Order from Oldest to youngest
select 
	first_name,
	last_name,
	date_of_birth,
	extract(year from age(date_of_birth))
from students;

--Q3 Display exam_date in a friendly format 'Friday 15th March 2024'.New column is 'formatted_date'
select
	result_id,
	TO_CHAR(exam_date, 'Day, DD Month YYYY') as formatted_date
from exam_results;












