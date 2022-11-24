
function AnimationControl(){
	switch(state) {
		case STATE_FREE:
		if landed {
			if !duck {
				if hspd == 0
					SetSprite(sp_idle)
				else
					sprite_index = (sign(hspd) == sign(image_xscale))?sp_forward:sp_backward
			}else{ // duck animation
				if !SetSprite(sp_duck)
					FreezeLastFrame()
			}
			
		
		} else {// in the air
			if vspd >= 0
				SetSprite(sp_fall)
			else
				SetSprite(sp_jump)
			
		}
		break
		
		case STATE_ATTACK:
		if !can_attack
			exit
			
			if landed {
				if duck	
					SetSprite(sp_attack_duck[atk_type])
				else
					SetSprite(sp_attack[atk_type])
			}else {
				SetSprite(sp_attack_air[atk_type])
			}
			can_attack = false
		break
		
		
		case STATE_SPRINT:
			if landed
				SetSprite(sp_sprint)
		break
		
		case STATE_STEPBACK:
			if landed 
				SetSprite(sp_sprint_back)
		break
		
		case STATE_THROW:
			if landed
				SetSprite(sp_throw)
		break
	}

}