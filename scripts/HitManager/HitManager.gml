
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
						var h = CreateHit(self, noone, 4, 50*sign(image_xscale), 20)
						h._id = hit_base_id*round(image_index)
					}
				}
			}else {// normal indexes
				var indexes = attack_indexes[atk_type];
				
				for (var i = 0; i < array_length_1d(indexes); i++ ){
					if round(image_index) == indexes[i] {
						//create hit object
						var h = CreateHit(self, noone, 4, 50*sign(image_xscale), 70)
						h._id = hit_base_id*round(image_index)
					}
				}
				
			}
		}else { // air indexes
			var indexes = air_attack_indexes[atk_type];
				
				for (var i = 0; i < array_length_1d(indexes); i++ ){
					if round(image_index) == indexes[i] {
						//create hit object
						var h = CreateHit(self, noone, 4, 50*sign(image_xscale), 40)
						h._id = hit_base_id*round(image_index)
					}
				}
			
			
		}
	break
	
	case STATE_THROW:
		var indexes = throw_index[throw_dir];
				
				for (var i = 0; i < array_length_1d(indexes); i++ ){
					if round(image_index) == indexes[i] {
						//create hit object
						var h = CreateHit(self, noone, 4, 50*sign(image_xscale), 70)
						h._id = hit_base_id*round(image_index)
					}
				}
		
	break
}

}