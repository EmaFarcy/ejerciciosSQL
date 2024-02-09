/*Indicar por jornada la cantidad de docentes que dictan y sumar los costos. Esta información solo se desea
visualizar para las asignaturas de desarrollo web. El resultado debe contener todos los valores registrados en la
primera tabla, Renombrar la columna del cálculo de la cantidad de docentes como cant_docentes y la
columna de la suma de los costos como suma_total. Keywords: Asignaturas,Staff, DocentesID, Jornada,
Nombre, costo*/

SELECT Asi.Jornada, COUNT(St.DocentesID) AS cant_docentes, SUM(Costo) AS suma_total
FROM Staff AS ST
LEFT JOIN Asignaturas ASI ON ASI.AsignaturasID= St.Asignatura
WHERE Asi.Nombre= 'desarrollo web'
GROUP BY Asi.Jornada

