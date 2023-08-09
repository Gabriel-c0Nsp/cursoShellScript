#!/bin/zsh

until ps axu | grep firefox | grep -v grep >/dev/null
do
    echo "Inicie o firefox..."
    sleep 3
    echo
done

echo "Firefox Iniciado."
echo "PID: $(pgrep firefox)"