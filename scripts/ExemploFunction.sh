#!/bin/zsh

maiuscula() {

  echo $1 | tr a-z A-Z # $1 é o parâmetro da função

  # essa é uma variável global
  # VARIAVEL=$(echo $1 | tr a-z A-Z) # $1 é o parâmetro da função


  # esse é um exemplo de uma variável local  
  # local VARIAVEL=$(echo $1 | tr a-z A-Z) # $1 é o parâmetro da função
}

maiuscula gabriel

VAR1=$(maiuscula gabriel) # atribui o retorno da função à variável
