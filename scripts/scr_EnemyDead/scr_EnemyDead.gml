if(stateNew) {
	script_execute(setupNewState, stateName);
}

script_execute(animate, stateName);
script_execute(checkStateChange, stateName);

