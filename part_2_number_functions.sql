-----------------------------========================================================================
--SECTION B: Number Functions
--Name: Gabriel Kimani
--Date: 16/4/2026
--===================================================================================================
set search_path to nairobi_academy;

--Q1 Display query showing exam result alongside mark recorded to 1c decimal place,mark rounded up to
--nearest 10 using ceil,mark rounded down using floor

select * from exam_results;

select
	result_id,
	marks,
	round(marks/10.0, 1) as marks_out_of_ten,
	ceil(marks/10.0) as ceil_out_of_ten,
	floor(marks/10.0) as floor_out_of_ten
from exam_results;


--Q2 Query to calc total number of results(count),avg mark(rounded to 2 dec),highest mark(max,)
--lowest mark(min),sum alltogether
select * from exam_results;

select
	count(*) as total_students,
	round(AVG(marks),2) as average_marks,
	min(marks) as minimum_mark,
	max(marks) as maximum_mark,
	sum(marks) as total_marks
from exam_results;

--Q3 Query to display the result_id,original marks and boosted mark rounded to the nearest whole number

select 
	result_id,
	marks,
	round(marks * 1.10, 0) as boosted_marks
	from exam_results;
	
	















