---
title: "7. Слияние веток"
weight: 70
---

## Теоретические сведения

### Слияние веток

Основная цель создание дополнительных веток – проработать отдельный элемент проекта автономно а затем присоединить его к проекту. Поэтому в большинстве случаев эти ветки в конечном итоге объединяются с веткой ```master```. Процедура объединения веток называется **слияние** (merge).

Для слияния текущей ветки с какой-либо другой используется команда 

<pre>
git merge <i>имя_ветки</i>
</pre>

В результате выполнения этой команды в текущей ветке появится новый коммит. Этот коммит будет иметь два предка – последние коммиты обоих веток, участвующих в слиянии. Содержимое этого коммита будет включать содержимое коммитов обоих веток.

Изменения, происходящие с репозиторием при выполнении команды ```git merge``` схематично показаны на рисунках 3 и 4.
<center>
<img src="../images/before.png" width=30%>

Рисунок 3 – Состояние репозитория до слияния
</center>

<center>
<img src="../images/merge.png"  width=45%>

Рисунок 4 – Состояние репозитория после слияния
</center>

После слияния веток одна из них становится лишней. Ее можно удалить командой ```git branch -d```.

Типичная последовательность действий, которой завершается работа над какой-либо задачей проекта в отдельной ветке (назовем ее для примера ```task```), будет такой:

<pre>
git checkout master
git merge task
git branch -d task
</pre>

### Конфликты при слиянии

При слиянии может возникнуть ситуация, когда фрагмент в каком-либо файле проекта в различных ветках отредактирован по разному. Такая ситуация называется **конфликт** (conflict).

В случае возникновения конфликтов git заносит в создаваемый при объединении коммит файл, содержащий текст обоих версий. Начало конфликтного фрагмента помечается строкой, начинающиеся с символов ```<<<<<<<``` и содержащей имя первой ветки, а заканчивается строкой, начинающиеся с символов ```>>>>>>>``` и содержащей имя вливаемой ветки. Версии из каждой ветки разделяются строкой с символами ```=======```. Такой файл получает статус **не объединенный** (unmerged).

При возникновении конфликта пользователь должен в ручном режиме его устранить. Посмотреть список не объединенных файлов можно с помощью команды ```git status```. После редактирования конфликтной области и сохранения файла, нужно сообщить git о разрешении конфликта с помощью индексирования этого файла (после чего он перейдет в состояние «измененный»).

### Перемещение

В СКВ git существует альтернативный способ объединения веток. Он называется **Перемещение** (rebase, часто переводиться как перебазирование).

В общем случае операции слияния и перемещения формируют одинаковый результирующий коммит. Отличаются эти операции внутренними алгоритмами получения результирующего коммита, а также тем, что операция перемещения изменяет историю коммитов. Схематично результат перемещения для приведенного выше репозитория представлен на рисунке 5.

<center>
<img src="../images/rebase.png" width=45%>

Рисунок 5 – Состояние репозитория после перемещения
</center>

В случае операции слияния имеющиеся в репозитории коммиты не изменяются, в частности, не изменяются их предки. Операция перемещения изменяет историю коммитов, размещая коммиты ветки, в которой происходит слияния, после коммитов ветки, с которой происходит слияние.
В результате коммит, возникающий при операции перемещения, имеет одного предка, а обе ветки, участвующие в слиянии, состоят из одной цепочки коммитов.

Какой способ объединения веток использовать (слияние или перемещение) во многом является делом вкуса. Слияние сохраняет историю коммитов, а перемещение позволят прибраться в структуре коммитов. Единственное существенное ограничение, которое накладывается на выбор операции, состоит в том, что перемещение нельзя использовать для коммитов, для которых есть копии в других репозиториях или на сервере (подробнее копирование репозиториев рассмотрено в следующей работе).

## Задание к работе

После выполнения каждого пункта задания нужно выполнить команды для просмотра состояния тех частей репозитория (дерева коммитов, индекс, файлы из рабочего каталога), которые могут измениться при выполнении этого пункта.

1. Предположим, что перед нами стоит задача записать контактную информацию. В репозитории из предыдущей работы создайте ветку для выполнение задачи, назовите ее по шаблону ```имя_one```, где ```имя``` – транслитерация вашего имени.
2. В этой ветке создайте коммит, в котором в файл добавлен Ваш номер телефона (можете указать произвольный номер).
3. Произведите слияние к ветки ```master``` ветки ```имя_one```. Удалите ветку ```имя_one```.
4. Создайте новую ветку с названием по шаблону ```имя_two```. Добавьте в нее коммит, в котором в файл добавлен Ваш домашний адрес (можете указать произвольный адрес).
5. В ветку ```master``` добавьте коммит, в котором в файл добавлен ваш электронный адрес.
6. Произведите слияние к ветки ```master``` ветки ```имя_two```. Разрешите возникший конфликт.
7. Повторите предыдущие пункты (использую имена веток ```имя_three``` и ```имя_four```), выполняя вместо операции слияния операцию перемещения. Сделайте выводы о различиях этих операций.