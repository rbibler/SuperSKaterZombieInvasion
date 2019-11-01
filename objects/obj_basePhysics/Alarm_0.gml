/// @description  The Flash Alarm!

if(flashMe) {
	if(flashCount >= howManyTimesIShouldFlash) {
		flashMe = false;
		hideMeWhenDrawing = false;
	} else {
		alarm[FLASH_ALARM] = flashInterval;
		hideMeWhenDrawing = !hideMeWhenDrawing;
		flashCount += 0.5;
	}
}
