/*
Se requiere un listado de los docentes que ingresaron en el año 2021 y concatenar los campos nombre y
apellido. El resultado debe utilizar un separador: guión (-). Ejemplo: Elba-Jimenez. Renombrar la nueva
columna como Nombres_Apellidos. Los resultados de la nueva columna deben estar en mayúsculas.
Keywords: Staff, Fecha Ingreso, Nombre, Apellido.
*/


USE CoderHouse;

SELECT CONCAT(Nombre, '-', Apellido) AS Nombres_Apellidos, [Fecha Ingreso] AS Fecha_Ingreso
FROM Staff
WHERE  [Fecha Ingreso] BETWEEN '2021-01-01' AND '2021-12-31'
ORDER BY [Fecha Ingreso] DESC;