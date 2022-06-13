// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function leer_preguntas(nombre_archivo, numero) 
{
	if file_exists(working_directory + nombre_archivo)
	{
		var pregunta = "";
		
	    ini_open(working_directory + nombre_archivo);
		
		pregunta = ini_read_string	("PREGUNTA_" + string(numero),		"PREGUNTA",		"ERROR 4");
		
	    ini_close();
		
		return pregunta;
	}
	else
	{
		return false;
	}
}
