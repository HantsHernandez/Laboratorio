use clinica;
-- Primer Ejercicio Calcular la Edad de un Empleado
create or alter function clinica.obtenerEdadEmpleado(@FechaNacimiento date)
returns int
as begin
	return dateDiff(year,@FechaNacimiento,getDate());
end;

select  clinica.obtenerEdadEmpleado(e.fechaNacimiento) as Edad, e.nombreEmpleado
from clinica.empleados e;


-- Segundo Ejercicio Convertir Texto a Minúsculas

create or alter function clinica.textoMiniscula(@Texto Nvarchar(500))
returns NVarchar(500)
as begin
	return LOWER(@Texto);
end;	

select clinica.textoMiniscula(e.Tratamiento) as tratamiento,clinica.textoMiniscula(e.Padecimiento) as padecimiento  
from clinica.expediente e;