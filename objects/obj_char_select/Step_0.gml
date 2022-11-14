if !p1_ready {
	if (keyboard_check_pressed(ord("D")))
		p1_index ++

	if (keyboard_check_pressed(ord("A")))
		p1_index --
		
		
	if (keyboard_check_pressed(ord("J")))
		p1_ready = true
		global.p1_char = p1_index
	
	
}


if !p2_ready {
	if (keyboard_check_pressed(vk_right))
		p2_index ++

	if (keyboard_check_pressed(vk_left))
		p2_index --
		
	if (keyboard_check_pressed(vk_numpad1))
		p2_ready = true
		global.p2_char = p2_index
}
	
if p1_ready and p2_ready {
	if alarm[0] < 0
		alarm[0] = room_speed * 2
	
}
	

	
	
p1_index = clamp(p1_index, 0, MAX_CHARS-1);
p2_index = clamp(p2_index, 0, MAX_CHARS -1);
com_index = clamp(com_index, 0, MAX_CHARS -1);

	
