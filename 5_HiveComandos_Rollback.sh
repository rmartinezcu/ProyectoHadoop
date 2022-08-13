#!/bin/bash
#Ejecucion
#sh /home/maria_dev/Proyecto2022/HiveComandos.sh
##########################################################################################################
## Curso: Hadoop
## Grupo: 5
## @copyright Raul Martinez C.
## 
##########################################################################################################
#Definimos las variables

echo "Eliminando las tablas en Hive....."
hive -f /home/maria_dev/ScriptHive/DropTables.sql
echo "Se han eliminado las tablas en Hive....."
