if(doubleJumpMeter >= 99) {
	alarm[Alarms.DoubleJumpAlarm] = doubleJumpMeterTimeout;
	doubleJumpTimedOut = true;
	doubleJumpIncrement = 0;
	canJump = -20;
	jump = 0;
	scr_SpawnEffect(obj_SparkleEffect);
}