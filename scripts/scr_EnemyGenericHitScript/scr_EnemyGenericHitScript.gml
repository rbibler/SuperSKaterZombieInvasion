/// This is a script that the most basic Enemies can use to register a hit.
/// @arg hitPoints
/// @arg hitType
/// @arg instaDeath

var hitPoints = argument0;
var hitType = argument1;
var instaDeath = argument2;

if(scr_AmIVulnerable()) {
	if(instaDeath) {
		scr_ReduceMyHealth(characterHealth + 1);
	} else {
		scr_StateSwitch(s_HIT);
		scr_ReduceMyHealth(hitPoints);
	}
}