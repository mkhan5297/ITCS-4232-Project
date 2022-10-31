
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
	}

}