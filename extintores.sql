-- Tabla para almacenar información sobre las salas
CREATE TABLE salas (
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL UNIQUE, -- Asegura que el nombre de la sala sea único
    ubicacion VARCHAR(100),
    capacidad INT
);

-- Tabla para almacenar las características de los extintores
CREATE TABLE extintores (
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    id_sala INT UNSIGNED,
    tipo VARCHAR(50) NOT NULL,
    capacidad_libras INT,
    presion INT,
    color varchar(10),
    fecha_instalacion DATE,
    fecha_ultima_inspeccion DATE,
    fecha_caducidad DATE,
    FOREIGN KEY (id_sala) REFERENCES salas(id_sala),
    UNIQUE (id_sala, tipo) -- Asegura que el tipo de extintor sea único dentro de cada sala
);

-- Tabla para el mantenimiento de los extintores
CREATE TABLE mantenimiento (
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    id_extintor INT UNSIGNED,
    tipo_mantenimiento VARCHAR(50) NOT NULL,
    fecha DATE NOT NULL,
    descripcion TEXT,
    costo DECIMAL(10, 3),
    FOREIGN KEY (id_extintor) REFERENCES extintores(id_extintor)
);


--intertar en tabla salas

INSERT INTO salas(nombre, ubicacion, capacidad)
VALUES ("sala de computo 1", "primer piso piso", 50),
       ("sala de computo 2", "primer piso piso", 40),
       ("sala de computo 3", "segundo piso", 35),
       ("sala de computo 4",  "segundo piso", 30),
       ("sala de computo 5", "tercer piso", 20);
SELECT * FROM salas;


-- Insertar datos en la tabla extintores
INSERT INTO extintores (id, tipo, capacidad_libras, presion, color, fecha_instalacion, fecha_ultima_inspeccion, fecha_caducidad)
VALUES 
    (1, "Polvo ABC", 10, 150,"amarillo", "2023-01-15", "2024-02-20", "2025-01-15"),
    (2, "CO2", 20, 200, "rojo", "2023-02-20", "2024-03-25", "2025-02-20"),
    (3, "Agua", 15, 100, "gris", "2023-03-10", "2024-04-10", "2025-03-10"),
    (4, "Polvo ABC", 10, 150, "amarillo", "2023-04-05", "2024-05-05", "2025-04-05"),
    (5, "CO2", 5, 200, "rojo","2023-05-20", "2024-06-20", "2025-05-06");
SELECT * FROM extintores;



-- Insertar datos en la tabla mantenimiento
INSERT INTO mantenimiento (id, tipo_mantenimiento, fecha, descripcion, costo)
VALUES 
    (1, "Inspección anual", "2023-01-15", "Inspección anual de rutina", 50.000),
    (2, "Recarga", "2023-02-20", "Recarga de CO2", 100.000),
    (3, "Reparación", "2023-03-10", "Reparación de válvula de extintor", 75.000),
    (4, "Inspección anual", "2023-04-05", "Inspección anual de rutina", 50.000),
    (5, "Recarga", "2023-05-20", "Recarga de CO2", 100.000);
SELECT * FROM mantenimiento;



