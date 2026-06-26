#!/bin/bash

echo "сканирование подсети 192.168.100.x"

for i in {1..10}
do
    Current_IP="192.168.100.$i"

    if ping -c 1 -W 1 $Current_IP > /dev/null
    then 
        echo "живой узел $Current_IP ответил!"
    fi
done

echo "сканирование завершено"

