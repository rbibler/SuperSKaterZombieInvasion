if(stateNew) {
	script_execute(setupNewState, stateName);
}

script_execute(animate, stateName);
MoveAndCollide();
script_execute(checkStateChange, stateName);




