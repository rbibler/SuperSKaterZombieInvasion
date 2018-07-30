/// This is a script that helps the Zombie Surfer decide what to do when it's hit by ammo
/// @arg ammoType

var ammoType = argument0;

if(state == stateDefending) {
	if((facing == -1 and ammoType.x > x) or (facing == 1 and ammoType.x < x)) {
		stateSwitch("HIT");
	} 
}