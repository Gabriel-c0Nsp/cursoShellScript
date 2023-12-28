#!/bin/zsh

ler() {
  echo -n "Digite o seu nome: "
  read NOME
  echo -n "Digite o seu sobrenome: "
  read SOBRENOME
  if [ "$NOME" = "Gabriel" ]; then
    return 10
  else
    return 1
  fi
}

ler
echo "Return code = $?"
echo "$NOME $SOBRENOME"
