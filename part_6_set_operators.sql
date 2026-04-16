set search_path to nairobi_academy;

select * from exam_results;
select * from students;
select * from subject;

---Q1 union query to show list of all cities from student and patients

select * from city_hospital.patients;
--shows unique cities unlike union all
select city from students
union
select city from city_hospital.patients
order by city;

--Q2 Union to show patient full names and student first name(Union all)
select
	first_name as full_name, 'Students' as person_type
from students
union
select
	full_name, 'Patient' as person_type
from 
city_hospital.patients;

--Q3 Intersect query for cities that appear in patients ansd students table.

select city from students
intersect
select city from city_hospital.patients
order by city;

--Q4 






















