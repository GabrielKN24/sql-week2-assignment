--SECTION E: WINDOWS FUNCTIONS
--Name: Gabriel Kimani
--Date: 16/4/2026
--===================================================================================================

set search_path to city_hospital;

select * from departments;
select * from doctors;
select * from patients;
select * from appointments;
select * from prescriptions;


-- Q2left join show all patents,appointment date,diagnosis

select
	p.full_name,
	a.appointment_id,
	a.diagnosis
from patients p
left join appointments as a
on p.patient_id = a.patient_id;

--Q3 Right join to show all doctors,with appointments or not

select
	a.appointment_id,
	d.full_name
from appointments as a
right join doctors as d
on a.doctor_id = d.doctor_id;

--Q4 Left join to find patients who never had appointments,show full name,city

select
 	p.full_name,
	p.city,
	a.appointment_id
from patients as p
left join appointments as a
on p.patient_id = a.patient_id;

--Q5 INNERJOIN TO SHOW EACH APPT WITH PATIENTNAME,DOCTORNAME,MED PRESCRIBED

select 
	p.full_name as patient_name,
	d.full_name as doctors_name,
	pr.medicine_name,
	pr.dosage
from appointments a
inner join patients p on a.patient_id = p.patient_id
inner join doctors d on a.doctor_id = d.doctor_id
inner join prescriptions pr on a.appointment_id = pr.appointment_id;









	


