#!/bin/zsh

#########################################
#
# Questao01.sh - somar dois valores fornecidos 
#
# Autor: Gabriel Silva (gabrielsilvaaires62@gmail.com)
# Data de criação: 02/08/2023
# Descrição: Criado um Script que após executado, solicita dois valores como entrada.
# Esses valores são somados e o resultado é exibido para o usuário.
#
# Exemplo de uso: ./Questao01.sh
#
#########################################

clear
echo "======== Somando valores ========"
echo ""
echo "Ao executar o script, insira os valores que deseja somar como parâmetros (logo após o comando de execução, separado por espaço)"
echo ""

RESULTADO="$(expr $1 + $2)"
echo "O resultado da soma dos dois números é: $RESULTADO"
