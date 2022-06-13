archivo			= "laberinto.ini";

aciertos_lectura = [];
nombres_lectura = [];

if not file_exists(working_directory + archivo)
	{
		crear_archivo_honor(archivo);
	}

nombres_lectura=leer_nombres(archivo);
aciertos_lectura=leer_aciertos(archivo);
