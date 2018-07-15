/// @description Insert description here
// You can write your code in this editor
with(other) {
	if(state != hitImmobilizedState and !isImmune) {
		show_debug_message("I'm Hit!");
		stateSwitch("HIT_IMMOBILIZED");
		health -= other.hitPoints;
		isImmune = true;
		immuneStart = frameTimer;
	}
}