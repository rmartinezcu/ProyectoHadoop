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

echo "Eliminamos la carpeta del ejercicio....."
hdfs dfs -rm -r -f  /user/maria_dev/${PARAM_USERNAME}
echo "Carpeta eliminada en HDFS....."
echo "Creando carpeta raiz....."
hdfs dfs -mkdir /user/maria_dev/${PARAM_USERNAME}
echo "Creando la carpeta del ejercicio....."
echo /user/maria_dev/${PARAM_USERNAME}/Transacciones
hdfs dfs -mkdir \
/user/maria_dev/${PARAM_USERNAME}/Transacciones \
/user/maria_dev/${PARAM_USERNAME}/Tarjetas \
/user/maria_dev/${PARAM_USERNAME}/Usuarios \
/user/maria_dev/${PARAM_USERNAME}/TransaccionesUsuarios
echo "Subiendo los archivos....."
hdfs dfs -put /home/maria_dev/Proyecto2022/credit_card_trans.csv /user/maria_dev/${PARAM_USERNAME}/Transacciones
hdfs dfs -put /home/maria_dev/Proyecto2022/sd254_cards.csv /user/maria_dev/${PARAM_USERNAME}/Tarjetas
hdfs dfs -put /home/maria_dev/Proyecto2022/sd254_users.csv /user/maria_dev/${PARAM_USERNAME}/Usuarios
hdfs dfs -put /home/maria_dev/Proyecto2022/User0_credit_card_transactions.csv /user/maria_dev/${PARAM_USERNAME}/TransaccionesUsuarios
#Verificamos
echo "Listando ...."
hdfs dfs -ls -R /user/maria_dev/${PARAM_USERNAME}

#Asignar permisos
echo "Asignando permisos..."
hdfs dfs -chmod 755 /user/maria_dev/${PARAM_USERNAME}/Transacciones
hdfs dfs -chmod 755 /user/maria_dev/${PARAM_USERNAME}/Tarjetas
hdfs dfs -chmod 755 /user/maria_dev/${PARAM_USERNAME}/Usuarios
hdfs dfs -chmod 755 /user/maria_dev/${PARAM_USERNAME}/TransaccionesUsuarios