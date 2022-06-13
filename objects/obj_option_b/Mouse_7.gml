/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 097E0E7A
event_inherited();

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 2FDCECE9
/// @DnDArgument : "imageind_relative" "1"
/// @DnDArgument : "spriteind" "sprite_tache"
/// @DnDSaveInfo : "spriteind" "sprite_tache"
sprite_index = sprite_tache;
image_index += 0;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 6419DECC
/// @DnDArgument : "soundid" "wrong"
/// @DnDSaveInfo : "soundid" "wrong"
audio_play_sound(wrong, 0, 0);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 0FFB97D6
/// @DnDArgument : "function" "instance_activate_all"
instance_activate_all();

/// @DnDAction : YoYo Games.Sequences.Sequence_Destroy
/// @DnDVersion : 1
/// @DnDHash : 3842B0CB
/// @DnDArgument : "var" "global.question_seq"
layer_sequence_destroy(global.question_seq);

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 54B23E5C
/// @DnDComment : Set the color to red to show the player$(13_10)has lost
/// @DnDArgument : "colour" "$FF0000FF"
image_blend = $FF0000FF & $ffffff;
image_alpha = ($FF0000FF >> 24) / $ff;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 41F33861
/// @DnDComment : Play "hurt" sound
/// @DnDArgument : "soundid" "snd_hurt"
/// @DnDSaveInfo : "soundid" "snd_hurt"
audio_play_sound(snd_hurt, 0, 0);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 304F2C65
/// @DnDComment : Tell the Alarm 0 event to run after 20 frames$(13_10)$(13_10)After 20 frames that event will restart the level
/// @DnDArgument : "steps" "20"
alarm_set(0, 20);

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 25D35F59
/// @DnDArgument : "x" "other.x"
/// @DnDArgument : "y" "other.y"
direction = point_direction(x, y, other.x, other.y);

/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
/// @DnDVersion : 1
/// @DnDHash : 4B787D31
/// @DnDArgument : "direction" "180"
/// @DnDArgument : "direction_relative" "1"
direction += 180;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 32D31341
/// @DnDArgument : "speed" "12"
speed = 12;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 63AD7F07
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "global.hearts"
global.hearts += -1;