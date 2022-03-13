#language: en
@tree

Feature: export scenarios

Background:
	Given I launch TestClient opening script or connect the existing one

Scenario: Refill constant SSLIMAP by value

	And I refill constant "SSLIMAP" by value "False"

Scenario: Refill constant SSLPOP3 by value

	And I refill constant "SSLPOP3" by value "False"

Scenario: Refill constant SSLSMTP by value

	And I refill constant "SSLSMTP" by value "False"

Scenario: Refill constant АдресPOP3Сервера by value

	And I refill constant "АдресPOP3Сервера" by value "pop.mail.ru"

Scenario: Refill constant АдресSMTPСервера by value

	And I refill constant "АдресSMTPСервера" by value "smtp.mail.ru"

Scenario: Refill constant ВалютаУчета by value

	And I refill constant "ВалютаУчета" by value "e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5"

Scenario: Refill constant ВоспроизводитьТекстУведомления by value

	And I refill constant "ВоспроизводитьТекстУведомления" by value "False"

Scenario: Refill constant ИспользоватьIMAP by value

	And I refill constant "ИспользоватьIMAP" by value "False"

Scenario: Refill constant ИмяОтправителяПочтовогоСообщения by value

	And I refill constant "ИмяОтправителяПочтовогоСообщения" by value "tovarshop@mail.ru"

Scenario: Refill constant ИспользоватьAPNS by value

	And I refill constant "ИспользоватьAPNS" by value "False"

Scenario: Refill constant ИспользоватьFCM by value

	And I refill constant "ИспользоватьFCM" by value "False"

Scenario: Refill constant ИспользоватьWNS by value

	And I refill constant "ИспользоватьWNS" by value "False"

Scenario: Refill constant ИспользоватьСетьПередачиДанных by value

	And I refill constant "ИспользоватьСетьПередачиДанных" by value "False"

Scenario: Refill constant ИспользоватьСотовуюСеть by value

	And I refill constant "ИспользоватьСотовуюСеть" by value "False"

Scenario: Refill constant ИспользоватьСпутники by value

	And I refill constant "ИспользоватьСпутники" by value "False"

Scenario: Refill constant КодНовогоУзлаПланаОбмена by value

	And I refill constant "КодНовогоУзлаПланаОбмена" by value "3"

Scenario: Refill constant ОтметкаНаФотоснимкеДата by value

	And I refill constant "ОтметкаНаФотоснимкеДата" by value "False"

Scenario: Refill constant ПарольPOP3 by value

	And I refill constant "ПарольPOP3" by value "tovar1999"

Scenario: Refill constant ПользовательPOP3 by value

	And I refill constant "ПользовательPOP3" by value "tovarshop"

Scenario: Refill constant ПортPOP3 by value

	And I refill constant "ПортPOP3" by value "110"

Scenario: Refill constant ПортSMTP by value

	And I refill constant "ПортSMTP" by value "25"

Scenario: Refill constant РаботаСТорговымОборудованием by value

	And I refill constant "РаботаСТорговымОборудованием" by value "False"

Scenario: Refill constant СертификатМобильногоПриложенияIOS by value

	And I refill constant "СертификатМобильногоПриложенияIOS" by value "ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9"

Scenario: Refill constant ТаймаутИнтернетПочты by value

	And I refill constant "ТаймаутИнтернетПочты" by value "60"

Scenario: Refill constant ТолькоБесплатные by value

	And I refill constant "ТолькоБесплатные" by value "False"

Scenario: Refill constant ТолькоЗащищеннаяАутентификацияIMAP by value

	And I refill constant "ТолькоЗащищеннаяАутентификацияIMAP" by value "False"

Scenario: Refill constant ТолькоЗащищеннаяАутентификацияPOP3 by value

	And I refill constant "ТолькоЗащищеннаяАутентификацияPOP3" by value "False"

Scenario: Refill constant ТолькоЗащищеннаяАутентификацияSMTP by value

	And I refill constant "ТолькоЗащищеннаяАутентификацияSMTP" by value "False"

Scenario: Refill constant УчетПоСкладам by value

	And I refill constant "УчетПоСкладам" by value "True"


Scenario: Data preparation

	// Catalog.Валюты

	And I check or create catalog "Валюты" objects:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Код'       | 'Наименование' | 'НаименованиеОсновнойВалюты' | 'НаименованиеРазменнойВалюты' |
		| 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'False'           | '000000001' | 'Рубли'        | 'рубль'                      | 'копейка'                     |

	// Catalog.ВидыЦен

	And I check or create catalog "ВидыЦен" objects:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | 'False'           | '000000002' | 'Оптовая'      |

	// Catalog.Контрагенты

	And I check or create catalog "Контрагенты" objects:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Родитель'                                                               | 'ЭтоГруппа' | 'Код'       | 'Наименование'        | 'Регион'                                                             | 'Индекс' | 'Страна' | 'Город'   | 'Улица'            | 'Дом' | 'Телефон'          | 'ЭлектроннаяПочта'       | 'Факс'             | 'ВебСайт' | 'ВидЦен'                                                             | 'ДополнительнаяИнформация' | 'КонтактноеЛицо' | 'Широта'  | 'Долгота' |
		| 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d710079' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'     | '000000013' | 'Магазин "Продукты"'  | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | '127400' | 'Россия' | 'Москва'  | 'Электрозаводская' | '21'  | '+7(999)568-45-96' | 'smirnov@product.ru'     | '+7(999)568-45-97' | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | ''                         | 'Смирнов А. Г.'  | 55.786113 | 37.70331  |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9bd00055d49b45e11dbd7c695f19911' | 'False'           | 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'     | '000000009' | 'Животноводство ООО ' | 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4233' | '125678' | 'Россия' | 'Барнаул' | 'Ленина'           | '2'   | '+7(999)261-79-79' | 'givotnovodstvo@mail.ru' | ''                 | ''        | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | ''                         | 'Папанов Р. Д.'  |           |           |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422d' | 'False'           | ''                                                                       | 'True'      | '000000002' | 'Покупатели'          | ''                                                                   | ''       | ''       | ''        | ''                 | ''    | ''                 | ''                       | ''                 | ''        | ''                                                                   | ''                         | ''               | ''        | ''        |
		| 'e1cib/data/Справочник.Контрагенты?ref=a9b000055d49b45e11db8c4c9d5c422c' | 'False'           | ''                                                                       | 'True'      | '000000001' | 'Поставщики'          | ''                                                                   | ''       | ''       | ''        | ''                 | ''    | ''                 | ''                       | ''                 | ''        | ''                                                                   | ''                         | ''               | ''        | ''        |

	// Catalog.Организации

	And I check or create catalog "Организации" objects:
		| 'Ссылка'                                                                 | 'ПометкаУдаления' | 'Код'       | 'Наименование' | 'ВалютныйУчет' |
		| 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c64' | 'False'           | '000000002' | 'ООО "Товары"' | 'True'         |

	// Catalog.Пользователи

	And I check or create catalog "Пользователи" objects:
		| 'Ссылка'                                                                  | 'ПометкаУдаления' | 'Код'                  | 'Наименование'         | 'ИдентификаторПользователяИБ'          |
		| 'e1cib/data/Справочник.Пользователи?ref=a2bc001d600da75a11e1f76c2216989a' | 'False'           | 'Менеджер по продажам' | 'Менеджер по продажам' | '756fb8ef-e08b-4c2b-966f-17ee59757135' |

	// Catalog.Регионы

	And I check or create catalog "Регионы" objects:
		| 'Ссылка'                                                             | 'ПометкаУдаления' | 'Код'       | 'Наименование' |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c422f' | 'False'           | '000000001' | 'Москва'       |
		| 'e1cib/data/Справочник.Регионы?ref=a9b000055d49b45e11db8c4c9d5c4233' | 'False'           | '000000005' | 'Алтай'        |

	// Catalog.Склады

	And I check or create catalog "Склады" objects:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Код'       | 'Наименование' | 'НеИспользовать' |
		| 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8c4c9d5c4221' | 'False'           | '000000003' | 'Средний'      | 'False'          |

	// Catalog.Товары

	And I check or create catalog "Товары" objects:
		| 'Ссылка'                                                            | 'ПометкаУдаления' | 'Родитель'                                                          | 'ЭтоГруппа' | 'Код'       | 'Наименование' | 'Артикул'  | 'Поставщик'                                                              | 'ФайлКартинки' | 'Вид'                    | 'Штрихкод' | 'Описание'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | 'ВТ_Вес' |
		| 'e1cib/data/Справочник.Товары?ref=a9bc00055d49b45e11dbc8caefc3ed8f' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a100005056c0000811e3f7c0ef680671' | 'False'     | '000000021' | 'Масло'        | 'ПРД-0002' | 'e1cib/data/Справочник.Контрагенты?ref=a9bd00055d49b45e11dbd7c695f19911' | ''             | 'Enum.ВидыТоваров.Товар' | ''         | '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"><html><head><meta name="viewport" content="initial-scale=1.0, width=device-width"></meta><meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"></meta><meta name="format-detection" content="telephone=no"></meta><style type="text/css">\nbody{margin:0px;padding:8px;overflow:auto;width:100%;height:100%;}\np{line-height:1.15;margin:0px;}\nol,ul{margin-top:0px;margin-bottom:0px;}\nimg{border: none;}\n</style></head><body>\n<p>Масло сливочное "Продукты с фермы".</p>\n<p><span style=" font-weight: bold;">Вес -</span><span style=" font-weight: bold;"> </span>180 г.</p>\n<p><span style=" font-weight: bold;">Жирность -</span><span style=" font-weight: bold;"> </span>72.5%.</p>\n<p><span style=" font-weight: bold;">Упаковка</span><span style=" font-weight: bold;"> -</span><span style=" font-weight: bold;"> </span>в фольге.</p>\n<p><br></p>\n</body></html>' |          |
		| 'e1cib/data/Справочник.Товары?ref=8ca0000d8843cd1b11dc8cfecc6a7df5' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a100005056c0000811e3f7c0ef680671' | 'False'     | '000000027' | 'Ряженка'      | 'R45'      | 'e1cib/data/Справочник.Контрагенты?ref=a9bd00055d49b45e11dbd7c695f19911' | ''             | 'Enum.ВидыТоваров.Товар' | ''         | '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"><html><head><meta name="viewport" content="initial-scale=1.0, width=device-width"></meta><meta http-equiv="Content-Type" content="text/html; charset=utf-8"></meta><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"></meta><meta name="format-detection" content="telephone=no"></meta><style type="text/css">\nbody{margin:0px;padding:8px;overflow:auto;width:100%;height:100%;}\np{line-height:1.15;margin:0px;}\nol,ul{margin-top:0px;margin-bottom:0px;}\nimg{border: none;}\n</style></head><body>\n<p>Ряженка "Продукты с фермы".</p>\n<p><br></p>\n<p><span style=" font-weight: bold;">Вес </span>- 350 г.</p>\n<p><span style=" font-weight: bold;">Жирность </span>- 2.5%.</p>\n<p><br></p>\n<p>Может входить в диетическое меню.</p>\n</body></html>'                                                                                                                                                                                             |          |
		| 'e1cib/data/Справочник.Товары?ref=a100005056c0000811e3f7c0ef680671' | 'False'           | 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db967987f1c226' | 'True'      | '000000099' | 'Молочные'     | ''         | ''                                                                       | ''             | ''                       | ''         | ''                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | ''       |
		| 'e1cib/data/Справочник.Товары?ref=a9b200055d49b45e11db967987f1c226' | 'False'           | ''                                                                  | 'True'      | '000000011' | 'Продукты'     | ''         | ''                                                                       | ''             | ''                       | ''         | ''                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | ''       |

	// Document.Заказ

	And I check or create document "Заказ" objects:
		| 'Ссылка'                                                         | 'ПометкаУдаления' | 'Номер'     | 'Дата'                | 'Проведен' | 'Покупатель'                                                             | 'Склад'                                                             | 'Валюта'                                                            | 'ВидЦен'                                                             | 'Организация'                                                            | 'СостояниеЗаказа'              | 'Автор'                                                                   | 'Сумма' |
		| 'e1cib/data/Документ.Заказ?ref=bbf30050ba5c887711e1fe6190994fe8' | 'False'           | '000000020' | '01.07.2020 23:29:22' | 'True'     | 'e1cib/data/Справочник.Контрагенты?ref=8ca0000d8843cd1b11dc8d043d710079' | 'e1cib/data/Справочник.Склады?ref=a9b000055d49b45e11db8c4c9d5c4221' | 'e1cib/data/Справочник.Валюты?ref=a9b000055d49b45e11db8c4421dda1c5' | 'e1cib/data/Справочник.ВидыЦен?ref=a9b000055d49b45e11db8c4c9d5c4225' | 'e1cib/data/Справочник.Организации?ref=8d34000d8843cd1b11dd2bea12f94c64' | 'Enum.СостоянияЗаказов.Открыт' | 'e1cib/data/Справочник.Пользователи?ref=a2bc001d600da75a11e1f76c2216989a' | 6750    |

	And I refill object tabular section "Товары":
		| 'Ссылка'                                                         | 'Товар'                                                             | 'Цена' | 'Количество' | 'Сумма' |
		| 'e1cib/data/Документ.Заказ?ref=bbf30050ba5c887711e1fe6190994fe8' | 'e1cib/data/Справочник.Товары?ref=a9bc00055d49b45e11dbc8caefc3ed8f' | 40     | 100          | 4000    |
		| 'e1cib/data/Документ.Заказ?ref=bbf30050ba5c887711e1fe6190994fe8' | 'e1cib/data/Справочник.Товары?ref=8ca0000d8843cd1b11dc8cfecc6a7df5' | 55     | 50           | 2750    |

