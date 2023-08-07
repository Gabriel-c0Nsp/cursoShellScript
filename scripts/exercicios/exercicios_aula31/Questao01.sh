#!/bin/zsh


#################################################################################
#
# Questao01.sh - Mostrar hora atual com boas vindas 
#
# Autor: Gabriel Silva (gabrielsilvaaires62@gmail.com)
# Data de criação: 07/08/2023
# Descrição: Com base na hora atual, escreve mensagem de boas vindas na tela,
# além de mostrar hora atual formatada. 
#
# Exemplo de uso: ./Questao01.sh
#
#################################################################################

clear

HORA=$(date +%H)

if [ "$HORA" -ge 12 -a "$HORA" -lt 18 ] 
then
  echo "Boa tarde!"
elif [ "$HORA" -ge 6 -a "$HORA" -lt 12 ]
then
  echo "Bom dia!"
else 
  echo "Boa noite!"
fi

echo

HORA_ATUAL=$(date "+%I")
MINUTOS=$(date "+%M")

if [ "$HORA_ATUAL" -ge 12 ]
then
  PERIODO="PM"
else
  PERIODO="AM"
fi

echo "A hora atual é: $HORA_ATUAL:$MINUTOS $PERIODO"
