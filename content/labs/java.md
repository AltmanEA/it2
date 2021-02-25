---
title: "9. Платформа Java"
---
## Установка

> Далее предполагается, что на компьютере, на котором выполняются лабораторные работы, установленна ОС Windows. Если это не так, то часть работы, относящуюся к этой ОС можно выполнить на виртуальной машине. Виртуальные машины с Windows можно скачать тут: [https://developer.microsoft.com/ru-ru/windows/downloads/virtual-machines/](https://developer.microsoft.com/ru-ru/windows/downloads/virtual-machines/).

### Под Windows

Скачайте последнюю версию [OpenJDK](https://openjdk.java.net/) (zip архив с build версией). Для установки и настройки также понадобится редактор переменных среды Windows [Rapid Environment Editor](https://www.rapidee.com/ru).

Распакуйте содержимое архива в папку на компьютере. На домашнем компьютере папку выберите самостоятельно, при выполнении работы в учебных аудиториях месторасположение папку уточните у преподавателя.

С помощью RapidEE добавьте к переменной ```PATH``` текущего пользователя (на вкладке User Variables) путь к папке ```bin``` из архива.

Наберите в терминале команду ```java -version``` и убедитесь, что у Вас работает та версия OpenJDK, которую Вы устанавливали

### Под Linux

```
sudo tar -zxf /home/osboxes/server/openjdk-15.0.2_linux-x64_bin.tar.gz -C /usr/lib/jvm/
```
```
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-15.0.2/bin/java 3
```

```
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-15.0.2/bin/java 3
```