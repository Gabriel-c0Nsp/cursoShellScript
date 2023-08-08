#!/bin/zsh

#################################################################################
#
# Questao01.sh - Mostrar hora atual com boas vindas 
#
# Autor: Gabriel Silva (gabrielsilvaaires62@gmail.com)
# Data de criação: 08/08/2023
# Descrição: Com base na hora atual, escreve mensagem de boas vindas na tela,
# além de mostrar hora atual formatada. 
#
# Exemplo de uso: ./Questao01.sh
#
#################################################################################

HORA=$(date +%H)
#HORA=$1
MIN=$(date +%M)

# If para definir período
# Estou considerando que das 00:00 às 06:00 é noite
if [ $HORA -ge 06 -a $HORA -lt 12 ]
then
  echo "Bom Dia!"
elif [ $hora -ge 12 -a $HORA -lt 18 ]
then 
  echo "Boa Tarde!"
else 
  echo "Boa Noite"
fi

# If para reduzir a hora e definir AMPM
if [ $HORA -ge 12 ]
then
  AMPM=PM
  if [ $HORA -ne 12 ]
  then 
    HORA=$(expr $HORA -12)
  fi
else
  AMPM=AM
fi

echo
echo "A hora atual é: $HORA:$MIN $AMPM"
