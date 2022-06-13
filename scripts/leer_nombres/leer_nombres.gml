// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function leer_nombres(nombre_archivo) 
{
	if file_exists(working_directory + nombre_archivo)
	{
		var nombres = [];
		
	    ini_open(working_directory + nombre_archivo);
		
		nombres[0] = ini_read_string	("PRIMERO",		"NOMBRE",		"ERROR 01");
		nombres[1] = ini_read_string	("SEGUNDO",		"NOMBRE",		"ERROR 01");
		nombres[2] = ini_read_string	("TERCERO",		"NOMBRE",		"ERROR 01");
		
	    ini_close();
		
		return nombres;
	}
	else
	{
		return false;
	}
}
