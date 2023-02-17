SELECT * FROM my_base.courses;

select count(*) from my_base.courses;

select count(duration) as all_dur, count(distinct duration) as orig_dur from my_base.courses;

select count(type) as all_string, count(distinct type) as orig_type from my_base.courses;

select count(type) as all_string, count(distinct type) as orig_type from my_base.courses;

select count(type) as all_string, count(distinct type) as orig_type from my_base.courses where duration = 10;