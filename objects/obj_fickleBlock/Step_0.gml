/// @description Insert description here
// You can write your code in this editor

frameTimer++;
if(isFlickering) {
	if(frameTimer - flickerStartTime >= flickerTime) {
		isSolid = false;
		offStartTime = frameTimer;
		isFlickering = false;
	}
} else if(!isSolid) {
	if(frameTimer - offStartTime >= offTime) {
		alarm[0] = random_range(60 * 2, 60 * 6);
		isSolid = true;
	}
}