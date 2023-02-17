select name, concat('Длина имени и фамилии с пробелами равна - ', length(name)) as lenght_of_name from my_base.students;

# Выводим три столбца один из котороых имеет псевдоним 'length_of_name' в него записывается длина полей 'name'
# далее мы включаем в выборку ФИО с длиной больше 30 и сортируем по столбцу 3, а это у нас столбец с псевдонимом
# и в нем размещаются длины ФИО (т.е. при выборке можно применить имя столбца, а можно порядковый номер)  

select id, name, length(name) as length_of_name from my_base.students where length(name) > 30 order by 3;