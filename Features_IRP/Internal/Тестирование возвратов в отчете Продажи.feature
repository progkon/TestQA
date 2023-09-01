﻿#language: ru

@tree

Функционал: Тестирование возвратов в отчете Продажи

Как Оператор я хочу
проверить что возвраты отображаются в отчете по продажам 
чтобы показатели отображались с минусом   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Подготовка данных
	и экспорт основных данных
	и Выгрузка возврата товаров
	И я выполняю код встроенного языка на сервере
	|'Документы.SalesReturn.НайтиПоНомеру("1").ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение);'|

Сценарий: Проверка отчета продажи
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Отчеты' 'D2001 Продажи'
	Тогда открылось окно 'D2001 Продажи'
	И я нажимаю на кнопку с именем 'FormGenerate'
	Дано Табличный документ "Result" равен макету "ТестВозвратов" по шаблону
	
	
		
		
