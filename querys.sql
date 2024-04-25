
---Seleccionar todos los datos de las tablas salas y extintores donde 
el ID de la sala coincida con el ID de la sala en la tabla extintores(me muestra una sola tabla)
SELECT * FROM salas
JOIN extintores ON salas.id_sala = extintores.id_sala;



----muestra las salas con el tipo de extintor que hay
SELECT salas.nombre, extintores.tipo FROM salas
JOIN extintores ON salas.id_sala = extintores.id_sala;

---me muestra la tabla con el nombre de la sala donde el tipo de extintor sea polvo abc y cualquier tipo
SELECT salas.nombre, extintores.tipo FROM salas
JOIN extintores ON salas.id_sala = extintores.id_sala
WHERE extintores.tipo = 'Polvo ABC';

SELECT salas.nombre, extintores.tipo FROM salas
JOIN extintores ON salas.id_sala = extintores.id_sala
WHERE extintores.tipo = 'CO2';


SELECT salas.nombre, extintores.tipo FROM salas
JOIN extintores ON salas.id_sala = extintores.id_sala
WHERE extintores.tipo = 'AGUA';

buscar el exintor con el id=1
SELECT extintores.id_extintor, extintores.tipo, salas.ubicacion
FROM extintores
JOIN salas ON extintores.id_sala = salas.id_sala
WHERE extintores.id_extintor = 1;



---eliminar un extintor
DELETE FROM extintores
WHERE id_extintor = 1;


---Actualizar la ubicación de un extintor
UPDATE extintores
SET ubicacion = 'Nueva ubicación'
WHERE id_extintor = 1;


---la cantidad de extintores en cada sala
SELECT salas.ubicacion, COUNT(extintores.id_extintor)
FROM salas
LEFT JOIN extintores ON salas.id_sala = extintores.id_sala
GROUP BY salas.id_sala;


---numero total de extintores
SELECT COUNT(id_extintor) FROM extintores;


----id maximo 

SELECT MAX(id_extintor) FROM extintores;

----ordena los IDs de manera descendente y tomando solo el primero
SELECT id_extintor FROM extintores ORDER BY id_extintor DESC LIMIT 1;

SELECT id_extintor FROM extintores ORDER BY id_extintor ASC LIMIT 1;


----cantidad de extintores en una sala

SELECT salas.ubicacion, COUNT(extintores.id_extintor)
FROM salas
LEFT JOIN extintores ON salas.id_sala = extintores.id_sala
GROUP BY salas.id_sala;
