if keyboard_check_pressed(ord("W")){
	cur_index --;
}

if keyboard_check_pressed(ord("S")){
	cur_index ++;
}

cur_index = clamp(cur_index, 0, array_length_1d(menu));

if keyboard_check_pressed(ord("J")){
	switch (cur_index) {
		case 0: //vs ai
			room_goto(rm_char_select);
		break
		
		case 1: //p1 vs p2
			global.enemy_type = CONT_P2
			room_goto(rm_char_select);
		break;
		
		case 3: // controls
			room_goto(rm_controls);
		break
		
		case 4:
			game_end()
		break
		
		
		default:
			room_goto_next();
		break
		
		
	}
}