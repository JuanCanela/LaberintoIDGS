// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function leer_aciertos(nombre_archivo)
{
	if file_exists(working_directory + nombre_archivo)
	{
		var aciertos = [];
		
	    ini_open(working_directory + nombre_archivo);
		
		aciertos[0] = ini_read_string	("PRIMERO",		"ACIERTOS",		"ERROR 02");
		aciertos[1] = ini_read_string	("SEGUNDO",		"ACIERTOS",		"ERROR 02");
		aciertos[2] = ini_read_string	("TERCERO",		"ACIERTOS",		"ERROR 02");
		
	    ini_close();
		
		return aciertos;
	}
	else
	{
		return false;
	}
}
