#!/bin/bash

#################################################################################
#
# Questao02.sh - Monitora processos
#
# Autor: Gabriel Silva (gabrielsilvaaires62@gmail.com)
# Data de criação: 15/08/2023
# Descrição: Processo deve rodar como Deamon, monitorando a execução de um 
# processo passando por parâmetro. Exibe constantes mensagens na tela quando
# o processo não está em execução.
# Exemplo de uso: ./Questao02.sh
#
#################################################################################

TIME=5

if [ $# -eq 0 ]
then
  echo "Favor informar um processo como argumento."
  echo "./Questao02.sh <processo>"
  exit 1
fi

while true
do 
  if ps axu | grep $1 | grep -v grep | grep -v $0 > /dev/null
  then
    sleep $TIME
  else 
    echo "ATENÇÃO!!!!!! O processo $1 NÃO está em execução!"
  fi
done
