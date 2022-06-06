/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0B55D367
/// @DnDArgument : "code" "existe = file_exists(working_directory + archivo);"
existe = file_exists(working_directory + archivo);

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 348D38DB
/// @DnDArgument : "obj" "obj_energy_shield"
/// @DnDSaveInfo : "obj" "obj_energy_shield"
var l348D38DB_0 = false;
l348D38DB_0 = instance_exists(obj_energy_shield);
if(l348D38DB_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2290C1F2
	/// @DnDParent : 348D38DB
	/// @DnDArgument : "expr" "-0.4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "shield_energy"
	shield_energy += -0.4;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 464E71D8
	/// @DnDParent : 348D38DB
	/// @DnDArgument : "var" "shield_energy"
	/// @DnDArgument : "op" "3"
	if(shield_energy <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4EA97869
		/// @DnDApplyTo : obj_energy_shield
		/// @DnDParent : 464E71D8
		with(obj_energy_shield) instance_destroy();
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 534CFF1B
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 13B27757
	/// @DnDParent : 534CFF1B
	/// @DnDArgument : "var" "shield_energy"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "100"
	if(shield_energy < 100)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 71A9BB5C
		/// @DnDParent : 13B27757
		/// @DnDArgument : "expr" "0.1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "shield_energy"
		shield_energy += 0.1;
	}
}