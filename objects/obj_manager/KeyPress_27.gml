/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 40AD43A9
/// @DnDArgument : "var" "pause"
/// @DnDArgument : "value" "false"
if(pause == false)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 449867BA
	/// @DnDParent : 40AD43A9
	/// @DnDArgument : "var" "camera_x"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "camera_get_view_x"
	/// @DnDArgument : "arg" "view_camera"
	var camera_x = camera_get_view_x(view_camera);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 4A0775A4
	/// @DnDParent : 40AD43A9
	/// @DnDArgument : "var" "camera_y"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "camera_get_view_y"
	/// @DnDArgument : "arg" "view_camera"
	var camera_y = camera_get_view_y(view_camera);

	/// @DnDAction : YoYo Games.Sequences.Sequence_Create
	/// @DnDVersion : 1
	/// @DnDHash : 13733C67
	/// @DnDParent : 40AD43A9
	/// @DnDArgument : "xpos" "camera_x"
	/// @DnDArgument : "ypos" "camera_y"
	/// @DnDArgument : "var" "pause_seq"
	/// @DnDArgument : "sequenceid" "seq_pause_menu"
	/// @DnDArgument : "layer" ""GUI""
	/// @DnDSaveInfo : "sequenceid" "seq_pause_menu"
	pause_seq = layer_sequence_create("GUI", camera_x, camera_y, seq_pause_menu);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 62C2407C
	/// @DnDParent : 40AD43A9
	/// @DnDArgument : "function" "instance_deactivate_all"
	/// @DnDArgument : "arg" "true"
	instance_deactivate_all(true);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7DD7157E
	/// @DnDParent : 40AD43A9
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "pause"
	pause = true;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 055F43E4
else
{
	/// @DnDAction : YoYo Games.Sequences.Sequence_Destroy
	/// @DnDVersion : 1
	/// @DnDHash : 1EA50A1D
	/// @DnDParent : 055F43E4
	/// @DnDArgument : "var" "pause_seq"
	layer_sequence_destroy(pause_seq);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 59A7B9BA
	/// @DnDParent : 055F43E4
	/// @DnDArgument : "function" "instance_activate_all"
	instance_activate_all();

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 64C1CC1C
	/// @DnDParent : 055F43E4
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "pause"
	pause = false;
}