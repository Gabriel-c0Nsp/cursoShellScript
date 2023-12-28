#!/bin/zsh

#########################################
#
# FuncoesData.sh - fazer tratamento de datas
#
# Autor: Gabriel Silva (gabrielsilvaaires62@gmail.com)
# Data de criação: 28/12/2023
# Descrição: Script que recebe uma data e uma opção 
# e faz o retorno de acordo com a opção
# Exemplo de uso: ./FuncoesData.sh OPCAO DATA 
#
#########################################

DATA=$(echo $2 | tr -d "/")
VAL1=$(echo $DATA | cut -c-2)
VAL2=$(echo $DATA | cut -c3-4)
ANO=$(echo $DATA | cut -c5-8)

retornaFormato() {
  if [ $VAL1 -le 12 -a $VAL1 -eq $VAL2 ] # Dia = Mes = formato br
  then
    return 0
  elif [ $VAL1 -gt 12 -a $VAL2 -le 12 ] # formato br
  then
    return 0
  elif [ $VAL1 -le 12 -a $VAL2 -gt 12 ] # formato us
  then
    return 1
  elif [ $VAL1 -le 12 -a $VAL2 -le 12 ] # formato indefinino, mas válido
  then
    return 2
  else 
    return 3
  fi
}

inverteDiaMes() {
  local FORMATO=$?
  if [ $FORMATO -ne 3 ]
  then 
    echo $VAL2/$VAL1/$ANO
  else
    echo "Formato de data inválido"
  fi
}

incluiBarra() {
  retornaFormato $1
  local FORMATO=$?
  if [ $FORMATO -ne 3 ]
  then
    echo $VAL1/$VAL2/$ANO
  else
    echo "Formato de data inválido"
  fi
}

diaExtenso() {
  retornaFormato $1
  local $RETURN_FORM=$?
  case $RETURN_FORM in 
    0)
      local DIA=$VAL1
      local MES=$VAL2
      ;;
    1)
      local DIA=$VAL2
      local MES=$VAL1
      ;;
    2)
      local FORMATO=$0
      until [ "$FORMATO" = 1 -o "$FORMATO" = 2 ]
      do
        echo
        echo "Impossível determinar o padrão de data."
        echo "1 - BR (DD/MM/YYYY)"
        echo "2 - US (MM/DD/YYYY)"
        echo -n "Escolha o formato (1 ou 2):  "
        read FORMATO
        case $FORMATO in
          1)
            local DIA=$VAL1
            local MES=$VAL2
            ;;
          2)
            local DIA=$VAL2
            local MES=$VAL1
            ;;
          *)
            echo "Opção inválida"
        esac
      done
      echo
      ;;
    3)
      echo "Formato de data inválido"
      exit 3
      ;;
  esac

  case $MES in
    01)
      local MESEXT=Janeiro
      ;;
    02)
      local MESEXT=Fevereiro
      ;;
    03)
      local MESEXT=Março
      ;;
    04)
      local MESEXT=Abril
      ;;
    05)
      local MESEXT=Maio
      ;;
    06)
      local MESEXT=Junho
      ;;
    07)
      local MESEXT=Julho
      ;;
    08)
      local MESEXT=Agosto
      ;;
    09)
      local MESEXT=Setembro
      ;;
    10)
      local MESEXT=Outubro
      ;;
    11)
      local MESEXT=Novembro
      ;;
    12)
      local MESEXT=Dezembro
      ;;
  esac
  echo "$DIA de $MESEXT de $ANO"
}

###########################
# Início do fluxo do Script
###########################

case $1 in
  "-f")
    retornaFormato
    echo $?
    ;;
  "-i")
    inverteDiaMes
    ;;
  "-b")
    incluiBarra
    ;;
  "-e")
    diaExtenso
    ;;
  "--help")
    echo "Uso $0 OPCAO DATA"
    echo
    echo "DATA nos formatos DDMMYYYY ou MMDDYYYY, com ou sem /"
    echo
    echo "Opções:"
    echo "-f = Retorna 0 para BR, 1 para US, 2 para indefinido e 3 para inválido"
    echo "-i = Inverte o formato BR para US e US para BR. Inclui as barras"
    echo "-b = Inclui as barras na data"
    echo "-e = Retorna a data por extenso"
    ;;
  *)
    echo "Uso indevindo. Use --help para ajuda"
    ;;
esac
