/*Se requiere saber el id del encargado, el nombre, el apellido y cuántos son los docentes que tiene asignados
cada encargado. Luego filtrar los encargados que tienen como resultado 0 ya que son los encargados que NO
tienen asignado un docente. Renombrar el campo de la operación como Cant_Docentes. Keywords:
Docentes_id, Encargado, Staff, Nombre, Apellido,Encargado_ID*/

SELECT Encargado.Encargado_ID, Encargado.Nombre, Encargado.Apellido, COUNT(Staff.DocentesID) AS Cant_Docentes
FROM Encargado
LEFT JOIN Staff ON Encargado.Encargado_ID = Staff.Encargado
GROUP BY Encargado_ID, Encargado.Nombre, Encargado.Apellido
HAVING COUNT(Staff.DocentesID) = 0;
