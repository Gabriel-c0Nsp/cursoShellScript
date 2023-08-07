#!/bin/zsh


#################################################################################
#
# Questao03.sh - Menu calculadora
#
# Autor: Gabriel Silva (gabrielsilvaaires62@gmail.com)
# Data de criação: 07/08/2023
# Descrição: Exibir menu para que se escolha uma das 4 operações. Após isso,
# a operação e o resultado são exibidos ao usuário.
#
# Exemplo de uso: ./Questao03.sh
#
#################################################################################

clear
echo -n "informe o valor 1: "
read VALOR1

echo -n "informe o valor 2: "
read VALOR2

echo

echo "Escolha uma operação: "
echo "1 = Soma"
echo "2 = Subtração"
echo "3 = Multiplicação"
echo "4 = Divisão"
echo "Q = Sair"

echo -n "Opção: "
read OPERACAO

case "$OPERACAO" in
  1)
    echo "$(expr $VALOR1 + $VALOR2)"
    ;;
  2)
    echo "$(expr $VALOR1 - $VALOR2)"
    ;;
  3)
    echo "$(expr $VALOR1 \* $VALOR2)"
    ;;
  4)
    RESTO=$(expr $VALOR1 % $VALOR2)
    echo "Divisão com Resto = $RESTO"
    echo
    RESULTADO=$(expr $VALOR1 / $VALOR2)
    echo "$VALOR1 / $VALOR2 = $RESULTADO"
    ;;
  "Q")
    echo "Saindo..."
    ;;
    *)
    echo "Opção inválida!"
esac

