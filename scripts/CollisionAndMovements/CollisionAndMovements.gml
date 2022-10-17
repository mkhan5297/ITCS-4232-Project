
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
if place_meeting(x, y +vspd, obj_solid) {
	while !place_meeting(x, y+sign(vspd), obj_solid) {
		y += sign(vspd)
		
	}
	vspd = 0
}

x+=hspd
y+=vspd


}