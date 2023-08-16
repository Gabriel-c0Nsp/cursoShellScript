#!/bin/bash

#################################################################################
#
# Questao01.sh - Lista usuários
#
# Autor: Gabriel Silva (gabrielsilvaaires62@gmail.com)
# Data de criação: 15/08/2023
# Descrição: Listar todos os usuários (humanos) do sistema exibindo as 
# principais informações da conta.
#
# Exemplo de uso: ./Questao01.sh
#
#################################################################################

#UIDs utilizados para usuários comuns
MIN_UID=$(grep "^UID_MIN" /etc/login.defs | tr -s "\t" | cut -f2)
MAX_UID=$(grep "^MAX_UID" /etc/login.defs | tr -s "\t" | cut -f2)

OLDIFS=$IFS
IFS=$'\n'

#Criando o cabeçalho da saída
echo -e "USUARIO\t\tUID\t\tDIR HOME\t\tHOME OU DESCRIÇÃO"

for i in $(cat /etc/passwd)
do
  USERID=$(echo $i | cut -d ":" -f3)
  if [ $USERID -ge $MIN_UID -a $USERID -le $MAX_UID ]
  then
    USER=$(echo $i | cut -d":" -f1)
    USERDESC=$(echo $i | cut -d":" -f5 | tr -d ',')
    USERHOME=$(echo $i | cut -d":" -f6)
    echo -e "$USER\t\t$USERID\t\t$USERHOME\t\t$USERDESC"
  fi
done
IFS=$OLDIFS
