#!/bin/bash
a=$1
b=$2
c=$(date +"%s")
d=$(date +"%s")
((e=$d-$c))
while ((e<a))
do
    echo "ожидание"
    sleep 1
    d=$(date +"%s")
    ((e=$d-$c))
done
c=$(date +"%s")
d=$(date +"%s")
((e=$d-$c))
while ((e<b))
do
    echo "выполнение"
    sleep 1
    d=$(date +"%s")
    ((e=$d-$c))
done

   
