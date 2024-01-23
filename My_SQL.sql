-- Создать файл my.sql, в котором должна создаваться таблица с информацией об одногруппниках. 
-- В таблице должно быть четыре поля: id, name, age, address. 
-- Все поля в таблице обязательны для заполнения.

-- Необходимо добавить 5-10 одногруппников в данную таблицу.

-- Необходимо написать запрос на получение имен всех одногруппников (только имен, без всего остального), 
-- которые живут в Москве и их возраст находится в диапазоне [18, 30) лет.

-- Примечание:
-- Квадратные скобки при указании диапазона, означают "включительно", 
-- а круглые "не включительно", то есть диапазон (7, 9] означает 
-- "от 7, где 7 не попадает в данный диапазон, до 9 включительно". 
-- Такой синтаксис нельзя использовать в sql, 
-- вам нужно найти решение, как такое условие можно записать в sql по-другому.


-- create
CREATE TABLE my_group (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  name TEXT NOT NULL,
  age INT NOT NULL,
  address TEXT NOT NULL
);

-- insert
INSERT INTO my_group (name, age, address) VALUES ('Иван', '25', 'Москва');
INSERT INTO my_group (name, age, address) VALUES ('Саша', '20', 'Петербург');
INSERT INTO my_group (name, age, address) VALUES ('Катя', '19', 'Самара');
INSERT INTO my_group (name, age, address) VALUES ('Марина', '34', 'Аликанте');
INSERT INTO my_group (name, age, address) VALUES ('Николай', '40', 'Владивосток');
INSERT INTO my_group (name, age, address) VALUES ('Настя', '27', 'Воронеж');
INSERT INTO my_group (name, age, address) VALUES ('Илья', '43', 'Москва');
INSERT INTO my_group (name, age, address) VALUES ('Дмитрий', '29', 'Суздаль');
INSERT INTO my_group (name, age, address) VALUES ('Андрей', '37', 'Мюнхен');
INSERT INTO my_group (name, age, address) VALUES ('Сережа', '20', 'Москва');
INSERT INTO my_group (name, age, address) VALUES ('Константин', '18', 'Москва');

-- fetch 
SELECT name FROM my_group WHERE address = 'Москва' and age IN (19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30);
SELECT name FROM my_group WHERE address = 'Москва' and age BETWEEN 19 AND 30;
SELECT name FROM my_group WHERE address = 'Москва' and age BETWEEN 18 AND 30 and age != 18;
SELECT name FROM my_group WHERE address = 'Москва' and age NOT BETWEEN 0 AND 18 and age NOT BETWEEN 30 AND 100;
SELECT name FROM my_group WHERE address = 'Москва' and age > 18 and age <= 30;