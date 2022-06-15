/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6191A2C8
/// @DnDArgument : "code" "global.Nombre = "";$(13_10)global.Nombre = get_string("Escribe tu nombre" , "");$(13_10)guardar_archivo_honor(global.Nombre, obj_player.coins);$(13_10)"
global.Nombre = "";
global.Nombre = get_string("Escribe tu nombre" , "");
guardar_archivo_honor(global.Nombre, obj_player.coins);

/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 1509A794
/// @DnDArgument : "room" "rm_honor"
/// @DnDSaveInfo : "room" "rm_honor"
room_goto(rm_honor);