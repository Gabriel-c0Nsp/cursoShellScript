#!/bin/zsh

#################################################################################
#
# Questao02.sh - Exibir informações sobre o usuário
#
# Autor: Gabriel Silva (gabrielsilvaaires62@gmail.com)
# Data de criação: 03/08/2023
# Descrição: Script que recebe um nome de usuário como parâmetro e exibe 
#            as informações o mesmo.
#
# Exemplo de uso: ./Questao03.sh (+ o nome como parâmetro)
#
#################################################################################

clear
echo "================================================================================="
USUARIO=$1
echo "Relatório sobre o usuário: $USUARIO"
echo ""

# Informa UID e descrição do usuário
USUARIO_UID="echo $USUARIO_UID"
echo "UID: $UID"
echo "Nome ou Descrição: $*"
echo ""

# Mostar total usado pelo usuário 
TOTAL_ARMAZENAMENTO_USUARIO=$(du -sh "$HOME" | cut -f1)
echo "Total Usado no /home/$(echo $USER): $TOTAL_ARMAZENAMENTO_USUARIO"
echo ""

# Mostrar informações sobre o último login do usuário
ULTIMO_LOGIN=$(lastlog -u "$USER" | tail -n 1)
echo "Ultimo Login: $ULTIMO_LOGIN"
echo "================================================================================="
