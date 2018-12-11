/// @description state_init(state);
/// @function state_init
/// @param state
//Sets the default state for the object.  Called only in the create event.

/*
Adapted from PixealatedPope's tutorial: 
	https://www.reddit.com/r/gamemaker/comments/353aq6/tutorialexample_finite_state_machines_the_most/
*/

if(is_real(argument[0])) {
    state = argument[0];
    stateName = "Unknown (Use the name to switch next time)";
}
else {
    state = ds_map_find_value(stateMap, argument[0]);
    stateName = argument[0];
}    
stateNext = state;
ds_stack_push(stateStack, state);
stateNew = true;

