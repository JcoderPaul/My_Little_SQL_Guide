select name, length(name) as lengh_of_name from my_base.courses;

select id, name, length(name) as length_of_name from my_base.courses order by length(name);

select id, name, length(name) as length_of_name from my_base.courses where length(name) > 20 order by length(name);