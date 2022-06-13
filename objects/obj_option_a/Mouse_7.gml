/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 701F74BF
event_inherited();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 3AE166A2
/// @DnDArgument : "soundid" "snd_acierto"
/// @DnDSaveInfo : "soundid" "snd_acierto"
audio_play_sound(snd_acierto, 0, 0);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 5FC23418
/// @DnDArgument : "function" "instance_activate_all"
instance_activate_all();

/// @DnDAction : YoYo Games.Sequences.Sequence_Destroy
/// @DnDVersion : 1
/// @DnDHash : 2A5868D5
/// @DnDArgument : "var" "global.question_seq"
layer_sequence_destroy(global.question_seq);