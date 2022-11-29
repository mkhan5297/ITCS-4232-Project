if other.owner == self
	exit
	
//damage player
hp -= other.dmg
with other
	instance_destroy()