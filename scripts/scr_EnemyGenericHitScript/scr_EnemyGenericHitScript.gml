/// This is a script that the most basic Enemies can use to register a hit.
/// @arg hitPoints
/// @arg hitType

var hitPoints = argument0;
if(scr_AmIVulnerable()) {
	
	scr_StateSwitch(s_HIT);
	scr_ReduceMyHealth(hitPoints);
}