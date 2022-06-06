/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 687C0832
var l687C0832_0;
l687C0832_0 = keyboard_check_pressed(vk_space);
if (l687C0832_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4CA6E23D
	/// @DnDParent : 687C0832
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "image_index"
	image_index = 1;

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 46A0DABD
	/// @DnDApplyTo : gate2_to_open
	/// @DnDParent : 687C0832
	with(gate2_to_open) {
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 0BEF1C84
		/// @DnDParent : 46A0DABD
		image_speed = 1;
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 48657688
		/// @DnDParent : 46A0DABD
		/// @DnDArgument : "var" "camera_x"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "function" "camera_get_view_x"
		/// @DnDArgument : "arg" "view_camera"
		var camera_x = camera_get_view_x(view_camera);
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 5B2E6AEE
		/// @DnDParent : 46A0DABD
		/// @DnDArgument : "var" "camera_y"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "function" "camera_get_view_y"
		/// @DnDArgument : "arg" "view_camera"
		var camera_y = camera_get_view_y(view_camera);
	
		/// @DnDAction : YoYo Games.Sequences.Sequence_Create
		/// @DnDVersion : 1
		/// @DnDHash : 6E0B4512
		/// @DnDParent : 46A0DABD
		/// @DnDArgument : "xpos" "camera_x"
		/// @DnDArgument : "ypos" "camera_y"
		/// @DnDArgument : "var" "global.question_seq"
		/// @DnDArgument : "sequenceid" "seq_question"
		/// @DnDArgument : "layer" ""GUI""
		/// @DnDSaveInfo : "sequenceid" "seq_question"
		global.question_seq = layer_sequence_create("GUI", camera_x, camera_y, seq_question);
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 18F74BF3
		/// @DnDParent : 46A0DABD
		/// @DnDArgument : "function" "instance_deactivate_all"
		/// @DnDArgument : "arg" "true"
		instance_deactivate_all(true);
	}
}