/// This is a script that helps the skater determine what to do when he's hit by an enemy
/// @arg enemy
/// @arg hitPoints

var enemy = argument0;
var hitPoints = argument1;

if(state != knockedBackState and !isImmune) {
	stateVar[0] = sign(x - other.x);
	scr_StateSwitch("KNOCKED BACK");
	if(enemy != noone) {
		health -= enemy.hitPoints;
		infected = enemy.infectious;
	} else {
		health -= hitPoints;
	}
	isImmune = true;
	immuneStart = frameTimer;
	if(health <= 0) {
		scr_StateSwitch(s_DEAD);
	}
	ignoreSwitch = true;
}