select * from convocation;
select * from student;
select * from department;
select * from alumni;

select count(student_id) from convocation;
select sum(amount) as totalAmount from alumni;
select avg(cgpa) as cgpaAverage from student;
select max(cgpa) as maxCgpa from student;
select min(cgpa) as minCgpa from student;

select count(*),dept_id from convocation group by dept_id;
 
select student_id,sum(amount) from alumni group by student_id;

select student_id,sum(amount) from alumni group by student_id having sum(amount)>5000;
 
select student.student_id,convocation.p_year,student.cgpa 
from 
convocation join student
on 
student.student_id=convocation.student_id;


select student.student_id,convocation.p_year,student.gender ,student.name
from 
convocation join student
on 
student.student_id=convocation.student_id;


