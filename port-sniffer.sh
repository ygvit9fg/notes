#!/bin/bash

Target="192.168.100.1"

echo "сканирование портов на $Target"

for port in 22 443 80 
do
    if timeout 1  bash -c "echo > /dev/tcp/$Target/$port" 2>/dev/null
    then
        echo "порт $port открыт"
    else 
        echo "порт $port закрыт"
    fi

done

echo "Сканирование завершено"
