#!/bin/bash
for A in *
do if test -d $A
   then echo $A: "является каталогом"
   else echo -n $A: "является файлом"
	if test -w $A
	then echo " Файл доступен для записи"
	elif test -r $A
	then echo " Файл доступен для чтения"
	else echo " Файл не доступен для чтения и записи"
	fi
   fi
done
