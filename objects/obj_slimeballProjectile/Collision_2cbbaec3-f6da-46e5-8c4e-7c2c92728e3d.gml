/// @description Insert description here
// You can write your code in this editor

with(other) {
	if(state != knockedBackState and !isImmune) {
		stateSwitch("KNOCKED BACK");
		health -= other.hitPoints;
		infected = true;
	}
	
}

instance_destroy();