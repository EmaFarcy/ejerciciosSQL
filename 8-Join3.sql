/*Se requiere saber todos los datos de asignaturas que no tienen un docente asignado. El modelo de la
consulta debe partir desde la tabla docentes. Keywords: Staff, Encargado, Asignaturas, costo, Area 
*/
SELECT asig.Nombre, asig.Tipo, asig.Costo, asig.Area, stf.DocentesID
FROM Asignaturas asig
LEFT JOIN Staff stf
ON asig.AsignaturasID = stf.Asignatura
WHERE stf.DocentesID IS NULL; 