/*
Se requiere saber cual es el nombre, el documento de identidad y el teléfono de los estudiantes que son
profesionales en agronomía y que nacieron entre el año 1970 y el año 2000. Keywords: Estudiantes,
Profesión, Fecha de Nacimiento.


*/
SELECT Nombre, Apellido, Documento, Telefono
FROM Estudiantes
WHERE (Profesion)= 6 AND [Fecha de Nacimiento] BETWEEN '1970-01-01' AND '2000-12-31';


