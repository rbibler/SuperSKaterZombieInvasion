/// This is a script that helps an object set a timer to determine when their immunity will end
/// @arg immunityTime

var immunityTime = argument0;

var currentImmunity = alarm[IMMUNITY_ALARM];
if(currentImmunity > immunityTime) {
	return;
}

alarm[IMMUNITY_ALARM] = immunityTime;