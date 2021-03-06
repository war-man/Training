/*

    СТОЛИЦЫ СТРАН МИРА. Первая версия.
	Для SQL Server 2008 и выше.

    Все данные хранятся в одной таблице.

*/

USE master
GO
CREATE DATABASE TrainingCenter_Capitals
    COLLATE Cyrillic_General_CI_AI
GO
USE TrainingCenter_Capitals
GO

CREATE TABLE CountryCapital
(
    PartOfWorld varchar(20) NOT NULL,
    Country     varchar(30) NOT NULL,
    CapitalCity varchar(40) NOT NULL
)
GO

INSERT INTO CountryCapital (PartOfWorld, Country, CapitalCity)
    VALUES ('Европа', 'Австрия', 'Вена')
         , ('Европа', 'Албания', 'Тирана')
         , ('Европа', 'Андорра', 'Андорра-ла-Велья')
         , ('Европа', 'Беларусь', 'Минск')
         , ('Европа', 'Бельгия', 'Брюссель')
         , ('Европа', 'Болгария', 'София')
         , ('Европа', 'Босния и Герцеговина', 'Сараево')
         , ('Европа', 'Ватикан', 'Ватикан')
         , ('Европа', 'Великобритания', 'Лондон')
         , ('Европа', 'Венгрия', 'Будапешт')
         , ('Европа', 'Германия', 'Берлин')
         , ('Европа', 'Греция', 'Афины')
         , ('Европа', 'Дания', 'Копенгаген')
         , ('Европа', 'Исландия', 'Рейкьявик')
         , ('Европа', 'Испания', 'Мадрид')
         , ('Европа', 'Италия', 'Рим')
         , ('Европа', 'Латвия', 'Рига')
         , ('Европа', 'Литва', 'Вильнюс')
         , ('Европа', 'Лихтенштейн', 'Вадуц')
         , ('Европа', 'Люксембург', 'Люксембург')
         , ('Европа', 'Македония', 'Скопье')
         , ('Европа', 'Мальта', 'Валлетта')
         , ('Европа', 'Молдавия', 'Кишинёв')
         , ('Европа', 'Монако', 'Монако')
         , ('Европа', 'Нидерланды', 'Амстердам')
         , ('Европа', 'Норвегия', 'Осло')
         , ('Европа', 'Польша', 'Варшава')
         , ('Европа', 'Португалия', 'Лиссабон')
         , ('Европа', 'Россия', 'Москва')
         , ('Европа', 'Румыния', 'Бухарест')
         , ('Европа', 'Сан-Марино', 'Сан-Марино')
         , ('Европа', 'Сербия', 'Белград')
         , ('Европа', 'Словакия', 'Братислава')
         , ('Европа', 'Словения', 'Любляна')
         , ('Европа', 'Украина', 'Киев')
         , ('Европа', 'Финляндия', 'Хельсинки')
         , ('Европа', 'Ирландия', 'Дублин')
         , ('Европа', 'Франция', 'Париж')
         , ('Европа', 'Хорватия', 'Загреб')
         , ('Европа', 'Черногория', 'Подгорица')
         , ('Европа', 'Чехия', 'Прага')
         , ('Европа', 'Швейцария', 'Берн')
         , ('Европа', 'Швеция', 'Стокгольм')
         , ('Европа', 'Эстония', 'Таллин')

INSERT INTO CountryCapital (PartOfWorld, Country, CapitalCity)
    VALUES ('Азия', 'Азербайджан', 'Баку')
         , ('Азия', 'Армения', 'Ереван')
         , ('Азия', 'Афганистан', 'Кабул')
         , ('Азия', 'Бангладеш', 'Дакка')
         , ('Азия', 'Бахрейн', 'Манама')
         , ('Азия', 'Бруней', 'Бандар-Сери-Бегаван')
         , ('Азия', 'Бутан', 'Тхимпху')
         , ('Азия', 'Восточный Тимор', 'Дили')
         , ('Азия', 'Вьетнам', 'Ханой')
         , ('Азия', 'Грузия', 'Тбилиси')
         , ('Азия', 'Израиль', 'Иерусалим')
         , ('Азия', 'Индия', 'Нью-Дели')
         , ('Азия', 'Индонезия', 'Джакарта')
         , ('Азия', 'Иордания', 'Амман')
         , ('Азия', 'Ирак', 'Багдад')
         , ('Азия', 'Иран', 'Тегеран')
         , ('Азия', 'Йемен', 'Сана')
         , ('Азия', 'Казахстан', 'Астана')
         , ('Азия', 'Камбоджа', 'Пномпень')
         , ('Азия', 'Катар', 'Доха')
         , ('Азия', 'Кипр', 'Никосия')
         , ('Азия', 'Киргизия', 'Бишкек')
         , ('Азия', 'КНДР', 'Пхеньян')
         , ('Азия', 'КНР', 'Пекин')
         , ('Азия', 'Кувейт', 'Эль-Кувейт')
         , ('Азия', 'Лаос', 'Вьентьян')
         , ('Азия', 'Ливан', 'Бейрут')
         , ('Азия', 'Малайзия', 'Куала-Лумпур')
         , ('Азия', 'Мальдивы', 'Мале')
         , ('Азия', 'Монголия', 'Улан-Батор')
         , ('Азия', 'Мьянма', 'Нейпьидо')
         , ('Азия', 'Непал', 'Катманду')
         , ('Азия', 'ОАЭ', 'Абу-Даби')
         , ('Азия', 'Оман', 'Маскат')
         , ('Азия', 'Пакистан', 'Исламабад')
         , ('Азия', 'Республика Корея', 'Сеул')
         , ('Азия', 'Саудовская Аравия', 'Эр-Рияд')
         , ('Азия', 'Сингапур', 'Сингапур')
         , ('Азия', 'Сирия', 'Дамаск')
         , ('Азия', 'Таджикистан', 'Душанбе')
         , ('Азия', 'Таиланд', 'Бангкок')
         , ('Азия', 'Туркмения', 'Ашхабад')
         , ('Азия', 'Турция', 'Анкара')
         , ('Азия', 'Узбекистан', 'Ташкент')
         , ('Азия', 'Филиппины', 'Манила')
         , ('Азия', 'Шри-Ланка', 'Шри-Джаяварденепура-Котте')
         , ('Азия', 'Япония', 'Токио')

INSERT INTO CountryCapital (PartOfWorld, Country, CapitalCity)
    VALUES ('Африка', 'Алжир', 'Алжир')
         , ('Африка', 'Ангола', 'Луанда')
         , ('Африка', 'Бенин', 'Порто-Ново')
         , ('Африка', 'Ботсвана', 'Габороне')
         , ('Африка', 'Буркина-Фасо', 'Уагадугу')
         , ('Африка', 'Бурунди', 'Бужумбура')
         , ('Африка', 'Габон', 'Либревиль')
         , ('Африка', 'Гамбия', 'Банжул')
         , ('Африка', 'Гана', 'Аккра')
         , ('Африка', 'Гвинея-Бисау', 'Бисау')
         , ('Африка', 'Гвинея', 'Конакри')
         , ('Африка', 'Джибути', 'Джибути')
         , ('Африка', 'ДР Конго', 'Киншаса')
         , ('Африка', 'Египет', 'Каир')
         , ('Африка', 'Замбия', 'Лусака')
         , ('Африка', 'Зимбабве', 'Хараре')
         , ('Африка', 'Кабо-Верде', 'Прая')
         , ('Африка', 'Камерун', 'Яунде')
         , ('Африка', 'Кения', 'Найроби')
         , ('Африка', 'Коморы', 'Морони')
         , ('Африка', 'Кот-д’Ивуар', 'Ямусукро')
         , ('Африка', 'Лесото', 'Масеру')
         , ('Африка', 'Либерия', 'Монровия')
         , ('Африка', 'Маврикий', 'Порт-Луи')
         , ('Африка', 'Мавритания', 'Нуакшот')
         , ('Африка', 'Мадагаскар', 'Антананариву')
         , ('Африка', 'Малави', 'Лилонгве')
         , ('Африка', 'Мали', 'Бамако')
         , ('Африка', 'Марокко', 'Рабат')
         , ('Африка', 'Мозамбик', 'Мапуту')
         , ('Африка', 'Намибия', 'Виндхук')
         , ('Африка', 'Нигер', 'Ниамей')
         , ('Африка', 'Нигерия', 'Абуджа')
         , ('Африка', 'Республика Конго', 'Браззавиль')
         , ('Африка', 'Руанда', 'Кигали')
         , ('Африка', 'Сан-Томе и Принсипи', 'Сан-Томе')
         , ('Африка', 'Свазиленд', 'Мбабане')
         , ('Африка', 'Сейшельские Острова', 'Виктория')
         , ('Африка', 'Сенегал', 'Дакар')
         , ('Африка', 'Сомали', 'Могадишо')
         , ('Африка', 'Судан', 'Хартум')
         , ('Африка', 'Сьерра-Леоне', 'Фритаун')
         , ('Африка', 'Танзания', 'Додома')
         , ('Африка', 'Того', 'Ломе')
         , ('Африка', 'Тунис', 'Тунис')
         , ('Африка', 'Уганда', 'Кампала')
         , ('Африка', 'Ливия', 'Триполи')
         , ('Африка', 'ЦАР', 'Банги')
         , ('Африка', 'Чад', 'Нджамена')
         , ('Африка', 'Экваториальная Гвинея', 'Малабо')
         , ('Африка', 'Эритрея', 'Асмэра')
         , ('Африка', 'Эфиопия', 'Аддис-Абеба')
         , ('Африка', 'ЮАР', 'Претория')
         , ('Африка', 'Южный Судан', 'Джуба')

INSERT INTO CountryCapital (PartOfWorld, Country, CapitalCity)
    VALUES ('Америка', 'Антигуа и Барбуда', 'Сент-Джонс')
         , ('Америка', 'Аргентина', 'Буэнос-Айрес')
         , ('Америка', 'Багамы', 'Нассау')
         , ('Америка', 'Барбадос', 'Бриджтаун')
         , ('Америка', 'Белиз', 'Бельмопан')
         , ('Америка', 'Боливия', 'Сукре')
         , ('Америка', 'Бразилия', 'Бразилиа')
         , ('Америка', 'Венесуэла', 'Каракас')
         , ('Америка', 'Гаити', 'Порт-о-Пренс')
         , ('Америка', 'Гайана', 'Джорджтаун')
         , ('Америка', 'Гватемала', 'Гватемала')
         , ('Америка', 'Гвиана', 'Кайенна')
         , ('Америка', 'Гондурас', 'Тегусигальпа')
         , ('Америка', 'Гренада', 'Сент-Джорджес')
         , ('Америка', 'Доминика', 'Розо')
         , ('Америка', 'Доминиканская Республика', 'Санто-Доминго')
         , ('Америка', 'Канада', 'Оттава')
         , ('Америка', 'Колумбия', 'Богота')
         , ('Америка', 'Коста-Рика', 'Сан-Хосе')
         , ('Америка', 'Куба', 'Гавана')
         , ('Америка', 'Мексика', 'Мехико')
         , ('Америка', 'Никарагуа', 'Манагуа')
         , ('Америка', 'Панама', 'Панама')
         , ('Америка', 'Парагвай', 'Асунсьон')
         , ('Америка', 'Перу', 'Лима')
         , ('Америка', 'Сальвадор', 'Сан-Сальвадор')
         , ('Америка', 'Сент-Винсент и Гренадины', 'Кингстаун')
         , ('Америка', 'Сент-Китс и Невис', 'Бастер')
         , ('Америка', 'Сент-Люсия', 'Кастри')
         , ('Америка', 'Суринам', 'Парамарибо')
         , ('Америка', 'США', 'Вашингтон')
         , ('Америка', 'Тринидад и Тобаго', 'Порт-оф-Спейн')
         , ('Америка', 'Уругвай', 'Монтевидео')
         , ('Америка', 'Чили', 'Сантьяго')
         , ('Америка', 'Эквадор', 'Кито')
         , ('Америка', 'Ямайка', 'Кингстон')

INSERT INTO CountryCapital (PartOfWorld, Country, CapitalCity)
    VALUES ('Австралия и Океания', 'Австралия', 'Канберра')
         , ('Австралия и Океания', 'Вануату', 'Порт-Вила')
         , ('Австралия и Океания', 'Кирибати', 'Южная Тарава')
         , ('Австралия и Океания', 'Маршалловы Острова', 'Маджуро')
         , ('Австралия и Океания', 'Микронезия', 'Паликир')
         , ('Австралия и Океания', 'Новая Зеландия', 'Веллингтон')
         , ('Австралия и Океания', 'Палау', 'Нгерулмуд')
         , ('Австралия и Океания', 'Папуа — Новая Гвинея', 'Порт-Морсби')
         , ('Австралия и Океания', 'Самоа', 'Апиа')
         , ('Австралия и Океания', 'Соломоновы Острова', 'Хониара')
         , ('Австралия и Океания', 'Тонга', 'Нукуалофа')
         , ('Австралия и Океания', 'Тувалу', 'Фунафути')
         , ('Австралия и Океания', 'Фиджи', 'Сува')

SELECT * FROM CountryCapital

/*
USE master
DROP DATABASE TrainingCenter_Capitals
*/
