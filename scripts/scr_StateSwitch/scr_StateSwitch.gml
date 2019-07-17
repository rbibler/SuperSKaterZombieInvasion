/// @description state_switch(state <script or name>,<push to stack?>)
/// @function state_switch
/// @param state <script or name>
/// @param <push to stack?>

/*
Adapted from PixealatedPope's tutorial: 
	https://www.reddit.com/r/gamemaker/comments/353aq6/tutorialexample_finite_state_machines_the_most/
*/

var _push = true;
if (argument_count>1) {
	_push = argument[1];
}

if(ignoreSwitch) {
	return;
}
  
  
	//you passed the name of a state, let's try and find it.
if (ds_map_exists(stateMap , argument[0])) {
	stateNext = ds_map_find_value(stateMap, argument[0]);
	lastState = stateID;
	stateID = argument[0]; 
}
else {
	stateNext = ds_map_find_first(stateMap);
	lastState = stateID;
	stateID = -1;
}

if(_push) {
	ds_stack_push(stateStack, stateNext);
}


