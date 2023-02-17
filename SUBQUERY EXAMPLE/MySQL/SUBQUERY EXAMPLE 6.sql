# -----------------------------------------------------------------------------------------
# Напишите код, который выведет среднее количество покупок в месяц для 
# каждого курса за 2018 год. Учитывайте диапазон месяцев, в течение которого 
# были продажи. Подробнее в примере.
# Старайтесь использовать только SQL, при этом  группировку по месяцам можно 
# сделать и с помощью Java. В данном случае весь код реализован на SQL. Теперь 
# Его можно перенести в JAVA.
# -----------------------------------------------------------------------------------------
# Логика селекта такова ->

select 
# 3 - и только потом идет расчет и вывод требуемой информации. 
course_name, extract(YEAR FROM subscription_date) as year, 
count(extract(MONTH FROM subscription_date)) as col_sell, 
max(extract(MONTH FROM subscription_date)) as max_month,
min(extract(MONTH FROM subscription_date)) as min_month,
count(extract(MONTH FROM subscription_date)) / (max(extract(MONTH FROM subscription_date)) - min(extract(MONTH FROM subscription_date)) + 1) as avg_sale
FROM my_base.purchaselist
# 1 - сначало идет выборка всех полей из базы с subscription_date = 2018
where extract(YEAR FROM subscription_date) = 2018
# 2- затем идет группировка по названию курса - course_name  
group by course_name;
# -----------------------------------------------------------------------------------------