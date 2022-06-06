/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4D7FF0B7
/// @DnDComment : Velocidad de inicio del enemigo
/// @DnDArgument : "expr" "2"
/// @DnDArgument : "var" "move_speed"
move_speed = 2;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 220A9F10
/// @DnDComment : El enemigo ataca, siempre y cuando no haya$(13_10)una colision en él.$(13_10)
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "attacking"
attacking = false;

/// @DnDAction : YoYo Games.Paths.Start_Path
/// @DnDVersion : 1.1
/// @DnDHash : 5BF1EF42
/// @DnDArgument : "path" "path_enemy_5"
/// @DnDArgument : "speed" "move_speed"
/// @DnDArgument : "atend" "path_action_continue"
/// @DnDArgument : "relative" "true"
/// @DnDSaveInfo : "path" "path_enemy_5"
path_start(path_enemy_5, move_speed, path_action_continue, true);