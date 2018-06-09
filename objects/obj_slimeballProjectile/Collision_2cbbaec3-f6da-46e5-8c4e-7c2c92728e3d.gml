/// @description Insert description here
// You can write your code in this editor

with(other) {
	if(state != hitImmobilizedState and !isImmune) {
		stateSwitch("HIT_IMMOBILIZED");
		health -= other.hitPoints;
		infected = true;
	}
	
}

instance_destroy();