if(stateNew) {
	scr_StopXMotion();
	scr_FlashMe(hitFlashInterval, hitFlashDuration);
	scr_StopYMotion();
	gravityOn = false;
	scr_AmIDead();
}

if(!flashMe) 
{
	scr_StateSwitch(s_FALLING);
	gravityOn = true;
	scr_AmIDead();
}
