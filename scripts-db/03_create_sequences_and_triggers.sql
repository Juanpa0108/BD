-- Secuencias
CREATE SEQUENCE seq_usuarios START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_comerciantes START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_establecimientos START WITH 1 INCREMENT BY 1;

-- Trigger para Usuarios
CREATE OR REPLACE TRIGGER trg_usuarios_bi
BEFORE INSERT ON Usuarios
FOR EACH ROW
BEGIN
    IF :NEW.id_usuario IS NULL THEN
        SELECT seq_usuarios.NEXTVAL INTO :NEW.id_usuario FROM DUAL;
    END IF;
END;
/

-- Trigger para Comerciantes
CREATE OR REPLACE TRIGGER trg_comerciantes_bi
BEFORE INSERT OR UPDATE ON Comerciantes
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        IF :NEW.id_comerciante IS NULL THEN
            SELECT seq_comerciantes.NEXTVAL INTO :NEW.id_comerciante FROM DUAL;
        END IF;
    END IF;

    :NEW.fecha_actualizacion := SYSDATE;
    IF :NEW.usuario_actualizacion IS NULL THEN
        :NEW.usuario_actualizacion := SYS_CONTEXT('USERENV', 'SESSION_USER');
    END IF;
END;
/

-- Trigger para Establecimientos
CREATE OR REPLACE TRIGGER trg_establecimientos_bi
BEFORE INSERT OR UPDATE ON Establecimientos
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        IF :NEW.id_establecimiento IS NULL THEN
            SELECT seq_establecimientos.NEXTVAL INTO :NEW.id_establecimiento FROM DUAL;
        END IF;
    END IF;

    :NEW.fecha_actualizacion := SYSDATE;
    IF :NEW.usuario_actualizacion IS NULL THEN
        :NEW.usuario_actualizacion := SYS_CONTEXT('USERENV', 'SESSION_USER');
    END IF;
END;
/
