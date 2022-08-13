#!/bin/bash
USER='root'
PASS='hortonworks1'
DBASE='ejemplo'
Query='CREATE TABLE IF NOT EXISTS TRANSACCIONES(usuario VARCHAR(10),tarjeta VARCHAR(30),anio VARCHAR(5),mes VARCHAR(5),dia VARCHAR(5),tiempo VARCHAR(15),monto  VARCHAR(10),tipo VARCHAR(50),nombre VARCHAR(50),iudad VARCHAR(50),estado VARCHAR(30),postal VARCHAR(15),MCC VARCHAR(10),errores VARCHAR(4),fraude VARCHAR(4))'
mysql -u$USER -p$PASS -D$DBASE <<EOF 
$Query
EOF

