select top 1 max(salary) as SecondHighestSalary
from Employee
where salary < (select max(salary) from Employee)

