CREATE VIEW vista_extintores AS
SELECT salas.ubicacion, extintores.tipo
FROM salas
JOIN extintores ON salas.id_sala = extintores.id_sala;

SELECT * FROM vista_extintores;
