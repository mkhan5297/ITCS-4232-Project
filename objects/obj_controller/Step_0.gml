#region //camera movement
cam.target_x = (p1.x+p2.x)/2
cam.target_y = room_height/2
#endregion



//losing and winning
if p1.hp == 0{
	p1.state = STATE_LOSE
	p2.state = STATE_WIN
}

if p2.hp == 0{
	p1.state = STATE_WIN
	p2.state = STATE_LOSE	
}




//return to main menu
if keyboard_check_pressed(vk_escape){
	room_goto(rm_main_menu)
}