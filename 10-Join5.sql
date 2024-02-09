/*
 Se requiere un listado unificado con nombre, apellido, documento y una marca indicando a que base
corresponde. Renombrar como Marca.  Keywords: Encargado,Staff,Estudiantes.
*/
SELECT nombre, apellido, documento, 'Encargado' AS Marca
FROm Encargado
UNION ALL
SELECT nombre, apellido, documento, 'Staff' AS Marca
FROM Staff
UNION ALL
SELECT nombre, apellido, documento, 'Estudiantes' AS Marca
FROM Estudiantes;




/*
SELECT nombre, apellido, documento, 'Encargo' AS Marca
FROM Encargo
UNION ALL
SELECT nombre, apellido, documento, 'Staff' AS Marca
FROM Staff
UNION ALL
SELECT nombre, apellido, documento, 'Estudiantes' AS Marca
FROM Estudiantes;
*/