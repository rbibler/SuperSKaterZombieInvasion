/// This is a script that all Enemies will have that helps them figure out what to do when they are in a move state

if(stateNew) {
	script_execute(setupNewState, stateName);
}

script_execute(move); 

// Check how fast the skater should be moving
scr_EnemyHorizontalImpetus();

MoveAndCollide();

script_execute(animate, stateName);
script_execute(checkStateChange, stateName);

