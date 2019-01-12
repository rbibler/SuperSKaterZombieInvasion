// SETUP NEW STATE

if(stateNew) {
	scr_SetCurrentAnimation(idleAnim);
}


// MOVE AND COLLIDE

scr_MoveAndCollide();

// ANIMATE
scr_UpdateStateAnimation(currentAnimation);

// CHECK FOR STATE CHANGES

var skaterdist = abs(obj_skater.x - x);
if(skaterdist < attackThreshold) {
	scr_StateSwitch(s_MENACING);
}