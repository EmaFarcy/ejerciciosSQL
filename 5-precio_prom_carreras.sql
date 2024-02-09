/*Indicar cuál es el precio promedio de las carreras y los cursos por jornada. Renombrar la nueva columna
como Promedio. Ordenar los promedios de Mayor a menor Keywords: Tipo, Jornada, Asignaturas*/

SELECT Tipo, Jornada, AVG(Costo) AS 'Promedio'
FROM Asignaturas
GROUP BY Tipo, Jornada;