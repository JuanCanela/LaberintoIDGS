/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5340F96B
/// @DnDInput : 2
/// @DnDArgument : "expr" "4"
/// @DnDArgument : "expr_1" "max_hearts"
/// @DnDArgument : "var" "max_hearts"
/// @DnDArgument : "var_1" "hearts"
max_hearts = 4;
hearts = max_hearts;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4D7FF0B7
/// @DnDComment : This variable is called$(13_10)move_speed and stores$(13_10)the movement speed of the$(13_10)player. The speed is in$(13_10)pixels-per-second.
/// @DnDArgument : "expr" "4"
/// @DnDArgument : "var" "move_speed"
move_speed = 4;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 094CA1E3
/// @DnDComment : Initialize coins value at 0
/// @DnDArgument : "var" "coins"
coins = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 609435DA
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "powerup_active"
powerup_active = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 357CCE6E
/// @DnDArgument : "expr" "move_speed"
/// @DnDArgument : "var" "default_move_speed"
default_move_speed = move_speed;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5FD52100
/// @DnDArgument : "expr" "100"
/// @DnDArgument : "var" "shield_energy"
shield_energy = 100;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4C3CBAD4
/// @DnDArgument : "code" "archivo			= "Coins.INI";$(13_10)$(13_10)existe			= false;$(13_10)$(13_10)creado			= noone;$(13_10)$(13_10)$(13_10)lectura			= false;$(13_10)valores_lectura = [];$(13_10)$(13_10)modificar		= "No se ha ejecutado ninguna accion de modificado.";$(13_10)$(13_10)borrar			= noone;$(13_10)"
archivo			= "Coins.INI";

existe			= false;

creado			= noone;


lectura			= false;
valores_lectura = [];

modificar		= "No se ha ejecutado ninguna accion de modificado.";

borrar			= noone;