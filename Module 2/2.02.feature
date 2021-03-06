#language: ru
@ExportScenarios
@tree

Функционал: Проверки заполненя документа


Сценарий: Заполнение шапки заказа
И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
Тогда открылось окно 'Заказы товаров'
И я нажимаю на кнопку с именем 'ФормаСоздать'
Тогда открылось окно 'Заказ (создание)'
И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
И я нажимаю кнопку выбора у поля с именем "Покупатель"
Тогда открылось окно 'Контрагенты'
И в таблице  "Список" я перехожу на один уровень вниз
И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Заказ (создание) *'
И из выпадающего списка с именем "Склад" я выбираю точное значение 'Склад отдела продаж'

Сценарий: Проверка расчета ТЧ
Когда открылось окно 'Заказ (создание) *'
И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
Тогда открылось окно 'Товары'
И в таблице  "Список" я перехожу на один уровень вниз
И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Заказ (создание) *'
И в таблице "Товары" я завершаю редактирование строки
Тогда таблица "Товары" стала равной:
	| 'Товар'     | 'Цена'     | 'Количество' | 'Сумма'    |
	| 'Босоножки' | '2 200,00' | '1'          | '2 200,00' |



