if(stateNew) {
	script_execute(setupNewState, stateName);
}
MoveAndCollide();

script_execute(checkStateChange, stateName);
