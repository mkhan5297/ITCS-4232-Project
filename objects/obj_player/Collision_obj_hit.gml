
#region exit
if other.owner == self
	exit
	
//exit 
if last_hit_id == other._id
	exit
#endregion	

//take dmg
last_hit_id = other._id
//damage player
hp -= other.dmg
if landed {
	state = STATE_HURT
}
if !landed {
	vspd =- JUMP_FORCE
	hspd = -SPRINT_SPD*sign(image_xscale)
}
with other
	instance_destroy()