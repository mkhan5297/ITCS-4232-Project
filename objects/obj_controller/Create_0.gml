//spawning players

p1 = instance_create_layer(room_width/2-100, 220, "Instances", obj_player)
p2 = instance_create_layer(room_width/2+100, 220, "Instances", obj_player)
p2.image_xscale = -1
p2.controller = global.enemy_type



//setting opponents

p1.opponent = p2
p2.opponent = p1


//set sprites

p1.character = global.p1_char
p2.character = global.p2_char

//update sprites
with p1
	HandleSprites(character)
	
with p2
	HandleSprites(character)