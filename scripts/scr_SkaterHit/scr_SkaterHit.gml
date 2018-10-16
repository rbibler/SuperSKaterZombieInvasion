/// This is a script that helps the skater determine what to do when he's hit by an enemy
/// @arg enemy

var enemy = argument0;

if(state != knockedBackState and !isImmune) {
	stateVar[0] = sign(x - other.x);
	scr_StateSwitch("KNOCKED BACK");
	health -= enemy.hitPoints;
	infected = enemy.infectious;
	isImmune = true;
	immuneStart = frameTimer;
	if(health <= 0) {
		scr_StateSwitch("DEAD");
	}
}