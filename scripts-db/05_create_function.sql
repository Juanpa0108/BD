CREATE OR REPLACE FUNCTION obtener_comerciantes_activos
RETURN t_comerciante_activo_tab
IS
    resultado t_comerciante_activo_tab := t_comerciante_activo_tab();
BEGIN
    FOR r IN (
        SELECT 
            c.id_comerciante || '|' ||
            c.nombre_razon_social || '|' ||
            c.municipio || '|' ||
            c.telefono || '|' ||
            c.correo_electronico || '|' ||
            TO_CHAR(c.fecha_registro, 'DD/MM/YYYY') || '|' ||
            c.estado || '|' ||
            TO_CHAR(COUNT(e.id_establecimiento)) || '|' ||
            TO_CHAR(NVL(SUM(e.ingresos), 0)) || '|' ||
            TO_CHAR(NVL(SUM(e.numero_empleados), 0))
        AS resultado_pipe
        FROM 
            Comerciantes c
        LEFT JOIN 
            Establecimientos e ON c.id_comerciante = e.id_comerciante
        WHERE 
            c.estado = 'Activo'
        GROUP BY 
            c.id_comerciante, 
            c.nombre_razon_social, 
            c.municipio, 
            c.telefono, 
            c.correo_electronico, 
            c.fecha_registro, 
            c.estado
        ORDER BY 
            COUNT(e.id_establecimiento) DESC
    ) LOOP
        resultado.EXTEND;
        resultado(resultado.LAST) := t_comerciante_activo(r.resultado_pipe);
    END LOOP;

    RETURN resultado;
END obtener_comerciantes_activos;
/
