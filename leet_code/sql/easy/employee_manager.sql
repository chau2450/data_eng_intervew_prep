select a.name as Employee
from Employee a
join Employee b
on a.managerID = b.id
where a.salary > b.salary;