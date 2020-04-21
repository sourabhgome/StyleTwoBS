create view student_view as
select student.roll_number as "roll_number",
student.name as "name",
student.gender as "gender",
student.address as "address",
city.name as "city",
student.date_of_birth as "DOB",
student.indian as "indian"
from student inner join city on city.code=student.city_code;