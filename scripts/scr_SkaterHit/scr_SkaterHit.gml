/// This is a script that helps the skater determine what to do when he's hit by an enemy
/// @arg enemy
/// @arg hitPoints

var enemy = argument0;
var hitPoints = argument1;
var didGetHurt = false;
var newState = stateName;

if(onFoot) {
	if(stateName != s_ON_FOOT_HURT and !isImmune) {
		newState = s_ON_FOOT_HURT;
		didGetHurt = true;
	}
} else {
	if(stateName != s_KNOCKED_BACK and !isImmune) {
		newState = s_KNOCKED_BACK;
		didGetHurt = true;
	}
}

if(didGetHurt) {
	stateVar[0] = sign(x - other.x);
	scr_StateSwitch(newState);
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