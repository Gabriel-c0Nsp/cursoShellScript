#!/bin/zsh

clear
echo -n "Informe o limite de processos: "
read MAXIMO

while [ $(ps axu | wc -l) -le $MAXIMO ]
do
    echo "Tudo OK"
    echo "Processos atuais: $(ps axu | wc -l)"
    sleep 3
    echo
done

echo "Limite de processos Excedido"
echo "Por favor verifique o sistema"