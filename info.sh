#!/bin/bash

clear

Target_IP=$1

 if [ -z "$Target_IP" ]
 then
    echo " "
    echo "Ошибка, вы не ввели айпи адрес при запуске"
    echo "Пример валидного запуска: ./info.sh <ip>"
    exit 1
fi

echo "проверка по адресу: $Target_IP"

echo "=== Проверка системы==="
echo "твой юзернейм: ($USER)"
echo "Текущее время: $(date)"
echo "-----------------------"

if sudo ufw status | grep -q "Status: active"
then 
    echo "Фаервол активен. База защищена"
else
    echo "Фаервол не активен. База не защищена"
fi

echo "------------------------------------------"

if ping -c 1 -W 1 $Target_IP > /dev/null
then 
    echo "узел в сети, пакеыты проходят"
else
    echo "узел не доступен, пакеты не проходят"
fi
