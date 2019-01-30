/// This is a script that helps the skater update his animiation. Will check to see if a special 
/// animation is required.
/// @arg animationToSwitchTo

var animationToSwitchTo = argument0;

if(shielded) {
	if(ds_map_exists(shieldAnimStateMap, stateName)) {
		scr_SetCurrentAnimation(ds_map_find_value(shieldAnimStateMap, stateName));
	} else {
		scr_SetCurrentAnimation(animationToSwitchTo);
	}
} else {
	scr_SetCurrentAnimation(animationToSwitchTo);
}