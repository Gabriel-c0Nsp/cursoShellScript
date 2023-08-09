#!/bin/zsh

echo -n "Qual o(a) melhor aluna? "
read MELHOR

for i in $(cat arquivos/alunos.txt)
do
    if [ $i = $MELHOR ]
    then
        echo "$i é o(a) melhor aluno(a)"
        continue
    fi
    echo "Aluno(a): $i"
done