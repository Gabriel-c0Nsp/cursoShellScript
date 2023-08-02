#!/bin/zsh

########################################################################
#                                                                      #
# BuscaAluno.sh - Procurar nome completo do aluno                      #    
#                                                                      # 
# Auto: Gabriel Silva (gabrielsivaaires62@gmail.com)                   #    
# Data criação: 02/08/2023                                             # 
#                                                                      #      
# Descrição: Script de exemplo para o comando read. A partir de uma    #    
#            busca no arquivo alunos2.txt                              #    
#                                                                      #        
# Exemplo de uso: ./BuscaAluno.sh                                      #   
#                                                                      #     
########################################################################

ARQUIVO_ALUNOS="/home/consp/cursoShellScript/scripts/arquivos/alunos2.txt"

clear
echo "======== Script de Busca de Alunos ========"
echo ""
echo -n "Por favor, informe o nome do aluno: "
read ALUNO
# read -p "Por favor, informe o nome do aluno: " ALUNO

ALUNO_COMPLETO=$(grep "$ALUNO" $ARQUIVO_ALUNOS)

echo ""
echo "O nome completo do aluno é: $ALUNO_COMPLETO"
echo ""
echo "Fim da execução"
