﻿pasVISA

Модуль, позволяющий работать с библиотекой visa32.dll из программ на Паскале.
Получено с помощью адаптации текста на С , входящего в состав реализации TekVISA.
Применялась для реализаций  TekVISA (фирма Tektronix) и NI VISA (фирма National Instrumens).
Не реализована работа с параметрами типа ViVaList (это фактически список параметров неопределенной
длины, чего нет в Паскале). Соответственно вызовами
viVPtintf, viVSPrintf,
viVScanf, viVSScanf,
viVQueryf
пользоваться не следует.

Операции Memory I/O Operations не тестировались (не было подходящей аппаратуры). Остальные прошли
довольно длительное тестирование и, можно считать, отлажены.

Для тестирования приведен небольшой проект TestVISA.dpr на Delphi. При запуске на главной форме
два checkbox, которые информируют:
  что visa32.dll найдена и загружена;
  что Resource Manager инициализирован вызовом viOpenDefaultRM.
Далее есть две формы для тестирования посылки и приема текстовых команд с устройством.

SimpleTest кнопкой Open открывает ресурс, описываемый строкой Resuource name . Если ресурс
нормально открыт, то становится доступной кнопка Go . Кнопка Go запускает процесс передачи
текста запроса в строке SendString и прием ответа. Откровенно говоря текст этого примера не
мой - где-то синтернетил. Поэтому там есть часть. связанная с кнопкой SendByte, которую я не
очень понимаю, но стирать не стал - может, кому-то понадобится. *IDN? для большинства
устройств означает запрос идентификационной строки - тип устройства, его серийный номер и т.п.
При этом, если посмотреть текст модуля, то при работе используется внутренняя буферизация с
помощью VISA (поэтому если ответ содержит менее 3 символов, то будет ошибка чтения).

VISA Monitor также позволяет с помощью кнопки Open открыть устройство Resource name, но теперь
его можно выбрать и в отдельном диалоге с помощью кнопки Find.
Если устройство нормально открылось, то становятся доступными кнопки Send и Get, которые позволяют
послать команду на устройство или получить ответ от устройства (если команда предполагает получение
ответа). Кнопка Clear очищает поле получения ответов.