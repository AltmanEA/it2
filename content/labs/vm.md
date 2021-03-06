---
title: "1. Установка Ubuntu на виртуальную машину"
weight: 10
---
## Введение

Целью данной лабораторной работы является знакомство с основами работы с виртуальными машинами и графическим интерфейсом операционной системы Ubuntu.

## Установка VirtualBox

Скачайте последнюю версию дистрибутива (platform package) [VirtualBox](https://www.virtualbox.org/) для своей операционной системы и установите его. При установке согласитесь на установку дополнительных сетевых драйверов и пакета VirtualBox Extension Pack.

## Создание виртуальной машины с операционной системой Ubuntu.

Скачайте со страницы [https://www.osboxes.org/ubuntu/](https://www.osboxes.org/ubuntu/) образ виртуальной машины с установленной операционной системой Ubuntu. Поскольку на этой страницы выкладываются образы, в том числе, и тестовых сборок, рекомендуется посмотреть [список версий Ubuntu](https://ru.wikipedia.org/wiki/Список_версий_Ubuntu) и скачать текущую версию.

Извлеките из архива файлы образа (с расширением *.vdi). Этот файл хранит содержимое винчестера (жесткого диска) виртуальной машины.

Запустите Oracle VM VirtualBox.

Откройте в нем «менеджер виртуальных носителей». В нем нажмите кнопку «добавить» и добавьте виртуальный жесткий диск указав разархивированный файл.

В Oracle VM VirtualBox нажмите кнопку «создать» для создания виртуальной машины. В открывшемся окне перейдите в экспертный режим и установите следующие параметры:

- имя и папка машины – исходя из собственных предпочтений;
- тип – Linux;
- версия – Ubuntu (64-бит);
- объем памяти – передвинуть указатель до конца зеленого поля;
- жесткий диск – использовать существующий виртуальный жесткий диск (выбрать добавленный ранее жесткий диск).

Нажмите кнопку «создать». В Oracle VM VirtualBox появиться виртуальная машина с указанным вами именем. Ее нужно запустить.

## Первоначальная настройка операционной системы Ubuntu

После запуска виртуальной машины нужно выбрать пользователя и ввести его пароль. В рекомендованных выше образах операционной системы имеется пользователь «osboxes.org» с паролем «osboxes.org». Такой же пароль у пользователя «root».

После первого входа в систему будет предложено сделать дополнительные настройки системы (подключить аккаунт, обновить и др.). Эту настройку можно опустить (нажимая кнопки «skip», «next» и «done» или закрывая окна).

Переведем интерфейс операционной системы на русский язык. Для этого в контекстном меню (которое вызывается нажатием правой кнопки мыши на рабочем столе) выбираем пункт «settings», в открывшемся окне находим «Region & Language». 

Далее нажимаем кнопку «Manage installed Languages». Если появляется окно с надписью «The language support is not installed completely» нажимаем «install», если появляется окно «Authentication Required» вводим пароль пользователя «root» и нажимаем «Authenticate». В окне «Language Support» нажимаем кнопку «Install/Remove languages» и добавляем русский язык. Нелишним будет нажать кнопку «Apply System-Wide» (добавить язык по всей системе). Далее переходим по вкладку «Regional Formats», устанавливаем там «русский (Российская Федерация)» и нажимаем «Apply System-Wide». После чего перегружаем виртуальную машину (выпадающее меню в правом верхнем углу – «Power Off» – «Restart»).

После перезагрузки идем снова в «Region & Language», нажимаем «Language», выбираем «Russian», нажимаем «Select» и «Restart». После еще одной перезагрузки операционная система будет перезагружена с русским интерфейсом и предложит переименовать некоторые папки на русский язык (что делать не стоит).

## Знакомство с интерфейсом

Найдите на панели программ программу «Файлы» и запустите её. Перейдите в «Другие места», определите размер жесткого диска виртуальной машины. Зайдите в папку «Компьютер», затем в папку «home», затем в «osboxes».

Найдите иконку «Показать приложения» и нажмите ей. Найдите приложение «Terminal» и запустите его. Добавьте его в избранное на панели программ.

С помощью команды «pwd» в терминале узнайте текущий каталог (это должен быть домашний каталог текущего пользователя).

Посмотрите содержимое текущего каталога с помощью команды «ls».

Команда «cd *каталог*» позволяет перейти в *каталог*. Перейдите с её помощью в корневой каталог и посмотрите его содержимое (для перехода в родительский каталог укажите аргумент «..»).
