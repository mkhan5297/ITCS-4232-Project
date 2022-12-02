var backward_key = (sign(image_xscale) != 1)?right:left;

#region exit
if other.owner == self
	exit
	
//exit 
if last_hit_id == other._id
	exit
#endregion	

//check for block
if keyboard_check(backward_key) and landed and state = STATE_FREE{
	if other.low {
		if duck {
			state = STATE_BLOCK;
		}
	}else {
		state = STATE_BLOCK;
	}
}

if state == STATE_BLOCK
	exit

//take dmg
last_hit_id = other._id

//damage player
hp -= 10

//check for effect
switch(other.effect) {
	case EFF_NONE:
		//do nothing
		dmg_state = EFF_NONE
	break
	
	case EFF_KNOCKUP:
		//vspd
		dmg_state = EFF_KNOCKUP
	break
	
	case EFF_KNOCKBACK:
		//throw opponent
		var d = other.owner.throw_dir
		if d == THROW_BACKWARD
			image_xscale =  -image_xscale
		hspd = -WALK_SPD*sign(image_xscale)
		dmg_state = EFF_KNOCKBACK
	break
	
	default:
	
	
}


if landed {
	state = STATE_HURT
	image_index = 0
}
if !landed {
	vspd = -5
	hspd = -SPRINT_SPD/2*sign(image_xscale)
}
with other
	instance_destroy()