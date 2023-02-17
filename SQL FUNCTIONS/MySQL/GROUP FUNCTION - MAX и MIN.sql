SELECT * FROM my_base.courses;

select max(duration), min(duration) from my_base.courses;

select count(id), (price)/count(id), max(price) from my_base.courses;