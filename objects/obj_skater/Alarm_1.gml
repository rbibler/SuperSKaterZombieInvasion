/// @description Double Jump Timeout Alarm
// You can write your code in this editor
if(doubleJumpTimedOut) {
	doubleJumpTimedOut = false;
	var framesTilFull = room_speed * doubleJumpMeterTimeTilFull;
	doubleJumpIncrement = 100 / framesTilFull;
}