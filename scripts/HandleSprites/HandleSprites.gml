
function HandleSprites(){


switch (argument0) {
	case CHAR_1:
		sp_idle = idle_1
		sp_forward = walk_forward_1
		sp_backward = walk_back_1
		sp_fall = fall_1
		sp_duck = crouch_1
		sp_jump = jump_1
		
		//attacks
		sp_attack =
		
	break
	
	case CHAR_2:
		sp_idle = idle_2
		sp_forward = walk_forward_2
		sp_backward = walk_back_2
		sp_fall = fall_2
		sp_duck = crouch_2
		sp_jump = jump_2
	break
}


sprite_index = sp_idle

}