#!/bin/bash

echo
#CPU Usage
echo 'CPU Usage:'
CPU_STAT=(`top -b -n3 | grep '%Cpu(s)'`)
#echo ${CPU_STAT[@]}

CPU_US=${CPU_STAT[35]}
CPU_SY=${CPU_STAT[37]}

echo Cpu_us: ${CPU_US}
echo Cpu_sy: ${CPU_SY}

echo
#Memory Usage
echo 'Memory Usage:'
MEMORY=(`free -h | grep 'Mem'`)
echo ${MEMORY[@]}

TOTAL_MEMORY=${MEMORY[1]}
USED_MEMORY=${MEMORY[2]}
FREE_MEMORY=${MEMORY[3]}


echo Total_memory: ${TOTAL_MEMORY} 
echo Used_memory: ${USED_MEMORY} $(($USED_MEMORY/$TOTAL_MEMORY*100))
echo Free_memory: ${FREE_MEMORY}

