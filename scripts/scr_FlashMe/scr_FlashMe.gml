/// This is a script that helps an object start flashing
/// @arg flashInterval
/// @arg flashDurationInFlashIntervals

var flashInt = argument0;
var flashDurationInFlashIntervals = argument1;

hideMeWhenDrawing = true;
flashMe = true;
flashCount = 0;
flashInterval = flashInt;
howManyTimesIShouldFlash = flashDurationInFlashIntervals;
alarm[FLASH_ALARM] = flashInterval;