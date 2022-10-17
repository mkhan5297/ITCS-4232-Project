
function CharacterControl(){
		

switch(state) {
	case STATE_FREE:
		//free to move
		hspd = WALK_SPD * (keyboard_check(right) - keyboard_check(left))
		show_debug_message(hspd)
	break
	
}

image_xscale = (opponent.x>x)?1:-1

}