# Удалили все строки где данные age = 31
DELETE FROM my_base.manipulation_tab
WHERE age = 31;

DELETE FROM my_base.manipulation_tab
WHERE name = 'Жириновский Наум';

DELETE FROM my_base.manipulation_tab
WHERE id between 20 and 25;
