# BD

Pasos para la ejecucion y creacion de base de datos 

1. En caso de no tener un usario llamado Admin, crearlo ejecutando el siguiente comando 
CREATE USER admin IDENTIFIED BY admin123;

GRANT CONNECT, RESOURCE TO admin;
ALTER USER admin QUOTA UNLIMITED ON USERS;
GRANT CREATE SESSION, CREATE TABLE, CREATE VIEW, CREATE SEQUENCE, CREATE TRIGGER TO admin;
GRANT CREATE PROCEDURE, CREATE SYNONYM, CREATE PUBLIC SYNONYM TO admin;
GRANT CREATE TYPE, CREATE MATERIALIZED VIEW TO admin;

2. usar el nombre del servicio que por defecto trae Oracle XEDPB1

3. Ejecutar los scripts en el orden enviado 
