// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function crear_archivo_honor(nombre_archivo) 
{
	if not file_exists(working_directory + nombre_archivo)
	{
	    ini_open(working_directory + nombre_archivo);
		
		ini_write_string	("PRIMERO",		"ACIERTOS",		"30");
		ini_write_string	("SEGUNDO",		"ACIERTOS",		"20");
		ini_write_string	("TERCERO",		"ACIERTOS",		"10");
		
		ini_write_string	("PRIMERO",		"NOMBRE",		"OSCAR");
		ini_write_string	("SEGUNDO",		"NOMBRE",		"JUAN");
		ini_write_string	("TERCERO",		"NOMBRE",		"AYRI");
	
	    ini_close();
		
		return true;
	}
	else
	{
		return false;
	}
}
