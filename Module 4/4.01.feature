﻿#language: ru

@tree

Функционал: Тест полей заказа покупателя

Как пользователь я хочу
заполненить поля документа 
чтобы проверить блокировку элементов

контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: Заполнение заказа

И я закрываю все окна клиентского приложения
Дано Я открываю навигационную ссылку "e1cib/list/Document.SalesOrder"
Когда открылось окно 'Заказы покупателей'
И я нажимаю на кнопку с именем 'FormCreate'
И элемент формы "Контрагент" не доступен
Когда открылось окно 'Заказ покупателя (создание)'
И я нажимаю кнопку выбора у поля с именем "Partner"
Тогда открылось окно 'Партнеры'
И в таблице "List" я выбираю текущую строку
Тогда открылось окно 'Заказ покупателя (создание) *'
Тогда элемент формы с именем "LegalName" стал равен 'Клиент 1'
Тогда элемент формы с именем "Agreement" стал равен 'Соглашение с клиентами (расчет по документам + кредитный лимит)'


