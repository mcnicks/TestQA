﻿#language: ru

@tree

Функционал: Выполнение финального задания

Как инженер тестирования я хочу
проверить функциональость отдельных элементов конфигурации 
чтобы <бизнес-эффект> 

Сценарий: Проверка кнопки добавление изображения
И я закрываю все окна клиентского приложения
И В командном интерфейсе я выбираю 'Товарные запасы' 'Товары'
Тогда открылось окно 'Товары'
И я нажимаю на кнопку с именем 'ФормаСоздать'
И элемент "Картика" присутствует на форме Тогда

Сценарий: Проверка отчета Отстатки
И я закрываю все окна клиентского приложения
И В командном интерфейсе я выбираю 'Товарные запасы' 'Остатки товаров'
Тогда открылось окно 'Остатки товаров'
И в табличном документе 'Результат' я перехожу к ячейке "R1C1"
И я нажимаю на кнопку с именем 'ФормаЗагрузитьВариант'
Тогда открылось окно 'Выбор варианта отчета'
И я нажимаю на кнопку с именем 'Загрузить'
И Пауза 5
Тогда открылось окно 'Остатки товаров'
И я нажимаю на кнопку с именем 'ФормаСформировать'

Сценарий: Проверка документа Расход товара
И я закрываю все окна клиентского приложения
И Я открываю навигационную ссылку "e1cib/list/Документ.РасходТовара"
Когда открылось окно 'Продажи товара'
И я нажимаю на кнопку с именем 'ФормаСоздать'
Тогда открылось окно 'Продажа товара (создание)'
И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Магазин "Бытовая техника"'
И из выпадающего списка с именем "Склад" я выбираю точное значение 'Склад отдела продаж'
И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
Тогда открылось окно 'Товары'
Когда открылось окно 'Товары'
И в таблице "Список" я перехожу к строке:
	| 'Код'       | 'Наименование'  |
	| '000000012' | 'Электротовары' |
И в таблице "Список" я выбираю текущую строку
И в таблице "Список" я выбираю текущую строку
И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Продажа товара (создание) *'
И я перехожу к следующему реквизиту
И в таблице "Товары" я завершаю редактирование строки
И я нажимаю на кнопку с именем 'ФормаПровести'
Когда открылось окно 'Продажа * от *'
И я нажимаю на кнопку с именем 'ФормаДокументРасходТовараПечатьРасходнойНакладной'
Тогда табличный документ "SpreadsheetDocument" равен:
	| 'Расход товара' | ''                                  | ''           | ''      |
	| ''              | ''                                  | ''           | ''      |
	| 'Номер'         | *                                   | ''           | ''      |
	| 'Дата'          | *                                   | ''           | ''      |
	| 'Покупатель'    | 'Магазин "Бытовая техника"'         | ''           | ''      |
	| 'Склад'         | 'Склад отдела продаж'               | ''           | ''      |
	| 'Сумма'         | '6 000 рублей (Шесть тысяч рублей)' | ''           | ''      |
	| 'Вес'           | ''                                  | ''           | ''      |
	| ''              | ''                                  | ''           | ''      |
	| 'Товар'         | 'Цена'                              | 'Количество' | 'Сумма' |
	| 'Veko876N'      | '6 000'                             | '1'          | '6 000' |
И я закрываю текущее окно
Когда открылось окно 'Продажа * от *'
И В текущем окне я нажимаю кнопку командного интерфейса 'Регистр взаиморасчетов с контрагентами'
Тогда таблица "Список" стала равной:
	| 'Период' | 'Регистратор' | 'Номер строки' | 'Контрагент'                | 'Сумма'    | 'Валюта' |
	| *        | *             | '1'            | 'Магазин "Бытовая техника"' | '6 000,00' | ''       |
Когда открылось окно 'Продажа * от *'
И В текущем окне я нажимаю кнопку командного интерфейса 'Регистр продаж'
Тогда таблица "Список" стала равной:
	| 'Период' | 'Регистратор' | 'Номер строки' | 'Покупатель'                | 'Сумма'    | 'Товар'    | 'Количество' |
	| *        | *             | '1'            | 'Магазин "Бытовая техника"' | '6 000,00' | 'Veko876N' | '1,00'       |
Когда открылось окно 'Продажа * от *'
И В текущем окне я нажимаю кнопку командного интерфейса 'Регистр товарных запасов'
Тогда таблица "Список" стала равной:
	| 'Период' | 'Регистратор' | 'Номер строки' | 'Склад'               | 'Товар'    | 'Количество' |
	| *        | *             | '1'            | 'Склад отдела продаж' | 'Veko876N' | '1,00'       |






