/*Полный*/

SELECT Hist.Код_Операции, Hist.Фамилия, Hist.GOT, История.дата, Список_Дисков.[Номер в каталоге]
FROM Список_Дисков   
  INNER JOIN 

    (SELECT История.Код_Операции, [Члены труппы].[Табельный номер], [Члены труппы].Фамилия, [Операции]![Операция] & [ТаблицаПолА]![Значение] AS GOT, История.дата, История.диск
    FROM ТаблицаПолА INNER JOIN (Операции INNER JOIN ([Члены труппы] INNER JOIN История ON [Члены труппы].[Табельный номер] = История.Член_Труппы) ON Операции.Код_Операции = История.Операция) ON ТаблицаПолА.Код = [Члены труппы].Пол) AS Hist 
  
  ON Список_Дисков.ID_Диска = Hist.диск
ORDER BY История.Код_Операции;

/*Без пола*/
SELECT Hist.Код_Операции, Hist.Фамилия, Hist.GOT, История.дата, Список_Дисков.[Номер в каталоге]
FROM Список_Дисков 
  INNER JOIN 

    (SELECT История.Код_Операции, [Члены труппы].[Табельный номер], [Члены труппы].Фамилия, [Операции]![Операция] AS GOT, История.дата
    FROM ТаблицаПолА INNER JOIN (Операции INNER JOIN ([Члены труппы] INNER JOIN История ON [Члены труппы].[Табельный номер] = История.Член_Труппы) ON Операции.Код_Операции = История.Операция) ON ТаблицаПолА.Код = [Члены труппы].Пол) AS Hist ON Список_Дисков.Взят = Hist.[Табельный номер]
ORDER BY История.Код_Операции;