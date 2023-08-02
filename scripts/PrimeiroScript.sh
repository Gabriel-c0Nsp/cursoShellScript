#!/bin/zsh

#########################################
#
# PrimeiroScript.sh - script de introdução a programação shell
#
# Autor: Gabriel Silva (gabrielsilvaaires62@gmail.com)
# Data de criação: 01/08/2023
# Descrição: esse script foi criado durante o curso com o objetivo de contemplar temas básicos como PATH, permissões e lógica básica de programação em shell
#
# Exemplo de uso: PrimeiroScript.sh (de dentro do terminal, tendo em vista que foi adicionado o path em um arquivo de inicialização ou no zshrc) ou ./PrimeiroScript.sh
#
#########################################

DATAHORA=$(date +%H:%M)
ARQAULAS="/home/consp/cursoJava_Loiane/atividade_aula17/src"
# Função de leitura da data e hora
clear
echo "============MEU PRIMEIRO SCRIPT============"
echo ""
echo "Exibir data atual: $DATAHORA"
echo ""

# Área de que lista as questões da atividade 17 do curso
echo "==========================================="
echo ""
echo "Listagem das questões da atividade 17 do curso \"Java básico - Loiane\": "
echo ""
ls $ARQAULAS
