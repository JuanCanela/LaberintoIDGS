//draw_self();
draw_set_font(fnt_button);
//draw_set_halign(fa_center);
//draw_set_valign(fa_middle);

for( var xx = 0; xx < array_length(nombres_lectura); xx++)
{
	draw_text(320, 240 + (xx * 60), string(nombres_lectura[xx]));
	draw_text(500, 240 + (xx * 60), string(aciertos_lectura[xx]));

	//draw_text(x + 180, y + 0,  + string(nombres_lectura[xx]));
	//draw_text(x + 180, y + 0,  + string(aciertos_lectura[xx]));
	
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);

