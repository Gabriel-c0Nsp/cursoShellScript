#!/bin/zsh

for i in /home/consp/cursoJava_Loiane/atividade_aula17/src/Questao*
do
    if [ -f $i ]
    then
        echo "Verificando a questão $i"
        LINHAS=$(cat $i | wc -l)
        echo "A questão $i contém $LINHAS linhas."
    echo 
fi
done