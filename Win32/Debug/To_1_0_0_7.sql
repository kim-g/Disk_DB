DELETE * 
FROM История;

UPDATE МестоНаПолке
SET [Место на полке] = "Шкаф №1";

UPDATE Видеозаписи
SET Место_на_полке = 1;

DELETE * 
FROM МестоНаПолке
WHERE ID > 1;

CREATE TABLE DB_Config (ID COUNTER CONSTRAINT PrimaryKey PRIMARY KEY, Параметр TEXT(100) NOT NULL, Значение TEXT(100));

CREATE TABLE Tables (ID COUNTER CONSTRAINT PrimaryKey PRIMARY KEY, Имя_таблицы TEXT(100) NOT NULL, Описание TEXT(100));

DROP TABLE История2;

INSERT INTO DB_Config (Параметр, Значение)
VALUES ("Версия","1.0.0.7");

INSERT INTO Tables (Имя_таблицы, Описание)
VALUES ("Список_Дисков","Таблица дисков");

INSERT INTO Tables (Имя_таблицы, Описание)
VALUES ("Актёры","Список актёров");

INSERT INTO Tables (Имя_таблицы, Описание)
VALUES ("Видеозаписи","Таблица уникальных по содержанию дисков");

INSERT INTO Tables (Имя_таблицы, Описание)
VALUES ("История","Таблица истории взятых дисков");

INSERT INTO Tables (Имя_таблицы, Описание)
VALUES ("Категории","Таблица видов категорий. При обновлении побавить в программу!");

INSERT INTO Tables (Имя_таблицы, Описание)
VALUES ("МестоНаПолке","НЕ ИСПОЛЬЗУЕТСЯ!!! Место на полке, где стоит.");

INSERT INTO Tables (Имя_таблицы, Описание)
VALUES ("Операции","Взял - вернул");

INSERT INTO Tables (Имя_таблицы, Описание)
VALUES ("Роли","Таблица ролей в спектаклях");

INSERT INTO Tables (Имя_таблицы, Описание)
VALUES ("Связь_Актёр_Роль","Таблица для «Многие ко многим»");

INSERT INTO Tables (Имя_таблицы, Описание)
VALUES ("Спектакли","Таблица спектаклей для повторяющихся названий");

INSERT INTO Tables (Имя_таблицы, Описание)
VALUES ("Сюжеты","Таблица названий дисков");

INSERT INTO Tables (Имя_таблицы, Описание)
VALUES ("ТаблицаПолА","Муж: «», Жен: «а» для операции.");

INSERT INTO Tables (Имя_таблицы, Описание)
VALUES ("Члены труппы","Таблица членов труппы, которые могут брать диски");