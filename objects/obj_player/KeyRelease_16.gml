/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 4922DB89
/// @DnDArgument : "obj" "obj_energy_shield"
/// @DnDSaveInfo : "obj" "obj_energy_shield"
var l4922DB89_0 = false;
l4922DB89_0 = instance_exists(obj_energy_shield);
if(l4922DB89_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1E4909FD
	/// @DnDApplyTo : obj_energy_shield
	/// @DnDParent : 4922DB89
	with(obj_energy_shield) instance_destroy();
}