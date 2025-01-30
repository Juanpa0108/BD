CREATE OR REPLACE TYPE t_comerciante_activo AS OBJECT (
    resultado_pipe VARCHAR2(4000)
);
/

CREATE OR REPLACE TYPE t_comerciante_activo_tab AS TABLE OF t_comerciante_activo;
/

