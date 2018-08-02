if(state != stateDead and state != stateHit and state != stateIdle) {
	stateSwitch("DEAD");
}

// Adding one more than the projectile's alivetime will cause it to be destoryed
// on its next step event
other.aliveCounter = other.aliveTime + 1;