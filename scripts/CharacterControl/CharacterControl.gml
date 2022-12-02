
function CharacterControl(){
		
var forward_key = (sign(image_xscale) == 1)?right:left;
var backward_key = (sign(image_xscale) != 1)?right:left;
switch(state) {
	case STATE_FREE:
		can_attack = true 
		
			if landed {
				//turn
				if !turning and opponent.x != x
					turning = (sign(opponent.x-x) == sign(image_xscale)) ?false:true
				
				if turning {
					if AnimationEnd() {
						turning = false
						image_xscale =- image_xscale
						if duck {
							sprite_index = sp_duck
							image_index = image_number-1
						}
					}
				}
				
				
				if !duck
					hspd = WALK_SPD * (keyboard_check(right) - keyboard_check(left))
				else 
					hspd = 0
					
				//jump
				if keyboard_check_pressed(up){
					vspd = JUMP_FORCE
					landed = false
					
				}
				
				//ducking
				duck = keyboard_check(down)
				
				//sprinting
				if doubletap(forward_key) {
					state = STATE_SPRINT;break
				}
				
				//step back
				if doubletap(backward_key){
					state = STATE_STEPBACK;break
				}
				
				//throw
				if keyboard_check_pressed(p1) and keyboard_check_pressed(k1){
					throw_dir = THROW_BACKWARD
					state = STATE_THROW;break ;
				}
		
		} else { //in the air
		
		}
		
		//attacks
		if keyboard_check_pressed(p1) {
			SetAttack(ATK_P1) ; break
		}else if keyboard_check_pressed(p2) {
			SetAttack(ATK_P2) ; break
		}else if keyboard_check_pressed(k1) {
			SetAttack(ATK_K1) ; break
		}else if keyboard_check_pressed(k2) {
			SetAttack(ATK_K2) ; break
		}
	break
	
	case STATE_ATTACK :
		if landed
			hspd = 0
		//return to free state
		if AnimationEnd(){
			if duck {
				sprite_index = sp_duck
				image_index = image_number -1
			}
			RandomizeBaseId()
			state = STATE_FREE
		}
	break
	
	
	case STATE_SPRINT:
		if landed {
			hspd = SPRINT_SPD * sign(image_xscale)
		}
		//return to free state
		if AnimationEnd(){
			if !keyboard_check(forward_key){
				state = STATE_FREE;break
			}
		}
	break
	
	case STATE_STEPBACK:
		hspd = -SPRINT_SPD*(sign(image_xscale))
		if AnimationEnd(){
			state = STATE_FREE;break	
		}	
	break
		
	case STATE_THROW:
		if AnimationEnd() {
			state = STATE_FREE;break
			RandomizeBaseId()
		}
	break
	
	case STATE_HURT:
		if landed {
			if AnimationEnd(){
				if duck {
					sprite_index = sp_duck
					image_index = image_number-1
				}
				dmg_state = EFF_NONE
				state = STATE_FREE
				break
			}
			
		}
	break
		
	case STATE_BLOCK:
		if landed
			hspd = 0
		if AnimationEnd() {
			if duck {
				sprite_index = sp_duck
				image_index = image_number-1
			}
			state = STATE_FREE
			break
		}
	break
}

 
}
