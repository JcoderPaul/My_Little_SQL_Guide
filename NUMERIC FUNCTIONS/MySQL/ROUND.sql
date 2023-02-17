SELECT * FROM my_base.courses;

SELECT price_per_hour, round(price_per_hour, -3) as round_res FROM my_base.courses;

# Округление до смвола в числе, отсчет справа, результат примера '2350000'
select round(2345678, -4) as res from dual;

# Округление до точки/запятой
select round(2345.678) as res from dual;

# Округление до n-го знака после точки/запятой
select round(2345.678, 1) as res from dual;
select round(2345.6785, 2) as res from dual;

select price_per_hour, round(price_per_hour, 1) as res from my_base.courses where price_per_hour < 1000;