
function HitManager(){
	
switch(state) {
	case STATE_ATTACK:
		//check image index and create hit object
		if landed {
			if duck { // duck indexes 
				var indexes = duck_attack_indexes[atk_type];
				
				for (var i = 0; i < array_length_1d(indexes); i++ ){
					if round(image_index) == indexes[i] {
						//create hit object
						CreateHit(self, noone, 4, 50*sign(image_xscale), 20)
					}
				}
			}else {// normal indexes
				var indexes = attack_indexes[atk_type];
				
				for (var i = 0; i < array_length_1d(indexes); i++ ){
					if round(image_index) == indexes[i] {
						//create hit object
						CreateHit(self, noone, 4, 50*sign(image_xscale), 70)
					}
				}
				
			}
		}else { // air indexes
			var indexes = air_attack_indexes[atk_type];
				
				for (var i = 0; i < array_length_1d(indexes); i++ ){
					if round(image_index) == indexes[i] {
						//create hit object
						CreateHit(self, noone, 4, 50*sign(image_xscale), 50)
					}
				}
			
			
		}
	break
}

}