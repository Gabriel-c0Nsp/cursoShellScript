#!/bin/bash

#################################################################################
#
# Questao03.sh - Contador (tipo de arquivo)
#
# Autor: Gabriel Silva (gabrielsilvaaires62@gmail.com)
# Data de criação: 15/08/2023
# Descrição: Analisa cada usuário da máquina e cria um contador para os tipos
# de arquivos.
#
# # Exemplo de uso: ./Questao03.sh
#
#################################################################################

for user in /home/*
do
  MP4COUNT=0
  MP3COUNT=0
  JPGCOUNT=0
  OLDIFS=$IFS
  IFS=$'\n'

  for files in $(find $user -name '*.jpg' -o -name '*.mp4' -o -name '*.mp3')
  do 
    case $files in
      *.mp4)
        MP4COUNT=$(expr $MP4COUNT + 1)
        ;;
        *.mp3)
        MP3COUNT=$(expr $MP3COUNT + 1)
        ;;
      *.jpg)
        JPGCOUNT=$(expr $JPGCOUNT + 1)
        ;;
    esac
  done # Fim do for do find

  echo "Usuário: $(basename $user)"
  echo "Arquivos JPG: $JPGCOUNT"
  echo "Arquivos MP3: $MP3COUNT"
  echo "Arquivos MP4: $MP4COUNT"
echo
done # Fim do for no /home
IFS=$OLDIFS
