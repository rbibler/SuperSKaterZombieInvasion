/// @description This alarm is set when the skater's shield kicks in. When it goes off, reset the anim to
/// no shield and set "shielded" flag to false;

shielded = false;
if(ds_map_exists(stateAnimMap, stateName)) {
	scr_SetCurrentAnimation(ds_map_find_value(stateAnimMap, stateName));
}