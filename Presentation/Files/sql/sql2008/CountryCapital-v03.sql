﻿/*

    СТОЛИЦЫ СТРАН МИРА. Третья версия.
	Для SQL Server 2008 и выше.

    Добавляем ограничения (constraints).
        Колонка PartOfWorld.Name -> UNIQUE
        Колонка CountryCapital -> UNIQUE
        Внешний ключ (FK) для таблицы CountryCapital

*/

USE master
GO
CREATE DATABASE TrainingCenter_Capitals
    COLLATE Cyrillic_General_CI_AI
GO
USE TrainingCenter_Capitals
GO

CREATE TABLE PartOfWorld
(
    Id   int         PRIMARY KEY,
    Name varchar(20) NOT NULL UNIQUE
)
GO

CREATE TABLE CountryCapital
(
    PartOfWorldId int         NOT NULL,
    Country       varchar(30) NOT NULL UNIQUE,
    CapitalCity   varchar(40) NOT NULL
)
GO

ALTER TABLE dbo.CountryCapital
    ADD CONSTRAINT FK_CountryCapital_PartOfWorld
    FOREIGN KEY (PartOfWorldId) REFERENCES PartOfWorld(Id)
    ON UPDATE NO ACTION
    ON DELETE NO ACTION

INSERT INTO PartOfWorld (Id, Name)
    VALUES (1, 'Европа')
         , (2, 'Азия')
         , (3, 'Африка')
         , (4, 'Америка')
         , (5, 'Австралия и Океания')

INSERT INTO CountryCapital (PartOfWorldId, Country, CapitalCity)
    VALUES (1, 'Австрия', 'Вена')
         , (1, 'Албания', 'Тирана')
         , (1, 'Андорра', 'Андорра-ла-Велья')
         , (1, 'Беларусь', 'Минск')
         , (1, 'Бельгия', 'Брюссель')
         , (1, 'Болгария', 'София')
         , (1, 'Босния и Герцеговина', 'Сараево')
         , (1, 'Ватикан', 'Ватикан')
         , (1, 'Великобритания', 'Лондон')
         , (1, 'Венгрия', 'Будапешт')
         , (1, 'Германия', 'Берлин')
         , (1, 'Греция', 'Афины')
         , (1, 'Дания', 'Копенгаген')
         , (1, 'Исландия', 'Рейкьявик')
         , (1, 'Испания', 'Мадрид')
         , (1, 'Италия', 'Рим')
         , (1, 'Латвия', 'Рига')
         , (1, 'Литва', 'Вильнюс')
         , (1, 'Лихтенштейн', 'Вадуц')
         , (1, 'Люксембург', 'Люксембург')
         , (1, 'Македония', 'Скопье')
         , (1, 'Мальта', 'Валлетта')
         , (1, 'Молдавия', 'Кишинёв')
         , (1, 'Монако', 'Монако')
         , (1, 'Нидерланды', 'Амстердам')
         , (1, 'Норвегия', 'Осло')
         , (1, 'Польша', 'Варшава')
         , (1, 'Португалия', 'Лиссабон')
         , (1, 'Россия', 'Москва')
         , (1, 'Румыния', 'Бухарест')
         , (1, 'Сан-Марино', 'Сан-Марино')
         , (1, 'Сербия', 'Белград')
         , (1, 'Словакия', 'Братислава')
         , (1, 'Словения', 'Любляна')
         , (1, 'Украина', 'Киев')
         , (1, 'Финляндия', 'Хельсинки')
         , (1, 'Ирландия', 'Дублин')
         , (1, 'Франция', 'Париж')
         , (1, 'Хорватия', 'Загреб')
         , (1, 'Черногория', 'Подгорица')
         , (1, 'Чехия', 'Прага')
         , (1, 'Швейцария', 'Берн')
         , (1, 'Швеция', 'Стокгольм')
         , (1, 'Эстония', 'Таллин')

INSERT INTO CountryCapital (PartOfWorldId, Country, CapitalCity)
    VALUES (2, 'Азербайджан', 'Баку')
         , (2, 'Армения', 'Ереван')
         , (2, 'Афганистан', 'Кабул')
         , (2, 'Бангладеш', 'Дакка')
         , (2, 'Бахрейн', 'Манама')
         , (2, 'Бруней', 'Бандар-Сери-Бегаван')
         , (2, 'Бутан', 'Тхимпху')
         , (2, 'Восточный Тимор', 'Дили')
         , (2, 'Вьетнам', 'Ханой')
         , (2, 'Грузия', 'Тбилиси')
         , (2, 'Израиль', 'Иерусалим')
         , (2, 'Индия', 'Нью-Дели')
         , (2, 'Индонезия', 'Джакарта')
         , (2, 'Иордания', 'Амман')
         , (2, 'Ирак', 'Багдад')
         , (2, 'Иран', 'Тегеран')
         , (2, 'Йемен', 'Сана')
         , (2, 'Казахстан', 'Астана')
         , (2, 'Камбоджа', 'Пномпень')
         , (2, 'Катар', 'Доха')
         , (2, 'Кипр', 'Никосия')
         , (2, 'Киргизия', 'Бишкек')
         , (2, 'КНДР', 'Пхеньян')
         , (2, 'КНР', 'Пекин')
         , (2, 'Кувейт', 'Эль-Кувейт')
         , (2, 'Лаос', 'Вьентьян')
         , (2, 'Ливан', 'Бейрут')
         , (2, 'Малайзия', 'Куала-Лумпур')
         , (2, 'Мальдивы', 'Мале')
         , (2, 'Монголия', 'Улан-Батор')
         , (2, 'Мьянма', 'Нейпьидо')
         , (2, 'Непал', 'Катманду')
         , (2, 'ОАЭ', 'Абу-Даби')
         , (2, 'Оман', 'Маскат')
         , (2, 'Пакистан', 'Исламабад')
         , (2, 'Республика Корея', 'Сеул')
         , (2, 'Саудовская Аравия', 'Эр-Рияд')
         , (2, 'Сингапур', 'Сингапур')
         , (2, 'Сирия', 'Дамаск')
         , (2, 'Таджикистан', 'Душанбе')
         , (2, 'Таиланд', 'Бангкок')
         , (2, 'Туркмения', 'Ашхабад')
         , (2, 'Турция', 'Анкара')
         , (2, 'Узбекистан', 'Ташкент')
         , (2, 'Филиппины', 'Манила')
         , (2, 'Шри-Ланка', 'Шри-Джаяварденепура-Котте')
         , (2, 'Япония', 'Токио')

INSERT INTO CountryCapital (PartOfWorldId, Country, CapitalCity)
    VALUES (3, 'Алжир', 'Алжир')
         , (3, 'Ангола', 'Луанда')
         , (3, 'Бенин', 'Порто-Ново')
         , (3, 'Ботсвана', 'Габороне')
         , (3, 'Буркина-Фасо', 'Уагадугу')
         , (3, 'Бурунди', 'Бужумбура')
         , (3, 'Габон', 'Либревиль')
         , (3, 'Гамбия', 'Банжул')
         , (3, 'Гана', 'Аккра')
         , (3, 'Гвинея-Бисау', 'Бисау')
         , (3, 'Гвинея', 'Конакри')
         , (3, 'Джибути', 'Джибути')
         , (3, 'ДР Конго', 'Киншаса')
         , (3, 'Египет', 'Каир')
         , (3, 'Замбия', 'Лусака')
         , (3, 'Зимбабве', 'Хараре')
         , (3, 'Кабо-Верде', 'Прая')
         , (3, 'Камерун', 'Яунде')
         , (3, 'Кения', 'Найроби')
         , (3, 'Коморы', 'Морони')
         , (3, 'Кот-д’Ивуар', 'Ямусукро')
         , (3, 'Лесото', 'Масеру')
         , (3, 'Либерия', 'Монровия')
         , (3, 'Маврикий', 'Порт-Луи')
         , (3, 'Мавритания', 'Нуакшот')
         , (3, 'Мадагаскар', 'Антананариву')
         , (3, 'Малави', 'Лилонгве')
         , (3, 'Мали', 'Бамако')
         , (3, 'Марокко', 'Рабат')
         , (3, 'Мозамбик', 'Мапуту')
         , (3, 'Намибия', 'Виндхук')
         , (3, 'Нигер', 'Ниамей')
         , (3, 'Нигерия', 'Абуджа')
         , (3, 'Республика Конго', 'Браззавиль')
         , (3, 'Руанда', 'Кигали')
         , (3, 'Сан-Томе и Принсипи', 'Сан-Томе')
         , (3, 'Свазиленд', 'Мбабане')
         , (3, 'Сейшельские Острова', 'Виктория')
         , (3, 'Сенегал', 'Дакар')
         , (3, 'Сомали', 'Могадишо')
         , (3, 'Судан', 'Хартум')
         , (3, 'Сьерра-Леоне', 'Фритаун')
         , (3, 'Танзания', 'Додома')
         , (3, 'Того', 'Ломе')
         , (3, 'Тунис', 'Тунис')
         , (3, 'Уганда', 'Кампала')
         , (3, 'Ливия', 'Триполи')
         , (3, 'ЦАР', 'Банги')
         , (3, 'Чад', 'Нджамена')
         , (3, 'Экваториальная Гвинея', 'Малабо')
         , (3, 'Эритрея', 'Асмэра')
         , (3, 'Эфиопия', 'Аддис-Абеба')
         , (3, 'ЮАР', 'Претория')
         , (3, 'Южный Судан', 'Джуба')

INSERT INTO CountryCapital (PartOfWorldId, Country, CapitalCity)
    VALUES (4, 'Антигуа и Барбуда', 'Сент-Джонс')
         , (4, 'Аргентина', 'Буэнос-Айрес')
         , (4, 'Багамы', 'Нассау')
         , (4, 'Барбадос', 'Бриджтаун')
         , (4, 'Белиз', 'Бельмопан')
         , (4, 'Боливия', 'Сукре')
         , (4, 'Бразилия', 'Бразилиа')
         , (4, 'Венесуэла', 'Каракас')
         , (4, 'Гаити', 'Порт-о-Пренс')
         , (4, 'Гайана', 'Джорджтаун')
         , (4, 'Гватемала', 'Гватемала')
         , (4, 'Гвиана', 'Кайенна')
         , (4, 'Гондурас', 'Тегусигальпа')
         , (4, 'Гренада', 'Сент-Джорджес')
         , (4, 'Доминика', 'Розо')
         , (4, 'Доминиканская Республика', 'Санто-Доминго')
         , (4, 'Канада', 'Оттава')
         , (4, 'Колумбия', 'Богота')
         , (4, 'Коста-Рика', 'Сан-Хосе')
         , (4, 'Куба', 'Гавана')
         , (4, 'Мексика', 'Мехико')
         , (4, 'Никарагуа', 'Манагуа')
         , (4, 'Панама', 'Панама')
         , (4, 'Парагвай', 'Асунсьон')
         , (4, 'Перу', 'Лима')
         , (4, 'Сальвадор', 'Сан-Сальвадор')
         , (4, 'Сент-Винсент и Гренадины', 'Кингстаун')
         , (4, 'Сент-Китс и Невис', 'Бастер')
         , (4, 'Сент-Люсия', 'Кастри')
         , (4, 'Суринам', 'Парамарибо')
         , (4, 'США', 'Вашингтон')
         , (4, 'Тринидад и Тобаго', 'Порт-оф-Спейн')
         , (4, 'Уругвай', 'Монтевидео')
         , (4, 'Чили', 'Сантьяго')
         , (4, 'Эквадор', 'Кито')
         , (4, 'Ямайка', 'Кингстон')

INSERT INTO CountryCapital (PartOfWorldId, Country, CapitalCity)
    VALUES (5, 'Австралия', 'Канберра')
         , (5, 'Вануату', 'Порт-Вила')
         , (5, 'Кирибати', 'Южная Тарава')
         , (5, 'Маршалловы Острова', 'Маджуро')
         , (5, 'Микронезия', 'Паликир')
         , (5, 'Новая Зеландия', 'Веллингтон')
         , (5, 'Палау', 'Нгерулмуд')
         , (5, 'Папуа — Новая Гвинея', 'Порт-Морсби')
         , (5, 'Самоа', 'Апиа')
         , (5, 'Соломоновы Острова', 'Хониара')
         , (5, 'Тонга', 'Нукуалофа')
         , (5, 'Тувалу', 'Фунафути')
         , (5, 'Фиджи', 'Сува')

SELECT
    PartOfWorld.Name
    , CountryCapital.Country
    , CountryCapital.CapitalCity
FROM
    CountryCapital
    JOIN PartOfWorld ON PartOfWorld.Id = CountryCapital.PartOfWorldId

/*
USE master
DROP DATABASE TrainingCenter_Capitals
*/
