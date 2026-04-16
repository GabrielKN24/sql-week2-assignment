--SECTION E: WINDOWS FUNCTIONS
--Name: Gabriel Kimani
--Date: 16/4/2026
--===================================================================================================

set search_path to nairobi_academy;

select * from exam_results;

--Q1 Using rownumber() assign unique rank to each exam result,show resultid,sudentid,marks and row_number

select 
	result_id,
	student_id,
	marks,
	ROW_NUMBER() OVER(order by marks desc)
from exam_results;

--Q2 USE RANK(),DENSE_RANK( ) ON EXAM_RESULTS ORDERED BY MARKS

select 
	student_id,
	marks,
	RANK() OVER(order by marks desc) as rank_pos,
	DENSE_RANK() OVER(order by marks desc) as dense_pos
from exam_results;

--Q3 Use ntile(3) to divide all exam results into 3 performance bands
select
	result_id,
	marks,
	NTILE(3) OVER(order by marks desc) as performance_band
from exam_results
order by marks desc;

--Q4 Use avg() ovr(partition by student_id) to show exam result and students avg mark.
--show student_id,marks.student_avg rounded to 2 dec places.

select
	student_id,
	marks,
	AVG(marks) OVER(partition by student_id) as student_avg_mark
from exam_results;

--Q5 Use LAG to show prevoius result AND CALC IMPROVEMENT

select
	result_id,
	student_id, 
	marks,
	LAG(marks) OVER(partition by student_id order by result_id) as previous_mark,
	marks - LAG(marks) OVER(partition by student_id order by result_id) as improvement
	from exam_results
	order by student_id, result_id;








