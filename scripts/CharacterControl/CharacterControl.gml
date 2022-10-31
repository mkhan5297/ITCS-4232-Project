
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
	break
	
}

if landed
	image_xscale = (opponent.x>x)?1:-1

}