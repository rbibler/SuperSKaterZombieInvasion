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
  
if (is_real(argument[0])) { 
//you passed a specific script, set it as our next state.
  stateNext = argument[0];
  lastState = stateName;
  stateName = "Unknown (Use the name to switch next time)";
}
else {   
	//you passed the name of a state, let's try and find it.
  if (ds_map_exists(stateMap , argument[0])) {
    stateNext = ds_map_find_value(stateMap, argument[0]);
	lastState = stateName;
    stateName = argument[0]; 
  }
  else {
    stateNext = ds_map_find_first(stateMap);
	lastState = stateName;
    stateName = "Unknown (Tried to switch to a non-existant state)";
  }
}
if(_push) {
  ds_stack_push(stateStack, stateNext);
}


