SELECT * FROM my_base.courses;

# Truncate - обрезание без округления!

# Отрезаем лишнее без округления до n-го количества символов после запятой/точки
SELECT price_per_hour, truncate(price_per_hour, 1) as round_res FROM my_base.courses where price_per_hour < 700;

# Отрезание до смвола в числе, отсчет справа, результат примера '2340000'
select truncate(2345678, -4) as res from dual;

# Отрезание от точки/запятой влево, в данном примере результат '2340'
select truncate(2345.678, -1) as res from dual;
