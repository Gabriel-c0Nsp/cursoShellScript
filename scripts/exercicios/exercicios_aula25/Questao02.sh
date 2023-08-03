#!/bin/zsh

#################################################################################
#
# Questao02.sh - Mostrar informações do sistema
#
# Autor: Gabriel Silva (gabrielsilvaaires62@gmail.com)
# Data de criação: 03/08/2023
# Descrição: Script que gera algumas informações da máquina atual.
#
# Exemplo de uso: ./Questao02.sh
#
#################################################################################

clear
echo "================================================================================="
echo "Relatório da máquina: $(uname)"
echo "Data/Hora: $(date)"
echo "================================================================================="

echo ""
# Lógica para exibir tempo de máquina
UPTIME=$(uptime)
UPTIME_OUTPUT=$(echo "$UPTIME" | grep -o "[0-9]\+:[0-9]\+:[0-9]\+")
echo "Máquina ativa desde: $UPTIME_OUTPUT"
echo ""
echo "Versão do kernel: $(uname -r)"
echo ""

# Mostra informações sobre cpu e core da máquina
echo "CPUs:"
CPU_CORE=$(lscpu | grep "Core(s) per socket:" | awk '{print $4}')
echo "Quantidade de CPUs/Core(s): $CPU_CORE"

MODELO_CPU=$(lscpu | grep "Model name" | cut -d':' -f2 | sed 's/^ *//')
echo "Modelo da CPU: $MODELO_CPU"
echo ""

# Exibe memória 
MEMORIA_TOTAL=$(free -m | awk '/^Mem:/{print $2 "MB"}')
echo "Memória Total: $MEMORIA_TOTAL"
echo ""

# Exibe as partições
echo "Partições:"
df
