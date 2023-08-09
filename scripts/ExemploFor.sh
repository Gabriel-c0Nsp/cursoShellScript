#!/bin/zsh

echo -n "Informe o início da sequência: "
read INICIO

echo -n "Informe o final da sequência: "
read FINAL

for i in $(seq "$INICIO" "$FINAL"); do
    echo "Exibindo o valor $i"
    sleep 1
done
