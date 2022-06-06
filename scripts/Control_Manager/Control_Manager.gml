function scr_crear_archivo(nombre_archivo)
{
	if not file_exists(working_directory + nombre_archivo)
	{
	    ini_open(working_directory + nombre_archivo);
		
		ini_write_string	("SECCION REAL",		0,			coins);
		ini_write_string	("SECCION STRING",		"KEY0",		"VALOR 2");
		
		ini_write_real		("SECCION REAL",		"KEY0",		1);
		
	    ini_close();
		
		return true;
	}
	else
	{
		return false;
	}
}

function scr_leer_archivo(nombre_archivo)
{
	if file_exists(working_directory + nombre_archivo)
	{
		var valores = [];
		
	    ini_open(working_directory + nombre_archivo);
		
		valores[0] = ini_read_string	("SECCION STRING",		"KEY0",		"ERROR 01");
		valores[1] = ini_read_string	("SECCION STRING",		string(0),		"ERROR 01");
		
		valores[2] = ini_read_real		("SECCION REAL",		"KEY0",		0);
		
	    ini_close();
		
		return valores;
	}
	else
	{
		return false;
	}
}

function scr_modificar_valor(nombre_archivo, tipo, seccion, key, valor)
{
	if file_exists(working_directory + nombre_archivo)
	{
	    ini_open(working_directory + nombre_archivo);
		
		if(ini_section_exists(seccion))
		{
			if(ini_key_exists(seccion, key))
			{
				switch(tipo)
				{
					case "string":
						ini_write_string	(seccion,		key,		valor);
						break;
						
					case "real":
						ini_write_real		(seccion,		key,		valor);
						break;
						
					default:
						return "No se puede guardar ese formato.";
						break;
				}
				
				return "Archivo modificado correctamente.";
			}
			else
			{
				return "La clave no existe.";
			}
		}
		else
		{
			return "La seccion no existe.";
		}
		
	    ini_close();
	}
	else
	{
		return "Archivo no existe.";
	}
}

function scr_borrar_archivo(nombre_archivo)
{
	if not file_exists(working_directory + nombre_archivo)
	{		
		return false;
	}
	else
	{
		file_delete(working_directory + nombre_archivo);
		return true;
	}
}




//EXTRA

function scr_numero_secciones_numerales(archivo)
{
	var numero	= 0;
	var fin		= false;
	
	ini_open(working_directory + archivo);
	
	while(fin == false)
	{
		if (ini_section_exists(string(numero)))
		{
			numero++;
		}
		else
		{
			fin = true;
		}
	}

	ini_close();
	
	return numero;
}

function scr_numero_keys_numerales(archivo, seccion)
{
	var numero = 0;
	var fin = false;
	
	ini_open(working_directory + archivo);
	
	while(fin == false)
	{
		if (ini_key_exists(seccion,string(numero)))
		{
			numero++;
		}
		else
		{
			fin = true;
		}
	}

	ini_close();
	
	return numero;
}
