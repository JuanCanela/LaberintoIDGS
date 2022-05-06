/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 57F36E3E
/// @DnDArgument : "expr" ""Boton""
/// @DnDArgument : "var" "texto"
texto = "Boton";

/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
/// @DnDVersion : 1
/// @DnDHash : 27A4140E
audio_stop_all();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 21152B7A
/// @DnDArgument : "soundid" "snd_music_menu"
/// @DnDSaveInfo : "soundid" "snd_music_menu"
audio_play_sound(snd_music_menu, 0, 0);