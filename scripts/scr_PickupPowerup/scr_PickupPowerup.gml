/// This is a script that lets the skater pick up objects like Powerups. Well, only powerups.
/// @arg powerUpObject

var powerUp = argument0;

scr_DestoryAllThesePowerups(powerUp);

currentPowerup = instance_create_layer(0, 0, "POWERUPS", powerUp);