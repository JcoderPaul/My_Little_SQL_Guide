CREATE VIEW employee_view AS
select company.name,
       e.last_name,
       e.salary,
--        count(e.id) OVER (),
       max(e.salary) OVER (PARTITION BY company.name),
       min(e.salary) OVER (PARTITION BY company.name),
       lag(e.salary) OVER (ORDER BY e.salary) - e.salary
--        avg(e.salary) OVER (),
--        row_number() over (partition by company.name),
--        dense_rank() OVER (partition by company.name ORDER BY e.salary nulls first )
from company
         left join employee e
                   on company.id = e.company_id
order by company.name;





