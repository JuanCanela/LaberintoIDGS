/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 14AA705F
event_inherited();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 38AB8610
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "obj_manager.pause"
obj_manager.pause = false;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 30FE5FC2
/// @DnDArgument : "function" "instance_activate_all"
instance_activate_all();

/// @DnDAction : YoYo Games.Sequences.Sequence_Destroy
/// @DnDVersion : 1
/// @DnDHash : 618C29F3
/// @DnDArgument : "var" "obj_manager.pause_seq"
layer_sequence_destroy(obj_manager.pause_seq);