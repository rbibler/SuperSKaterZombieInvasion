/// This is a script that helps the skater gain health
/// @arg healthGain

var healthGain = argument0;

health += healthGain;
if(health >= 100) {
	health = 100;
}