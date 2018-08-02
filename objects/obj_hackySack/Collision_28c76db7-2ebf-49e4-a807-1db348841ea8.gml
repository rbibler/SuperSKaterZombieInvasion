/// @description Insert description here
// You can write your code in this editor

with(other) {
	if(state != hitImmobilizedState and !isImmune) {
		stateSwitch("HIT FALLBACK");
		health -= other.hitPoints;
	}
	
}

instance_destroy();