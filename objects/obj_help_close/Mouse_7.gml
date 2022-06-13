/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 524603E6
event_inherited();

/// @DnDAction : YoYo Games.Sequences.Sequence_Destroy
/// @DnDVersion : 1
/// @DnDHash : 21E84B68
/// @DnDArgument : "var" "global.help_popup"
layer_sequence_destroy(global.help_popup);

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 47396774
/// @DnDApplyTo : {obj_button_parent}
/// @DnDArgument : "x" "0"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-1000"
/// @DnDArgument : "y_relative" "1"
with(obj_button_parent) {
x += 0;
y += -1000;
}