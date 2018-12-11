/// A script to help the gull figure out what to do when it's hit by ammo
/// @arg ammo

var ammo = argument0;
if(state != stateDead and state != stateHit) {
	scr_StateSwitch("DEAD");
	with(ammo) {
		script_execute(destroyThyself);
	}
}