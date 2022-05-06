/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 4CC419CD
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "obj_player"
var l4CC419CD_0 = false;
l4CC419CD_0 = instance_exists(obj_player);
if(l4CC419CD_0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 05117FEB
	/// @DnDComment : Draw the HUD coin sprite
	/// @DnDParent : 4CC419CD
	/// @DnDArgument : "x" "1100"
	/// @DnDArgument : "y" "25"
	/// @DnDArgument : "sprite" "spr_hud_coin"
	/// @DnDSaveInfo : "sprite" "spr_hud_coin"
	draw_sprite(spr_hud_coin, 0, 1100, 25);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 657DA18B
	/// @DnDComment : Change the font to ft_hud
	/// @DnDParent : 4CC419CD
	/// @DnDArgument : "font" "fnt_hud"
	/// @DnDSaveInfo : "font" "fnt_hud"
	draw_set_font(fnt_hud);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 0C56D182
	/// @DnDComment : Draw the player's coins value$(13_10)$(13_10)Taken from the player$(13_10)using obj_player.coins
	/// @DnDParent : 4CC419CD
	/// @DnDArgument : "x" "1170"
	/// @DnDArgument : "y" "90"
	/// @DnDArgument : "caption" ""x""
	/// @DnDArgument : "var" "obj_player.coins"
	draw_text(1170, 90, string("x") + string(obj_player.coins));

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
	/// @DnDVersion : 1
	/// @DnDHash : 0190EA2B
	/// @DnDParent : 4CC419CD
	/// @DnDArgument : "x" "20"
	/// @DnDArgument : "y" "20"
	/// @DnDArgument : "sprite" "spr_hud_heart"
	/// @DnDArgument : "number" "obj_player.hearts"
	/// @DnDSaveInfo : "sprite" "spr_hud_heart"
	var l0190EA2B_0 = sprite_get_width(spr_hud_heart);
	var l0190EA2B_1 = 0;
	for(var l0190EA2B_2 = obj_player.hearts; l0190EA2B_2 > 0; --l0190EA2B_2) {
		draw_sprite(spr_hud_heart, 0, 20 + l0190EA2B_1, 20);
		l0190EA2B_1 += l0190EA2B_0;
	}
}