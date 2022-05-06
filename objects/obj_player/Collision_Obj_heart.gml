/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1E796551
/// @DnDArgument : "var" "hearts"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "max_hearts"
if(hearts < max_hearts)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2EEB51E4
	/// @DnDParent : 1E796551
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "hearts"
	hearts += 1;

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 05D55978
	/// @DnDApplyTo : other
	/// @DnDParent : 1E796551
	with(other) {
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 69CD8274
		/// @DnDParent : 05D55978
		instance_destroy();
	
		/// @DnDAction : YoYo Games.Particles.Effect
		/// @DnDVersion : 1
		/// @DnDHash : 2C745E6E
		/// @DnDParent : 05D55978
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "color" "$FF0000FF"
		effect_create_below(1, 0, 0, 0, $FF0000FF & $ffffff);
	}
}