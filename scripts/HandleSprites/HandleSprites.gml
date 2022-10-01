
function HandleSprites(){


switch (argument0) {
	case CHAR_1:
		sp_idle = idle_1
		sp_forward = walk_forward_1
		sp_backward = walk_back_1
	break
	
	case CHAR_2:
		sp_idle = idle_2
		sp_forward = walk_forward_2
		sp_backward = walk_back_2
	break
}


sprite_index = sp_idle

}