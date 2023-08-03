#!/bin/zsh

#################################################################################
#
# Questao02.sh
#
# Autor: Gabriel Silva (gabrielsilvaaires62@gmail.com)
# Data de criação: 03/08/2023
# 
# Descrição: O script gera um relatório com as principais informações do servidor
#
# Exemplo de uso: ./Questao02.sh
#
#################################################################################

KERNEL=$(uname -r)
HOSTNAME=$(hostname)
CPUNO=$(cat /proc/cpuinfo | grep "model name" | wc -l)
CUPMODEL=$(cat /proc/cpuinfo | grep "model name" | head -n1 | cut -c14-)
MEMTOTAL=$(expr $(cat \proc/meminfo | grep MemTotal | tr -d ' ' | cut -d: -f2 | tr -d kB) / 1024)
FILESYS=$(df -h | egrep -v '(tmpfs|udev)')
UPTIME=$(uptime -s)

clear 
echo "=========================================================================="
echo "Relatório da Máquina: $HOSTNAME"
echo "Data/Hora: $(date)"
echo "=========================================================================="
echo ""
echo "Máquina Ativa Desde: $UPTIME"
echo ""
echo "Versão do Kernel: $KERNEL"
echo ""
echo "CPUs:"
echo "Quantidade de CPUs/Core: $CPUNO"
echo "Modelo da CPU: $CUPMODEL"
echo ""
echo "Memória Total: $MEMTOTAL MB"
echo ""
echo "Partições:"
echo "$FILESYS"
echo ""
echo "=========================================================================="
