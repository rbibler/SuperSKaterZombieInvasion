/// @description state_create(Name <string>,Script)
/// @function state_create
/// @param Name <string>
/// @param Script

/*
Adapted from PixealatedPope's tutorial: 
	https://www.reddit.com/r/gamemaker/comments/353aq6/tutorialexample_finite_state_machines_the_most/
*/

ds_map_replace(state_map,argument[0],argument[1]);
