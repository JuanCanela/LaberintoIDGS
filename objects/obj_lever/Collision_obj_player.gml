/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 1ABA07D9
/// @DnDArgument : "key" "ord("E")"
var l1ABA07D9_0;
l1ABA07D9_0 = keyboard_check_pressed(ord("E"));
if (l1ABA07D9_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 65CC4D69
	/// @DnDParent : 1ABA07D9
	/// @DnDArgument : "var" "image_index"
	if(image_index == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 13285D7C
		/// @DnDParent : 65CC4D69
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "image_index"
		image_index = 1;
	
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 268F5FB7
		/// @DnDApplyTo : gate_to_open
		/// @DnDParent : 65CC4D69
		with(gate_to_open) {
			/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 4D9CEDE6
			/// @DnDParent : 268F5FB7
			image_speed = 1;
		}
	}
}