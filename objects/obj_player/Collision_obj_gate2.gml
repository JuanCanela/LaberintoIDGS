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
	}
}