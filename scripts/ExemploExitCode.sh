#!/bin/zsh

ls /tmp/

# exit 204 

ls /tmp/qualquerArquivo

RETURN_CODE=$?

echo "O código de retorno do ls foi $RETURN_CODE"

# echo "Script executado"
