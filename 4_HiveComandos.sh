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

echo "Creamos las tablas en Hive....."
hive -f /home/maria_dev/ScriptHive/Transaccioneshive.sql
hive -f /home/maria_dev/ScriptHive/Tarjetashive.sql
hive -f /home/maria_dev/ScriptHive/Usuarioshive.sql
echo "Se crearon las tablas en Hive....."
