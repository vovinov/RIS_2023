﻿
----------------------------------------------------------
---                        Тема № 4
----------------------------------------------------------

----------------------------------------------------------
-- SELECT
----------------------------------------------------------

-- Список заказов
SELECT * FROM ORDERS;

-- Список заказов расширенный с указанием столбцов
SELECT Address, Size, Leasing  from [РЕКЛАМНЫЙ ЩИТ];

-- Вывести район и приметы, где находится рекламный щит
SELECT District as Район, Orientation as Приметы FROM [РЕКЛАМНЫЙ ЩИТ];

----------------------------------------------------------
-- WHERE
----------------------------------------------------------

-- Вывести конкретного арендатора по его ИНН
SELECT * FROM  АРЕНДАТОР WHERE CustomerlD = 770123456;

-- Вывести арендаторов, у которых банк ВТБ
SELECT * FROM  АРЕНДАТОР WHERE bank = N'ВТБ';

-- Вывести арендаторов, у которых банк ВТБ И налоговая № 23
SELECT * FROM  АРЕНДАТОР WHERE bank = N'ВТБ' AND Tax = 23;

-- Вывести арендаторов, у которых банк ВТБ ИЛИ налоговая № 23
SELECT * FROM  АРЕНДАТОР WHERE bank = N'ВТБ' OR bank = N'Сбер';

-- Вывести арендаторов, у которых банк ВТБ И банк Сбер
SELECT * FROM  АРЕНДАТОР WHERE bank = N'ВТБ'
	UNION
SELECT * FROM  АРЕНДАТОР WHERE bank = N'Сбер';

----------------------------------------------------------
-- SELECT + логика
----------------------------------------------------------

-- Вывести ИНН арендатора, цену аренды и прогнозируемое увеличение цены со след. года
SELECT RegNumber, Leasing, Leasing * 1.2 as [Цена с НДС] FROM [РЕКЛАМНЫЙ ЩИТ];

-- Вывести ИНН арендатора, цену аренды и прогнозируемое увеличение цены со след. года 
-- + добавление отдельных столбцов -руб-
SELECT	RegNumber as Товар, Leasing as N'Цена аренды', N'руб.' as ' ', 
		Leasing * 1.2 as [Цена аренды с НДС], N'руб.' as ' '
FROM [РЕКЛАМНЫЙ ЩИТ];

----------------------------------------------------------
-- ORDER BY
----------------------------------------------------------

-- Вывести рекламные щиты с группировкой по цене
SELECT * FROM [РЕКЛАМНЫЙ ЩИТ] ORDER BY Leasing;

-- Вывести ИНН арендатора, рекламные щиты с группировкой по цене
SELECT RegNumber, City, Square FROM [РЕКЛАМНЫЙ ЩИТ] ORDER BY square;

----------------------------------------------------------
-- DISTINCT уникальные значения
----------------------------------------------------------

SELECT  DISTINCT* FROM [РЕКЛАМНЫЙ ЩИТ];


----------------------------------------------------------
---                        Тема № 5
----------------------------------------------------------

-- Вывести название рекламы по номеру 
SELECT id as [Номер рекламы], rec.name 
		FROM ORDERS ord INNER JOIN РЕКЛАМА rec
		ON ord.advID = rec.AdvID;	
		 
-- Вывести название рекламы по номеру и по городу 	
SELECT id as [Номер рекламы], rec.name as [Имя рекламы], shield.city as N'Город'
		FROM ORDERS ord INNER JOIN РЕКЛАМА rec
		ON ord.advID = rec.AdvID
		INNER JOIN [РЕКЛАМНЫЙ ЩИТ] shield
		ON  ord.regNumber = shield.RegNumber


-- вывести номер рекламы и стоимость
SELECT id as [Номер заказа], rec.name, rec.cost
		FROM ORDERS ord LEFT JOIN РЕКЛАМА rec
		ON ord.advID = rec.AdvID;
		
-- вывести номер рекламы и стоимость
SELECT id as [Номер заказа], rec.name, rec.cost
		FROM ORDERS ord RIGHT JOIN РЕКЛАМА rec
		ON ord.advID = rec.AdvID;	


----------------------------------------------------------
---                        Тема № 6
----------------------------------------------------------

SELECT GETDATE() as 'GETDATE', CURRENT_TIMESTAMP as 'CURRENT_TIMESTAMP';

SELECT DATENAME(YEAR, GETDATE()) as 'Результат', 'DATENANE' as Функция;
SELECT DATENAME(QUARTER, GETDATE()) as 'Результат', 'DATENANE' as Функция;
SELECT DATENAME(MONTH, GETDATE()) as 'Результат', 'DATENANE' as Функция;
SELECT DATEPART(MONTH, GETDATE()) as 'Результат', 'DATEPART' as Функция;

SELECT DATEADD(YY, 2, GETDATE()) as 'Результат', N'DATEADD - добавит два года к текущей дате' as Функция;

-- Средняя цена изготовления рекламы
SELECT N'Средняя цена'
	+ CAST(AVG(cost) as char(15))
	+ N' руб' as [Изготовление рекламы]
FROM РЕКЛАМА;

-- Средняя цена аренды рекламного щита
SELECT N'Средняя цена' 
	+ CONVERT(nchar(15), AVG(Leasing)) 
	+ N'руб' as [Аренда рекламного щита] 
FROM [РЕКЛАМНЫЙ ЩИТ];

