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

#$HORA=$1
HORA=$(date +%H)
MIN=$(date +%M)

# Case para difinir período
# Estou considerando que das 00:00 às 06:00 é noite
echo
case $HORA in
  0[0-6] | 1[01])
    echo "Bom Dia!"
    ;;
  1[2-7])
    echo "Boa Tarde!"
    ;;
  *)
    echo "Boa Noite!"
    ;;
esac

# If para reduzir a hora e difinir AMPM
if [ $HORA -ge 12 ]
then
  AMPM=PM
  if [ $HORA -ne 12 ]
  then 
    HORA=$(expr $HORA - 12)
  fi
else
  AMPM=PM
fi

echo 
echo "A hora atual é: $HORA:$MIN $AMPM"
