/*Indicar la cantidad de encargados de docentes y de tutores. Renombrar la columna como CantEncargados.
Quitar la palabra ”Encargado ”en cada uno de los registros. Renombrar la columna como NuevoTipo.
Keywords: Encargado, tipo, Encargado_ID
*/
SELECT COUNT(Encargado_ID) AS CantEncargados, REPLACE(Tipo, 'Encargado ', '') AS NuevoTipo
FROM Encargados
GROUP BY Tipo;