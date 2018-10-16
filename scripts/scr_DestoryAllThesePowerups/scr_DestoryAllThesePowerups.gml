/// This is a script that destorys all instances of the supplied power up object type
/// @arg powerup

var powerup = argument0;
var powerupcount = instance_number(powerup);

for(var i = 0; i < powerupcount; i++) {
	instance_destroy(instance_find(powerup, i));
	powerupcount--;
}