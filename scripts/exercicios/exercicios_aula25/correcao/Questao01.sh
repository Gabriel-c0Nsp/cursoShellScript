#!/bin/zsh

# OBS: esse script não vai function no zsh porque aparentemente o mesmo não suporta read -p nativamente

#################################################################################
#
# Questao01.sh
#
# Autor: Gabriel Silva (gabrielsilvaaires62@gmail.com)
# Data de criação: 03/08/2023
# 
# Descrição: O script faz a soma de dois valores inseridos pelo usuário
#
# Exemplo de uso: ./Questao01.sh
#
#################################################################################

read -p "Informe o valor 1: " VALOR1
read -p "Informe o valor 2: " VALOR2

echo ""
echo "A soma de $VALOR1 + $VALOR2 é $(expr $VALOR1 + $VALOR2)"
