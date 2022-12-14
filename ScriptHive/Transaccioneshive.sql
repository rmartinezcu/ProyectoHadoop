CREATE EXTERNAL TABLE ejemplo.TRANSACCIONESM(
  USUARIO INT,
  TARJETA STRING,
  ANIO INT,
  MES INT,
  dia INT,
  tiempo STRING,
  monto  STRING,
  tipo STRING,
  nombre STRING,
  ciudad STRING,
  estado STRING,
  postal STRING,
  MCC STRING,
  errores STRING,
  fraude STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/maria_dev/grupo5Proy/Transacciones'
TBLPROPERTIES(
    'skip.header.line.count'='1',
    'store.charset'='ISO-8859-1', 
    'retrieve.charset'='ISO-8859-1'
);