--Indicar cuántos cursos y carreras tiene el área de Data. Renombrar la nueva columna como cant_asignaturas. Keywords: Tipo, Área, Asignaturas
USE CoderHouse;

SELECT * FROM Area;
SELECT * FROM Asignaturas;

SELECT Area,
COUNT(Nombre) AS Cant_asignaturas
FROM Asignaturas
WHERE Area = 5
GROUP BY Area;