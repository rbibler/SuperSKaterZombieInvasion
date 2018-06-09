/// @description This is what happens when you're hit with a slingshot... you die!

// Only want to switch states if this is the first hit
if(state != deadState) {
	// Insta death!
	stateSwitch("DEAD");
	// Adding one more than the projectile's alivetime will cause it to be destoryed
	// on its next step event
	other.aliveCounter = other.aliveTime + 1;
	// Nice job player!
	score += 10;
}