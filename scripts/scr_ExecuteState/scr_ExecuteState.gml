/// This is a script that all Enemies will have that helps them figure out what to do when they are Idle

if(stateNew) {
	script_execute(setupNewState, stateName);
}

script_execute(move); 

// Check how fast the skater should be moving
//scr_EnemyHorizontalImpetus();

if(shouldMove) {
	scr_EnemyMovement();
}
scr_MoveAndCollide();

script_execute(animate, stateName);
script_execute(checkStateChange, stateName);

