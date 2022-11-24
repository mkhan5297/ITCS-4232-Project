
function HandleSprites(){


switch (argument0) {
	case CHAR_1:
		sp_idle = idle_1
		sp_forward = walk_forward_1
		sp_backward = walk_back_1
		sp_fall = fall_1
		sp_duck = crouch_1
		sp_jump = jump_1
		sp_sprint = run_forward_1
		sp_sprint_back = run_back_1
		
		//attacks
		sp_attack      = [light_punch_1, heavy_punch_1, light_kick_1, heavy_kick_1]
		sp_attack_duck = [crouch_light_punch_1, crouch_heavy_punch_1, crouch_light_kick_1, crouch_heavy_kick_1]
		sp_attack_air  = [jump_light_punch_1, jump_light_punch_1, jump_light_kick_1, jump_heavy_kick_1]
		
		//throws
		sp_throw = throw_1
		
	break
	
	case CHAR_2:
		sp_idle = idle_2
		sp_forward = walk_forward_2
		sp_backward = walk_back_2
		sp_fall = fall_2
		sp_duck = crouch_2
		sp_jump = jump_2
		sp_sprint = run_forward_2
		sp_sprint_back = run_back_2
		//attacks
		sp_attack      = [light_punch_2, heavy_punch_2, light_kick_2, heavy_kick_2]
		sp_attack_duck = [crouch_light_punch_2, crouch_heavy_punch_2, crouch_light_kick_2, crouch_heavy_kick_2]
		sp_attack_air  = [jump_light_punch_2, jump_light_punch_2, jump_light_kick_2, jump_heavy_kick_2]
		
		//throws
		sp_throw = throw_2
		
	break
}


sprite_index = sp_idle

}