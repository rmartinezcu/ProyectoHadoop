CREATE EXTERNAL TABLE ejemplo.TARJETA(
  USUARIO INT,
  TARJETAIND STRING,
  MARCA STRING,
  TIPO STRING,
  NUMEROTARJETA STRING,
  EXPIRACION STRING,
  CVV INT,
  CHIP  STRING,
  ISSUED STRING,
  LIMITE STRING,
  FECHAAP STRING,
  ANIO INT,
  TARJETAESTADO STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE
LOCATION '/user/maria_dev/grupo5Proy/Tarjetas'
TBLPROPERTIES(
    'skip.header.line.count'='1',
    'store.charset'='ISO-8859-1', 
    'retrieve.charset'='ISO-8859-1'
);