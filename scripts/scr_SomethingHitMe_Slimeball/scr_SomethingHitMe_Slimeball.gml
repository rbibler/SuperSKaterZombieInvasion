/// This is a script that the Slimeball uses to decide what to do when hit by the skater (or a projectile)
/// @arg hitType
/// @arg hitPoints

var hitPoints = argument0;
var hitType = argument1;


if(!scr_AmIVulnerable()) {
	return;
}

scr_ReduceMyHealth(characterHealth + 1);


scr_StateSwitch(s_AIRBORNE_HIT);

