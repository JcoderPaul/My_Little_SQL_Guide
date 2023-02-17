
-- Заполняем поля таблицы
INSERT INTO my_training_base.company(id, company_name, create_date) 
                             VALUES (1, 'MyCompany', '2001-01-01');
                             
-- Заполняем поля талицы несколькими строками
INSERT INTO my_training_base.company(id, company_name, create_date) 
                             VALUES (2, 'YourCompany', '2002-04-15'),
                                    (3, 'TheirCompany', '2011-07-21'),
                                    (4, 'HerCompany', '1988-11-11');
-- Поскольку поля у нас не имеют ограничений то данные могут дублироваться                                    
INSERT INTO my_training_base.company(id, company_name, create_date) 
                             VALUES (2, 'YourCompany', '2002-04-15'),
                                    (3, 'TheirCompany', '2011-07-21'),
                                    (4, 'HerCompany', '1988-11-11');                                    


-- Заполняем таблицу с ограничениями на полях
-- !!! При попытке ввести повторяющиеся значения или пустые
-- !!! в поля базы с соответствующими ограничениями, получим
-- !!! ошибку - предупреждение и данные не добавятся в базу.                                   
INSERT INTO my_training_base.well_known_firm(id, company_name, create_date) 
                             VALUES (1, 'FarBakenHuren', '2002-04-10'),
                                    (2, 'CepelinUberGahen', '2011-07-21'),
                                    (3, 'CvanDiliBurgReneshpiler', '1988-11-11'); 