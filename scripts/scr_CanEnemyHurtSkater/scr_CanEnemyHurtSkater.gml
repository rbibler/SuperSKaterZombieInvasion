/// This is a script that helps the skater determine if he can be hurt by an enemy.
/// @arg enemy

var enemy = argument0;

with(enemy) {
	if(stateName == s_HIT or stateName == s_DEAD) {
		return false;
	}
	return true;
}