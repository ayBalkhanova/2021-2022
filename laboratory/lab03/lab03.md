---
## Front matter
title: "Отчёт по лабораторной работе №3"
subtitle: "Операционные системы"
author: "Балханова Алтана Юрьевна"

## Generic otions
lang: ru-RU

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Изучить идеологию и применение средств контроля версий, освоить
умения по работе с git.
Научиться оформлять отчёты с помощью легковесного языка разметки Markdown.

# Задание

– Сделать отчёт по предыдущей лабораторной работе в формате Markdown.
– В качестве отчёта предоставить отчёты в 3 форматах: pdf, docx и md (в архиве,
поскольку он должен содержать скриншоты, Makefile и т.д.)

# Теоретическое введение

Система контроля версий Git представляет собой набор программ командной строки.
Доступ к ним можно получить из терминала посредством ввода команды git с различными опциями.
Благодаря тому, что Git является распределённой системой контроля версий, резервную
копию локального хранилища можно сделать простым копированием или архивацией.


# Выполнение лабораторной работы
1. Скачала pandoc:
![Версия pandoc](image/Screenshot_21.png){ #fig:001 width=70% }
1. Создала учётную запись на github:
![Учётная запись](image/Screenshot_1.1.png){ #fig:001 width=70% }
1. Задала имя и email своего репозитория:
![Имя](image/Screenshot_18.png){ #fig:001 width=70% }
![email](image/Screenshot_23.png){ #fig:001 width=70% }
1. Настроила utf-8 в выводе сообщений git:
![utf-8](image/Screenshot_24.png){ #fig:001 width=70% }
1. Настроила верификацию и подписание коммитов git, задала имя
начальной ветки (будем называть её master):
![имя начальной ветки](image/Screenshot_25.png){ #fig:001 width=70% }
1. Задала параметры autocrlf и safecrlf:
![параметр autocrlf](image/Screenshot_26.png){ #fig:001 width=70% }
![параметр safecrlf](image/Screenshot_27.png){ #fig:001 width=70% }
1. Создала ключ ssh – по алгоритму rsa с ключём размером 4096 бит:
![ключ ssh](image/Screenshot_2.png){ #fig:001 width=70% }
![ключ создался](image/Screenshot_3.png){ #fig:001 width=70% }
1. Создала ключ ssh – по алгоритму ed25519:
![ключ ssh](image/Screenshot_4.png){ #fig:001 width=70% }
![ключ создался](image/Screenshot_5.png){ #fig:001 width=70% }
1. Создала ключи pgp:
![ключ pgp](image/Screenshot_6.png){ #fig:001 width=70% }
	- Выбрала тип ключа RSA и RSA:
	![тип ключа](image/Screenshot_7.png){ #fig:001 width=70% }
	- Выбрала размер ключа 4096:
	![размер ключа](image/Screenshot_8.png){ #fig:001 width=70% }
	- Выбрала срок действия - неограничен:
	![срок действия](image/Screenshot_9.png){ #fig:001 width=70% }
	- Для составления идентификатора пользователя я ввела своё имя и адрес
электронной почты:
	![составление идентификатора](image/Screenshot_10.png){ #fig:001 width=70% }
	- Ввела фразу-пароль для защиты ключа:
	![фраза-пароль](image/Screenshot_11.png){ #fig:001 width=70% }
	- Вывела список ключей и пыталась скопировать отпечаток приватного
ключа:
	![список ключей](image/Screenshot_20.png){ #fig:001 width=70% }
	![копироваине ключа](image/Screenshot_12.png){ #fig:001 width=70% }
	- Но у меня это не получилось. Во время выполнения отчёта я поняла, что
проблема была в том, что я не убрала угловые скобки <>, когда писала
свой PGP Fingerprint. Но во время выполнения лабораторной работы, я
зашла на github, где нашла, как вывести отпечаток ключа:
	![инструкция о том, как вывести ключ](image/Screenshot_13.png){ #fig:001 width=70% }
	- Затем, я ввела эту команду, меняя данный пример отпечатка ключа на
свой и скопировала выведенный ключ:
	![копирование ключа](image/Screenshot_14.png){ #fig:001 width=70% }
	- После этого я перешла в настройки GitHub, нажала на кнопку New GPG
key и вставила скопированный ключ в поле ввода:
	![добавление ключа](image/Screenshot_15.png){ #fig:001 width=70% }
	- Так он выглядит:
	![ключ добавился](image/Screenshot_16.png){ #fig:001 width=70% }
1. Затем я попыталась настроить автоматические подписи коммитов git, но
не убрала угловые скобки <>, из-за чего операция не удалась. Это я
поняла только во время выполнения отчёта:
![автоматические подписи коммитов git](image/Screenshot_5.png){ #fig:001 width=70% }
1. Закончила делать отчёт по второй лабораторной работе в Markdown
![отчёт в markdown](image/Screenshot_22.png){ #fig:001 width=70% }


# Выводы

- Я изучила идеологию и применение средств контроля версий, освоила
умения по работе с git.
- Я научилась оформлять отчёты с помощью легковесного языка разметки Markdown.

