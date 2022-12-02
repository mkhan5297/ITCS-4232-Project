if distance_to_point(target_x, target_y) < spd{
	x = target_x
	y = target_y
} else {
	dir = point_direction(x, y, target_x, target_y)	
	x += lengthdir_x(spd, dir)
	y += lengthdir_y(spd, dir)
}


//move the camera
camera_set_view_border(view_camera[0], room_width/2, room_height)
camera_set_view_target(view_camera[0], global.camera)