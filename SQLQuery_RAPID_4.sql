
----------------------------------------------------------
---                        Тема № 1
----------------------------------------------------------

-- SELECT
SELECT * FROM ЗАКАЗЫ;


SELECT Address, Size, Leasing  from [РЕКЛАМНЫЙ ЩИТ];

SELECT District as Район, Orientation as Приметы FROM [РЕКЛАМНЫЙ ЩИТ];

-- WHERE
SELECT CustomerlD FROM АРЕНДАТОР WHERE Bank = "ВТБ";

/*
SELECT * FROM ТОВАРЫ WHERE КодКатегории = 1 AND Цена > 50;

SELECT НаимТов, КодКатегории FROM ТОВАРЫ WHERE КодКатегории = 1 
       OR КодКатегории = 3;

SELECT НаимТов, КодКатегории FROM ТОВАРЫ WHERE КодКатегории = 1
	UNION
SELECT НаимТов, КодКатегории FROM ТОВАРЫ WHERE КодКатегории = 3;

SELECT НаимТов, КодКатегории FROM ТОВАРЫ WHERE КодКатегории IN (1,3);

SELECT НаимТов, КодКатегории FROM ТОВАРЫ WHERE КодКатегории NOT IN (1,3);

SELECT * FROM ТОВАРЫ WHERE Цена IS NULL;

SELECT * FROM ТОВАРЫ WHERE Цена IS NOT NULL;

SELECT НаимТов, Цена, Цена * 1.2 as [Цена с НДС] FROM ТОВАРЫ;

SELECT	НаимТов as Товар, Цена, 'руб.' as ' ', 
		Цена * 1.2 as [Цена с НДС], 'руб.' as ' '
FROM ТОВАРЫ;

SELECT * FROM ТОВАРЫ ORDER BY Цена;

SELECT НаимТов, КодТовара FROM ТОВАРЫ ORDER BY НаимТов;

SELECT НаимТов as Товар, Цена, КодКатегории as [Код категории]
		FROM ТОВАРЫ ORDER BY КодКатегории, Цена;

SELECT КодКатегории FROM ТОВАРЫ;

SELECT DISTINCT КодКатегории FROM ТОВАРЫ;
*/