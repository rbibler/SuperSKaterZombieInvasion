/// @description state_cleanup()
/// @function state_cleanup

/*
Adapted from PixealatedPope's tutorial: 
	https://www.reddit.com/r/gamemaker/comments/353aq6/tutorialexample_finite_state_machines_the_most/
*/

ds_map_destroy(stateMap);
ds_stack_destroy(stateStack);
