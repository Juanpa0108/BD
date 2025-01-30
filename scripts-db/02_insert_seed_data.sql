-- Insertar Usuarios
INSERT INTO Usuarios (nombre, correo_electronico, contraseña, rol)
VALUES ('Carlos Pérez', 'carlos.perez@empresa.com', 'password123', 'Administrador');
INSERT INTO Usuarios (nombre, correo_electronico, contraseña, rol)
VALUES ('Laura Gómez', 'laura.gomez@empresa.com', 'password123', 'Auxiliar de Registro');

-- Insertar Comerciantes
INSERT INTO Comerciantes (nombre_razon_social, municipio, telefono, correo_electronico, estado)
VALUES ('Juan Rodríguez', 'Bogotá', '3001234567', 'juan.rodriguez@gmail.com', 'Activo');
INSERT INTO Comerciantes (nombre_razon_social, municipio, telefono, correo_electronico, estado)
VALUES ('María González', 'Medellín', '3109876543', 'maria.gonzalez@hotmail.com', 'Activo');
INSERT INTO Comerciantes (nombre_razon_social, municipio, telefono, correo_electronico, estado)
VALUES ('Pedro Martínez', 'Cali', '3201239876', 'pedro.martinez@yahoo.com', 'Activo');
INSERT INTO Comerciantes (nombre_razon_social, municipio, telefono, correo_electronico, estado)
VALUES ('Luisa Fernández', 'Barranquilla', '3124567890', 'luisa.fernandez@gmail.com', 'Inactivo');
INSERT INTO Comerciantes (nombre_razon_social, municipio, telefono, correo_electronico, estado)
VALUES ('Carlos Ramírez', 'Cartagena', '3019876543', 'carlos.ramirez@outlook.com', 'Activo');

-- Insertar Establecimientos
INSERT INTO Establecimientos (nombre, ingresos, numero_empleados, id_comerciante)
VALUES ('Panadería Centro', 5000000.00, 10, 1);
INSERT INTO Establecimientos (nombre, ingresos, numero_empleados, id_comerciante)
VALUES ('Panadería Norte', 7000000.50, 15, 1);
INSERT INTO Establecimientos (nombre, ingresos, numero_empleados, id_comerciante)
VALUES ('Ferretería Medellín', 4500000.00, 8, 2);
INSERT INTO Establecimientos (nombre, ingresos, numero_empleados, id_comerciante)
VALUES ('Ferretería Bogotá', 5500000.25, 12, 2);
INSERT INTO Establecimientos (nombre, ingresos, numero_empleados, id_comerciante)
VALUES ('Restaurante Sabor Oeste', 6000000.00, 9, 3);
INSERT INTO Establecimientos (nombre, ingresos, numero_empleados, id_comerciante)
VALUES ('Restaurante Sabor Este', 7500000.75, 18, 3);
INSERT INTO Establecimientos (nombre, ingresos, numero_empleados, id_comerciante)
VALUES ('Boutique Luisa Barranquilla', 4000000.00, 6, 4);
INSERT INTO Establecimientos (nombre, ingresos, numero_empleados, id_comerciante)
VALUES ('Boutique Luisa Barranquilla 2', 3500000.00, 5, 4);
INSERT INTO Establecimientos (nombre, ingresos, numero_empleados, id_comerciante)
VALUES ('Tienda Ropa Centro', 8000000.00, 20, 5);
INSERT INTO Establecimientos (nombre, ingresos, numero_empleados, id_comerciante)
VALUES ('Tienda Ropa Norte', 9000000.50, 25, 5);
