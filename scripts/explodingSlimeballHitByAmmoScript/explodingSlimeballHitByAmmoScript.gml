if(!isImmune) {
	scr_StateSwitch(s_DEAD);
}
// Adding one more than the projectile's alivetime will cause it to be destoryed
// on its next step event
other.aliveCounter = other.aliveTime + 1;