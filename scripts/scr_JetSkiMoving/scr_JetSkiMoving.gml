var skater = instance_find(obj_skater, 0);
if(skater.grounded) {
	scr_StateSwitch(s_IDLE);
} else {
	scr_StopYMotion();
	scr_MoveAndCollide();
}