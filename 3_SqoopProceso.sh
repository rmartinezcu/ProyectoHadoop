#!/bin/bash
#Ejecucion
#sh /home/maria_dev/Proyecto2022/Solucionado.sh grupo5
##########################################################################################################
## Curso: Hadoop
## Grupo: 5
## @copyright Raul Martinez C.
## 
##########################################################################################################
#Definimos las variables
export PARAM_USERNAME=$1
export USER='root'
export PASS='hortonworks1'
export DBASE='ejemplo'

sqoop export --connect jdbc:mysql://localhost/ejemplo --table TRANSACCIONES --username $USER --password $PASS --export-dir /user/maria_dev/$PARAM_USERNAME/Transacciones/credit_card_trans.csv --fields-terminated-by ',' --lines-terminated-by '\n'