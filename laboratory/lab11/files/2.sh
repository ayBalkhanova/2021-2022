#!/bin/bash
gcc 2.c -o 2
./2
code=$?
case $code in
    0)echo "Число меньше нуля";;
    1)echo "Число равно нулю";;
    2)echo "Число больше нуля"
esac


