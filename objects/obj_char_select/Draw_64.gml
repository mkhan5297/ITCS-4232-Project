
var width = room_width/2;
draw_set_font(fnt_main)
draw_set_halign(fa_center)
draw_set_color(c_yellow)
draw_text(width ,50, "Character Select");
draw_set_halign(fa_left)


for (var i = 0; i < MAX_CHARS; i++){
	draw_sprite(icons[i], 0,(width/2)+50 +64+64*i , 100);
	
	if i == p1_index {
		draw_set_color(c_green)
		draw_text((width/2)+140 +64*i, 100, "P1")
		draw_set_color(c_white)
	}
	
	
	if i == p2_index {
		draw_set_color(c_blue)
		draw_text((width/2)+140 +64*i, 120, "P2")
		draw_set_color(c_white)
	}
}

if p1_ready and p2_ready 
	draw_text(315, 300, "GET READY");
	
	

//draw portraits

draw_sprite(ports[p1_index], 0, 0, 0);
draw_sprite_ext(ports[p2_index], 0, width*2, 0, -1, 1, 0, c_white, 1)


draw_set_halign(fa_left)