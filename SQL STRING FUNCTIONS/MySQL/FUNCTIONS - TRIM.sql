select trim(trailing '*' from '**** Доброго дня ******') from dual; # Удалить все символы * с конца текста

select trim(leading '*' from '**** Доброго дня ******') from dual; # Удалить все символы * с начала текста

select trim(both '*' from '**** Доброго дня ******') from dual; # Удалить все символы * с обоих концов текста