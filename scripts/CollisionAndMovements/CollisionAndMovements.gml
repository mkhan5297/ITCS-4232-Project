
function CollisionAndMovements(){
//gravity
vspd += grv
//show_debug_message("Collision and Movements script")
//horizontal collision
if place_meeting(x+hspd, y, obj_solid) {
	while !place_meeting(x+sign(hspd), y, obj_solid) {
		x += sign(hspd)
		
	}
	hspd = 0
}

//vertical collision
landed = place_meeting(x, y +vspd, obj_solid)
if landed {
	while !place_meeting(x, y+sign(vspd), obj_solid) {
		y += sign(vspd)
		
	}
	vspd = 0
}

x+=hspd
y+=vspd
if distance_to_object(opponent) > room_width/2-100
	x -=hspd


}