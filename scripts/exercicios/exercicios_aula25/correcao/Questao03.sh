#!/bin/zsh

#################################################################################
#
# Questao03.sh
#
# Autor: Gabriel Silva (gabrielsilvaaires62@gmail.com)
# Data de criação: 03/08/2023
# 
# Descrição: O script gera um relatório com informações de um usuário do sistema
#            passado como parâmetro
#
# Exemplo de uso: ./Questao03.sh <usuario>
#
#################################################################################

#ls /home/$1 > /dev/null 2>&1 || echo "Usuário Inexistente"
#ls /home/$1 > /dev/null 2>&1 || exit 1

ls /home/$1 > /dev/null 2>&1 || { echo "Usuário Inexistente" ; exit 1; }

USERID=$(grep $1 /etc/passwd | cut -d":" -f3)
DESC=$(grep $1 /etc/passwd | cut -d":" -f5 | tr -d ,)
USOHOME=$(du -sh /home/$1 | cut -f1)

clear
echo "==========================================================================" 
echo "Relatório do Usuário: $1"
echo 
echo "UID: $USERID"
echo "Nome ou Descrição: $DESC"
echo
echo "Total Usado no /home/$1: $USOHOME"
echo 
echo "Ultimo Login:"
lastlog -u $1
echo "==========================================================================" 
exit 0
