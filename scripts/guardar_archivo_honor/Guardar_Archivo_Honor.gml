// // Script assets have changed for v2.3.0 see
// // https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function guardar_archivo_honor(usuario, cantidad) 
{
	archivo			= "laberinto.ini";

	aciertos_lectura = [];
	nombres_lectura = [];
	
	n_aciertos_lectura = [];
	n_nombres_lectura = [];

	if not file_exists(working_directory + archivo)
	{
		crear_archivo_honor(archivo);
	}

	nombres_lectura=leer_nombres(archivo);
	aciertos_lectura=leer_aciertos(archivo);

	if (int64(aciertos_lectura[0])<int64(cantidad))
	{
		n_aciertos_lectura[0]=cantidad;
		n_nombres_lectura[0]=usuario;
		n_aciertos_lectura[1]=aciertos_lectura[0];
		n_nombres_lectura[1]=nombres_lectura[0];
		n_aciertos_lectura[2]=aciertos_lectura[1];
		n_nombres_lectura[2]=nombres_lectura[1];
	}
	else
	{
		if (int64(aciertos_lectura[0])==int64(cantidad))
		{
			n_aciertos_lectura[0]=aciertos_lectura[0];
			n_nombres_lectura[0]=nombres_lectura[0];
			n_aciertos_lectura[1]=cantidad;
			n_nombres_lectura[1]=usuario;
			n_aciertos_lectura[2]=aciertos_lectura[1];
			n_nombres_lectura[2]=nombres_lectura[1];
		}
		else
		{
			if (int64(aciertos_lectura[1])<int64(cantidad))
			{
				n_aciertos_lectura[0]=aciertos_lectura[0];
				n_nombres_lectura[0]=nombres_lectura[0];
				n_aciertos_lectura[1]=cantidad;
				n_nombres_lectura[1]=usuario;
				n_aciertos_lectura[2]=aciertos_lectura[1];
				n_nombres_lectura[2]=nombres_lectura[1];
			}
			else
			{
				if (int64(aciertos_lectura[1])==int64(cantidad))
				{
					n_aciertos_lectura[0]=aciertos_lectura[0];
					n_nombres_lectura[0]=nombres_lectura[0];
					n_aciertos_lectura[1]=aciertos_lectura[1];
					n_nombres_lectura[1]=nombres_lectura[1];
					n_aciertos_lectura[2]=cantidad;
					n_nombres_lectura[2]=usuario;
				}
				else
				{
					if (int64(aciertos_lectura[2])<int64(cantidad))
					{
						n_aciertos_lectura[0]=aciertos_lectura[0];
						n_nombres_lectura[0]=nombres_lectura[0];
						n_aciertos_lectura[1]=aciertos_lectura[1];
						n_nombres_lectura[1]=nombres_lectura[1];
						n_aciertos_lectura[2]=cantidad;
						n_nombres_lectura[2]=usuario;
					}
					else
					{
						n_aciertos_lectura[0]=aciertos_lectura[0];
						n_nombres_lectura[0]=nombres_lectura[0];
						n_aciertos_lectura[1]=aciertos_lectura[1];
						n_nombres_lectura[1]=nombres_lectura[1];
						n_aciertos_lectura[2]=aciertos_lectura[2];
						n_nombres_lectura[2]=nombres_lectura[2];
					}
				}
			}
		}
		
		
	}
	
	//////////

	

	


	if file_exists(working_directory + archivo)
	{
	    ini_open(working_directory + archivo);
		
		ini_write_string	("PRIMERO",		"ACIERTOS",		n_aciertos_lectura[0]);
		ini_write_string	("SEGUNDO",		"ACIERTOS",		n_aciertos_lectura[1]);
		ini_write_string	("TERCERO",		"ACIERTOS",		n_aciertos_lectura[2]);
		
		ini_write_string	("PRIMERO",		"NOMBRE",		n_nombres_lectura[0]);
		ini_write_string	("SEGUNDO",		"NOMBRE",		n_nombres_lectura[1]);
		ini_write_string	("TERCERO",		"NOMBRE",		n_nombres_lectura[2]);
	
	    ini_close();
		
		return true;
	}
	else
	{
		return false;
	}
}
