/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 5D941CF6
speed = 0;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 113F2C35
/// @DnDArgument : "var" "global.hearts"
/// @DnDArgument : "op" "2"
if(global.hearts > 0)
{
	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4408E4A3
	/// @DnDParent : 113F2C35
	image_blend = $FFFFFFFF & $ffffff;
	image_alpha = ($FFFFFFFF >> 24) / $ff;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1ED0E5DA
else
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4D6C61BB
	/// @DnDParent : 1ED0E5DA
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_player_defeated"
	/// @DnDSaveInfo : "objectid" "obj_player_defeated"
	instance_create_layer(x + 0, y + 0, "Instances", obj_player_defeated);

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 18070929
	/// @DnDParent : 1ED0E5DA
	/// @DnDArgument : "code" "global.Nombre = "";$(13_10)global.Nombre = get_string("Escribe tu nombre" , "");$(13_10)guardar_archivo_honor(global.Nombre, obj_player.coins);$(13_10)"
	global.Nombre = "";
	global.Nombre = get_string("Escribe tu nombre" , "");
	guardar_archivo_honor(global.Nombre, obj_player.coins);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3CE1BA0C
	/// @DnDParent : 1ED0E5DA
	instance_destroy();
}