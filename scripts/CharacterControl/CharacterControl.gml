
function CharacterControl(){
		

switch(state) {
	case STATE_FREE:
		can_attack = true 
		
		if landed {
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
			state = STATE_FREE
		}
	break
		
		
		
	
}

if landed
	image_xscale = (opponent.x>x)?1:-1

}