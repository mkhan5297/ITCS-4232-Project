
function AnimationControl(){
	switch(state) {
		case STATE_FREE:
		if landed {
			if !duck {
				if hspd == 0
					SetSprite(turning?sp_turn:sp_idle)
				else
					if !turning
						sprite_index = (sign(hspd) == sign(image_xscale))?sp_forward:sp_backward
					else
						SetSprite(sp_turn)
			}else{ // duck animation
				if turning{
					SetSprite(sp_crouch_turn)
				}else {
					if !SetSprite(sp_duck)
					FreezeLastFrame()
				}
				
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
		
		case STATE_HURT:
			switch(dmg_state) {
				case EFF_NONE:
					if landed {
						SetSprite(duck?sp_low_hurt:sp_high_hurt)	
					}
				break
				
				case EFF_KNOCKBACK:
					if landed {
						SetSprite(sp_ko)	
					}
				break
				
				case EFF_KNOCKUP:
				
				break
			}
			
		break
		
		case STATE_BLOCK:
			if landed {
				SetSprite(duck?sp_block_l:sp_block_h)
			}
		break
		
		case STATE_LOSE:
			SetSprite(sp_lose)
		break
		
		case STATE_WIN:
			SetSprite(sp_win)
		break
	}

}