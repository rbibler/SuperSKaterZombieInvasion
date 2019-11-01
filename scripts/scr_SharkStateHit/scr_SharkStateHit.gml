if(stateNew) {
	scr_StopXMotion();
	scr_FlashMe(hitFlashInterval, hitFlashDuration);
	scr_StopYMotion();
	myGravity = 0;
}

scr_MoveAndCollide();

if(!flashMe) 
{
	scr_StateSwitch(s_FALLING);
	myGravity = standardGravity;
	scr_AmIDead();
}
