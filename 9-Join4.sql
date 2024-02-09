/*Se quiere conocer la siguiente información de los docentes. El nombre completo concatenar el nombre y el
apellido. Renombrar NombresCompletos, el documento, hacer un cálculo para conocer los meses de ingreso.
Renombrar meses_ingreso, el nombre del encargado. Renombrar NombreEncargado, el tefelono del
encargado. Renombrar TelefonoEncargado, el nombre del curso o carrera, la jornada y el nombre del área.
Solo se desean visualizar los que llevan más de 3 meses. Ordenar los meses de ingreso de mayor a menor.
Keywords: Encargo,Area,Staff,jornada, fecha ingreso.*/

SELECT CONCAT(stf.Nombre, ' ', stf.Apellido) AS "NombresCompletos", stf.Documento, DATEDIFF(MONTH, stf.[Fecha Ingreso], GETDATE()) AS "meses_ingreso", enc.Nombre AS NombreEncargado, enc.Telefono AS TelefonoEncargado, Asignaturas.Nombre AS NombreCurso, Asignaturas.Jornada, Asignaturas.Area
FROM Staff stf	
LEFT JOIN Encargado enc 
ON enc.Encargado_ID = stf.Encargado
LEFT JOIN Asignaturas 
ON Asignaturas.AsignaturasID = stf.Asignatura
WHERE DATEDIFF(MONTH, stf.[Fecha Ingreso], GETDATE()) > 3
ORDER BY meses_ingreso DESC;