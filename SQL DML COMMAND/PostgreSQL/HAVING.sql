select company.name,
       e.first_name
       count(e.id)
from company
         join employee e
              ON company.id = e.company_id
--      AND company.name = 'Apple'
where company.name = 'Apple';
GROUP BY company.id
HAVING count(e.id) > 0;