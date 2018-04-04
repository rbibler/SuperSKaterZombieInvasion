/// @description state_switch_previous()
/// @function state_switch_previous

/*
Adapted from PixealatedPope's tutorial: 
	https://www.reddit.com/r/gamemaker/comments/353aq6/tutorialexample_finite_state_machines_the_most/
*/


ds_stack_pop(state_stack);
var _state=ds_stack_top(state_stack);
state_switch(_state,false);

